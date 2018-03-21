#!/usr/bin/python
from pprint import pprint
import sys
import csv
if len(sys.argv)<2:
    print >>sys.stderr, "need bom file, optional quantity"
    exit( 1)
bom_file = sys.argv[1]
if len(sys.argv) == 3:
    quantity = int(sys.argv[2])
else:
    quantity = 1

rows = 0
bad_rows = []
with open(bom_file,'r') as csvfile:
    reader = csv.reader(csvfile, delimiter=',', quotechar='"')
    for row in reader:
        #check for errors
        rows += 1
        if rows < 2:
            # parse the header
            #import ipdb ; ipdb.set_trace()
            farnell_col = row.index('farnell #')
            comment_col = row.index('Description')
            qnty_col = row.index('Qnty')
            continue
        else:
            comment = row[comment_col][0:29]
            farnel_num = row[farnell_col]
            if farnel_num == 'dnp':
                continue
            if farnel_num == "":
                bad_rows.append(row)
                continue
            qnty = int(row[qnty_col])
                    
            print ', '.join([farnel_num, str(int(qnty)*quantity), comment])
print >>sys.stderr ,"processed %d rows with %d missing rows" % (rows, len(bad_rows))
for row in bad_rows:
    print(row, sys.stderr)
