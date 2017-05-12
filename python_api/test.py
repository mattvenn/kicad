import pcbnew
from pcbnew import TEXTE_MODULE, TEXTE_PCB, EDA_TEXT

"""
good resources:

* http://ci.kicad-pcb.org/job/kicad-doxygen/ws/build/pcbnew/doxygen-python/html/index.html
* https://kicad.mmccoo.com/2017/02/01/the-basics-of-scripting-in-pcbnew/
"""
# most queries start with a board
SCALE = 1000000

def add_tracks():
    layertable = get_layertable()
    board = pcbnew.GetBoard()
    for i in range(100):
        track = pcbnew.TRACK(board)
        track.SetStart(pcbnew.wxPoint(0, SCALE*i))
        track.SetEnd(pcbnew.wxPoint(SCALE*200, SCALE*i))
        track.SetWidth(int(SCALE*0.7))
        track.SetLayer(layertable["B.Cu"])
        board.Add(track)
    pcbnew.Refresh()


def edge_cuts():
    layertable = get_layertable()
    board = pcbnew.GetBoard()
    #edge cuts
    edgecut = layertable['F.Mask']

    seg1 = pcbnew.DRAWSEGMENT(board)
    board.Add(seg1)
    seg1.SetStart(pcbnew.wxPoint(0, 0))
    seg1.SetEnd( pcbnew.wxPoint(100*SCALE, 0))
    seg1.SetLayer(edgecut)

    seg1 = pcbnew.DRAWSEGMENT(board)
    board.Add(seg1)
    seg1.SetStart(pcbnew.wxPoint(100*SCALE,0))
    seg1.SetEnd( pcbnew.wxPoint(100*SCALE, 100*SCALE))
    seg1.SetLayer(edgecut)

    seg1 = pcbnew.DRAWSEGMENT(board)
    board.Add(seg1)
    seg1.SetStart( pcbnew.wxPoint(100*SCALE, 100*SCALE))
    seg1.SetEnd( pcbnew.wxPoint(0, 100*SCALE))
    seg1.SetLayer(edgecut)

    seg1 = pcbnew.DRAWSEGMENT(board)
    board.Add(seg1)
    seg1.SetStart( pcbnew.wxPoint(0, 100*SCALE))
    seg1.SetEnd( pcbnew.wxPoint(0, 0))
    seg1.SetLayer(edgecut)
    pcbnew.Refresh()

def get_layertable():
    layertable = {}
    board = pcbnew.GetBoard()

    numlayers = pcbnew.PCB_LAYER_ID_COUNT
    for i in range(numlayers):
        layertable[board.GetLayerName(i)] = i
#        print("{} {}".format(i, board.GetLayerName(i)))
    return layertable

def get_drawings():
    board = pcbnew.GetBoard()
    drawings = board.GetDrawings()
    for item in drawings:
        if type(item) is TEXTE_MODULE or type(item) is TEXTE_PCB or type(item) is EDA_TEXT:
            print(item.GetWidth())

def write_text():

    board = pcbnew.GetBoard()
    layertable = get_layertable()
    x = 0
    for y in range(0, 100 * SCALE, SCALE*10):
        text = pcbnew.TEXTE_PCB(board)
        text.SetText("HOLA: %d, %d" % (x, y))
        text.SetPosition(pcbnew.wxPoint(x,y))
        text.SetTextSize(pcbnew.wxSize(SCALE*8,SCALE*8))
        text.SetThickness(SCALE*1)
        text.SetLayer(layertable["F.SilkS"])
        board.Add(text)
    pcbnew.Refresh()


def add_vias():
    board = pcbnew.GetBoard()
    layertable = get_layertable()

    layertable = get_layertable()
    for x in range(0, 10 * SCALE, SCALE*2):
        for y in range(0, 10 * SCALE, SCALE*2):
            newvia = pcbnew.VIA(board)
            board.Add(newvia)
            newvia.SetLayerPair(layertable["F.Cu"], layertable["B.Cu"])
            newvia.SetPosition(pcbnew.wxPoint(x,y))
            newvia.SetViaType(pcbnew.VIA_THROUGH)
            newvia.SetWidth(1*SCALE)

    pcbnew.Refresh()

# add a filled poly to f mask
def get_area():
    board = pcbnew.GetBoard()
    layertable = get_layertable()

    newarea = board.InsertArea(0, 0, layertable["F.Mask"], 0, 0, pcbnew.CPolyLine.DIAGONAL_EDGE)

    newoutline = newarea.Outline()
    newoutline.Append(SCALE*100,0)
    newoutline.Append(SCALE*100,SCALE*100)
    newoutline.Append(0,SCALE*100)
    #http://ci.kicad-pcb.org/job/kicad-doxygen/ws/build/pcbnew/doxygen-python/html/classpcbnew_1_1SHAPE__POLY__SET.html
    poly_set = pcbnew.SHAPE_POLY_SET()
    #http://ci.kicad-pcb.org/job/kicad-doxygen/ws/build/pcbnew/doxygen-python/html/classpcbnew_1_1CPolyLine.html
    poly_set.NewOutline()
    poly_set.Append(0,0)
    poly_set.Append(SCALE*100,0)
    poly_set.Append(SCALE*100, SCALE*100)
    poly_set.Append(0,SCALE*100)
    poly_set.Append(0,0)
    newarea.AddFilledPolygon(poly_set)

    #newarea.AddFilledPolygon() # ?
    pcbnew.Refresh()
    return newarea

def add_module(x, y):

    io = pcbnew.PCB_IO()
    board = pcbnew.GetBoard()
    layertable = get_layertable()

    footprint_lib = "/home/mattvenn/work/nfc-ring/python/fp.pretty"

    mod = io.FootprintLoad(footprint_lib, "matt")
    pt = pcbnew.wxPoint(x,y)
    mod.SetPosition(pt)
    board.Add(mod)

    pcbnew.Refresh()

