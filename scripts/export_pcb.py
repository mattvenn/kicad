#!/usr/bin/python
import pcbnew
import argparse
import datetime
import subprocess
import os

from pcbnew import TEXTE_MODULE, TEXTE_PCB, EDA_TEXT, FromMM, ToMM
from ConfigParser import ConfigParser, NoSectionError   

"""
good resources:

* http://ci.kicad-pcb.org/job/kicad-doxygen/ws/build/pcbnew/doxygen-python/html/index.html
* https://kicad.mmccoo.com/2017/02/01/the-basics-of-scripting-in-pcbnew/

"""

def zip_it():
    date_stamp = datetime.datetime.today().strftime('%Y-%m-%d')
    zip_name = "fab-%s-%s.zip" % (get_board_name(), date_stamp) 
    # delete it if already exists
    if os.path.exists(zip_name):
        os.remove(zip_name)
    os.system("zip -r %s %s" % (zip_name, args.output_dir))
    print("zipped to %s" % zip_name)
    
def get_board_name():
    return args.board.replace('.kicad_pcb','')

def calculate_size(brd):
    # older kicad is brd.GetBoundingBox()
    bb = brd.GetBoardEdgesBoundingBox()
    w = bb.GetWidth()
    h = bb.GetHeight()
    return round(ToMM(w),1),round(ToMM(h),1)

def write_overview(brd):
    out_name = get_board_name()
    git_version = subprocess.check_output(['git', 'log', '--pretty=format:"%h"', '-n', '1']).decode('utf-8')

    filename = args.output_dir + "/" + out_name + ".md"
    log = open(filename, 'w')
    log.write("\ ![logo](%s)\n\n" % config.get('logo', 'logo'))

    log.write("# PCB layout for %s\n\n" % out_name)
    log.write("\ ![overview](%s/%s-overview.png)\n\n" % (args.output_dir, out_name))

    log.write("# Configuration\n\n")
    log.write("* %.1f x %.1fmm\n" % calculate_size(brd))
    log.write("* %s mm FR4, %s silkscreen, %s mask\n" % (config.get('board', 'thickness'), config.get('board', 'silk_color'), config.get('board', 'mask_color')))
    log.write("* generated on %s (%s)\n" % (datetime.datetime.today(), git_version))

    log.close()

    print("generate pdf")
    os.system("pandoc %s -o %s" % (filename, args.output_dir + "/" + out_name + ".pdf"))
    os.remove("%s/%s-overview.png" % (args.output_dir, out_name)) # remove the png after making the pdf
    os.remove(filename) # remove the markdown file

# options taken mostly from https://github.com/blairbonnett-mirrors/kicad/blob/master/demos/python_scripts_examples/plot_board.py
def plot(brd, args):
    pctl = pcbnew.PLOT_CONTROLLER(brd)
    popt = pctl.GetPlotOptions()
    popt.SetOutputDirectory(args.output_dir)
    
    # Set some important plot options:
    popt.SetPlotFrameRef(False)
    popt.SetLineWidth(pcbnew.FromMM(0.05))
    
    popt.SetAutoScale(False)
    popt.SetScale(1)
    popt.SetMirror(False)
    popt.SetUseGerberAttributes(True)
    popt.SetExcludeEdgeLayer(True);
#        popt.SetUseAuxOrigin(True)
    
    # This by gerbers only (also the name is truly horrid!) - what is this?
    popt.SetSubtractMaskFromSilk(False)
    
    pctl.SetColorMode(True)
    plot_plan = [
        # filename      layer               description     outline svg     gerb
        ( "MaskBottom", pcbnew.B_Mask,      "Mask bottom",  True,   False,  True ),
        ( "MaskTop",    pcbnew.F_Mask,      "Mask top",     True,   True,   True ),
        ( "CuBottom",   pcbnew.B_Cu,        "Bottom layer", True,   True,  True ),
        ( "CuTop",      pcbnew.F_Cu,        "Top layer",    True,   True,   True ),
        ( "SilkTop",    pcbnew.F_SilkS,     "Silk top",     False,  True,   True ),
        ( "SilkBottom", pcbnew.B_SilkS,     "Silk bottom",  False,  False,  True ),
        ( "EdgeCuts",   pcbnew.Edge_Cuts,   "Edges",        False,  True,   True ),
        ( "User",       pcbnew.Cmts_User,   "User",         False,  True,   False ),
    ]

    # https://github.com/KiCad/kicad-source-mirror/blob/0af5695e51733445c0f246eb688c98201601cd76/pcbnew/plot_board_layers.cpp#L226
    for layer_info in plot_plan:
        print(layer_info)
        pctl.SetLayer(layer_info[1])
        popt.SetUseGerberAttributes(False) # gerbv lists lots of errors if this is True
        if layer_info[5]:
            pctl.OpenPlotfile(layer_info[0], pcbnew.PLOT_FORMAT_GERBER, layer_info[2])
            pctl.PlotLayer()

    # drill
    # https://github.com/KiCad/kicad-source-mirror/blob/afe92c7bfc9d02d551b2cfa675e73d18b956f010/pcbnew/dialogs/dialog_gendrill.cpp#L403
    drill = pcbnew.EXCELLON_WRITER(brd)
    # older kicad doesn't know about MergeOption
    drill.SetMergeOption(True)
    drill.SetFormat(True, drill.DECIMAL_FORMAT, 0, 0)
    drill.CreateDrillandMapFilesSet(args.output_dir, True, False)

    # make an SVG overview
    pctl.OpenPlotfile("overview", pcbnew.PLOT_FORMAT_SVG, "Overview")
    pctl.SetColorMode(True)
    for layer_info in plot_plan:
        pctl.SetLayer(layer_info[1])
        if layer_info[4]:
            pctl.PlotLayer()

    pctl.ClosePlot()

    out_name = get_board_name()
    print("convert svg to png")
    os.system("inkscape -f %s/%s-overview.svg -z --export-dpi=%d --export-area-drawing --export-png=%s/%s-overview.png" % (args.output_dir, out_name, args.dpi, args.output_dir, out_name))
    os.remove("%s/%s-overview.svg" % (args.output_dir, out_name)) # remove the svg as it's quite big


if __name__ == '__main__':

    auto_board = None
    for file in os.listdir("."):
        if file.endswith(".kicad_pcb"):
            auto_board = file
            print("auto detected pcb file %s" % auto_board)

    parser = argparse.ArgumentParser(description="export board gerbers, create overview pdf, zip")
    parser.add_argument('--output-dir', default='auto-fab', help="where to create files")
    parser.add_argument('--board', default=auto_board, help="board file")
    parser.add_argument('--config', default='config.rc', help="config")
    parser.add_argument('--dpi', default=300, help="resolution of overview image")

    args = parser.parse_args()
    config = ConfigParser()
    config.read(args.config)

    if args.board is None:
        exit("couldn't find board automatically, please use --board to choose")

    if os.path.exists(args.output_dir):
        exit("path already exists: %s" % args.output_dir)
    else:
        os.makedirs(args.output_dir)

    brd = pcbnew.LoadBoard(args.board)

    # update git version
    git_version = subprocess.check_output(['git', 'log', '--pretty=format:"%h"', '-n', '1']).decode('utf-8')
    for draw in brd.GetDrawings():
        if isinstance(draw, pcbnew.TEXTE_PCB):
            if draw.GetText().startswith("$ver$"): # .starts_with("$ver$"):
                draw.SetText( "$ver$ %s %s" % (git_version, datetime.date.today() ))
                
    plot(brd, args)
    write_overview(brd)
    zip_it()

    print("done")
