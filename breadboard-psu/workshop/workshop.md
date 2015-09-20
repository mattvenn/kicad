# KiCad workshop handout

The documentation for this workshop are mostly youtube screencasts. The
screencasts are fast, if you need them slower then click the video's settings
button and choose a slower speed.

You are advised to watch the screencasts all the way through before starting,
then reference them as needed.

Each screencast has a table of contents with timings. Click the 'more' link to
expose it.

You will be making a breadboard power supply to supply either 3.3v or 5v.

![photo](pcb-psu.jpg)

## Useful links

* Shortlink to this doc: ven.nz/kicad-workshop
* [All the screencasts](https://www.youtube.com/playlist?list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC)
* [KiCad project repo containing schematic and layout](https://github.com/mattvenn/kicad/tree/master/esp8266-12-breakout)

## Drawing the Schematic

[Schematic creation screencast](https://www.youtube.com/watch?v=SAGcpGdsB4c&index=1&list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC)

Schematic is a simple breadboard PSU:

![schematic](schematic.png)

### Hot Keys

* ? - show hotkeys
* e - edit component
* m - move component (without wires)
* g - drag component (with wires)
* r - rotate
* a - add component
* del - delete component
* w - start a wire
* c - copy
* l - lable a wire (wires with the same label are joined)

### Using the ESP8266 library

Download the [ESP8266 symbol and footpring libraries](https://github.com/mattvenn/kicad-esp8266-lib/archive/master.zip)

Symbol libraries are single files that end in .lib. They can contain 1 or many
symbols.

Footprint libraries are actually a directory containing 1 or more footprint
files. The directory name ends in .pretty. The footprint files end in
.kicad_mod.

### Add the ESP8266 symbol library

[Adding symbol library screencast](https://youtu.be/gfC7R_rTocs?list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC&t=50)

* open Eschema
* preferences -> component libs
* click add
* find esp8266.lib and double click it

### Add ESP8266 footprint library

[Adding footprint library screencast](https://youtu.be/gfC7R_rTocs?list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC&t=165)

* open Eschema, run CvPCB to associate footprints
* preferences -> footprint libraries
* either project specific or global tab
* add the path to the library directory (ends in .pretty) ensure its type is kicad


## Create PCB

[PCB creation screencast](https://www.youtube.com/watch?v=t0hJgYAWNFI&index=2&list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC)

Example layout optimised for milling or etching.

![layout](layout.png)

### Kot Keys

* ? - show hotkeys
* space - reset local co-ordinates
* f1 - zoom in
* f2 - zoom out
* m - move component (without wires)
* g - drag component (with wires)
* del - delete an object
* f11 - switch to openGL view (necessary for push'n'shove routing)
* e - routing options (only in openGL)
* x - start routing
* pg up - route on top layer
* pg down - route on bottom layer
* v - create via
* f - flip a component between top & bottom layers

## Fabrication

[Fabrication screencast](https://www.youtube.com/watch?v=VwQu3Ap_2rI&index=5&list=PLmcDgdDpcaPjIBy60y22XzG036ckQI7bC)

### Description of layers

* F.Cu - top copper layer used for electrical connections
* B.Cu - bottom copper layer (as above)
* F.SilkS - top silk screen used for component markings and orientation
* B.SilkS - bottom silk screen (as above)
* F.Mask - top mask used to cover the electrical connections with a nonconductive coloured layer
* B.Mask - bottom mask (as above)
* Edge.Cuts - where the board should be cut out

Each of these layers is exported as a separate file called a gerber.

We also need a drill file that specifies where all the holes are.
