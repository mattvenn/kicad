import pcbnew
import re
import datetime
import subprocess
import os


class text_by_date( pcbnew.ActionPlugin ):
    def defaults( self ):
        self.name = "Add date on PCB"
        self.category = "Modify PCB"
        self.description = "Automaticaly add date on an existing PCB"

    def Run( self ):
        pcb = pcbnew.GetBoard()
        pcb_dir = os.path.dirname(pcb.GetFileName())
        os.chdir(pcb_dir)
        git_version = subprocess.check_output(['git', 'log', '--pretty=format:"%h"', '-n', '1']).decode('utf-8')
        for draw in pcb.GetDrawings():
            if isinstance(draw, pcbnew.TEXTE_PCB):
                if draw.GetText().startswith("$ver$"): # .starts_with("$ver$"):
                    draw.SetText( "$ver$ %s %s" % (git_version, datetime.date.today() ))
                    
text_by_date().register()
