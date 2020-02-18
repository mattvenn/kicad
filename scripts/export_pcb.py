#!/usr/bin/python3
import pcbnew
import argparse
import datetime
import subprocess
import os

from pcbnew import TEXTE_MODULE, TEXTE_PCB, EDA_TEXT, FromMM, ToMM
from configparser import ConfigParser, NoSectionError

"""
good resources:

* http://ci.kicad-pcb.org/job/kicad-doxygen/ws/build/pcbnew/doxygen-python/html/index.html
* https://kicad.mmccoo.com/2017/02/01/the-basics-of-scripting-in-pcbnew/

"""

def zip_it():
    date_stamp = datetime.datetime.today().strftime('%Y-%m-%d')
    zip_name = "%s-%s-fab.zip" % (get_board_name(), date_stamp) 
    # delete it if already exists
    if os.path.exists(zip_name):
        os.remove(zip_name)
    os.system("zip -r %s %s" % (zip_name, args.output_dir))
    print("zipped to %s" % zip_name)
    
def get_board_name():
    return args.board.replace('.kicad_pcb','')

def get_nice_name():
    return config.get('meta', 'name')

def calculate_size(brd):
    # older kicad is brd.GetBoundingBox()
    bb = brd.GetBoardEdgesBoundingBox()
    w = bb.GetWidth()
    h = bb.GetHeight()
    return round(ToMM(w),1),round(ToMM(h),1)

def export_step():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    # launch freecad to generate step file:
#    os.system("freecad %s/kicad-StepUp-tools.FCMacro %s" % (script_dir, get_board_name()))
    # now change the step assembly name,
    os.system("sed -i 's/Pcb/%s/g' %s" % (get_nice_name(), get_board_name() + ".step"))
    
    # rename the file
    date_stamp = datetime.datetime.today().strftime('%Y-%m-%d')
    new_name = date_stamp + "-" + get_nice_name() + ".step"
    os.system("mv %s %s" % (get_board_name() + ".step", new_name))

    # and zip it with the date
    zip_name = new_name + ".zip"
    os.system("zip %s %s" % (zip_name, new_name))


def get_git_version():
    git_version = subprocess.check_output(['git', 'log', '--pretty=format:%h', '-n', '1']).decode('utf-8')
    return git_version

def write_overview(brd):
    out_name = get_board_name()
    filename = args.output_dir + "/" + out_name + ".md"
    log = open(filename, 'w')
    try:
        log.write("\ ![logo](%s)\n\n" % config.get('logo', 'logo'))
    except NoSectionError:
        pass

    log.write("# PCB layout for %s\n\n" % get_nice_name())
    log.write("\ ![overview](%s/%s-overview.png)\n\n" % (args.output_dir, out_name))

    log.write("# Configuration\n\n")
    log.write("* %.1f x %.1fmm\n" % calculate_size(brd))
    log.write("* %s mm FR4, %s silkscreen, %s mask\n" % (config.get('board', 'thickness'), config.get('board', 'silk_color'), config.get('board', 'mask_color')))
    log.write("* %s layers, %s copper\n" % (config.get('board', 'layers'), config.get('board', 'copper')))
    if (config.get('board', 'layers') == '4'):
        log.write(""" * layer stackup:
    1. CuTop
    2. CuLayer2
    3. CuLayer3
    4. CuBottom\n""")
    log.write("* generated on %s, git version %s\n" % (datetime.datetime.today(), get_git_version()))

    log.close()

def convert_to_pdf():
    print("generate pdf")
    out_name = get_board_name()
    filename = args.output_dir + "/" + out_name + ".md"
    os.system("pandoc %s -o %s" % (filename, args.output_dir + "/" + out_name + ".pdf"))
    #os.remove("%s/%s-overview.png" % (args.output_dir, out_name)) # remove the png after making the pdf
    #os.remove(filename) # remove the markdown file

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
    popt.SetExcludeEdgeLayer(True)
    popt.SetUseGerberProtelExtensions(True) # instead of .gbr use protel extensions
    if args.values:
        popt.SetPlotReference(False)
        popt.SetPlotValue(True)
    else:
        popt.SetPlotReference(True)
        popt.SetPlotValue(False)

#        popt.SetUseAuxOrigin(True)
    
    # This by gerbers only (also the name is truly horrid!) - what is this?
    popt.SetSubtractMaskFromSilk(False)
    
    pctl.SetColorMode(True)
    plot_plan = [
        # filename      layer               description     outline svg     gerb
        ( "MaskBottom", pcbnew.B_Mask,      "Mask bottom",  True,   False,  True ),
        ( "MaskTop",    pcbnew.F_Mask,      "Mask top",     True,   True,   True ),
        ( "CuBottom",   pcbnew.B_Cu,        "Bottom layer", True,   True,   True ),
        ( "CuTop",      pcbnew.F_Cu,        "Top layer",    True,   True,   True ),
        ( "SilkTop",    pcbnew.F_SilkS,     "Silk top",     False,  True,   True ),
        ( "SilkBottom", pcbnew.B_SilkS,     "Silk bottom",  False,  False,  True ),
        ( "PasteTop",   pcbnew.F_Paste,     "Paste top",    False,  False,  True ),
        ( "PasteBottom", pcbnew.B_Paste,    "Paste bottom", False,  False,  True ),
        ( "EdgeCuts",   pcbnew.Edge_Cuts,   "Edges",        False,  True,   True ),
        ( "User",       pcbnew.Cmts_User,   "User",         False,  True,   False ),
    ]

    if config.get('board', 'layers') == '4':
        plot_plan += [
        ( "CuLayer2",   pcbnew.In1_Cu,      "Layer 2",      True,   True,  True ),
        ( "CuLayer3",   pcbnew.In2_Cu,      "Layer 3",      True,   True,  True ) ]

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
    parser.add_argument('--no-pdf', action='store_true', help="don't generate pdf")
    parser.add_argument('--values', action='store_true', help="plot values instead of refs")
    parser.add_argument('--export-step', action='store_true', help="use freecad stepup macro to export step")
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
    for draw in brd.GetDrawings():
        if isinstance(draw, pcbnew.TEXTE_PCB):
            if draw.GetText().startswith("$ver$"):
                print("found $ver$ marker")
                draw.SetText( "%s %s" % (get_git_version(), datetime.date.today() ))

        if isinstance(draw, pcbnew.TEXTE_PCB):
            if draw.GetText().startswith("$git$"):
                print("found $git$ marker")
                draw.SetText( "%s" % (get_git_version()))

        if isinstance(draw, pcbnew.TEXTE_PCB):
            if draw.GetText().startswith("$date$"):
                print("found $date$ marker")
                draw.SetText( "%s" % (datetime.date.today()))
                
    plot(brd, args)
    write_overview(brd)
    if args.no_pdf:
        convert_to_pdf()
    zip_it()

    if args.export_step:
        export_step()

    print("done")
