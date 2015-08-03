install a new library (untested):
https://code.google.com/p/opendous/wiki/KiCADTutorialAddingLibraries

compile from source:
https://www.wayneandlayne.com/blog/2010/12/03/how-to-build-kicad-on-ubuntu/

gotchas:

* copy block choose 'save block'
* paste no shortcut, is a button on the toolbar
* F to move components between layers
* set origin grid, have to press space while clicking
* footprint editor libraries can't be relative paths
* search paths don't work in library editor; choose the exact file instead

## offline mode

* download nathan's lib getter
* download all git libraries.
* use the new ~/fp-table-lib (check) instead of ~/.config/kicad/xxx

## create a new symbol in a new lib

Symbol librarys are single files that end in .lib.  They can contain 1 or many symbols

* schematic library editor
* create new component button, add pins, outline etc
* save component to new library button
* quit

## create a new symbol in an existing lib

* schematic lib editor
* file -> current library
* choose the library you want to add to
* draw symbol
* save library

### add a library file to preferences

* open eschema
* prefs -> component libs
* add component library _file_ (not path)
* find lib just created and double click it
* now should be able to search for symbol when adding new symbols

## create a new footprint in a new lib

Footprint librarys are files within a directory. The directory name ends in
.pretty. The files end in .kicad_mod. Each file contains a separate footprint

* PCB footprint editor
* click new footprint button
* draw pins & outline etc
* file -> save footprint in new library
* make a new directory and ensure has .pretty extension
* quit (ignore warning about losing work)

## create a new footprint in an existing lib

* open pcb footprint editor
* file -> set active library
* choose the library you want to add to
* save footprint in active library button
* quit

### add library directory to prefs


* open pcb editor
* preferences -> footprint library manager
* either project specific or global tab
* add the path to the library directory (ends in .pretty) ensure its type is kicad
* then add .pretty directory in preferences

This will add lines to either the local fp-lib-table file in the project
directory, or the global fp-lib-table in ~/.config/kicad

