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
        if rows < 7:
            continue
        #check row length, should be 8
        if len(row) != 8:
            print >> sys.stderr, "bad row length: ", row
            bad_rows.append(row)
        else:
            #comment = row[4].replace(',','')[0:30-13]
            comment = row[5] or row[4]
            comment = comment[0:29]
            farnel_num = row[7]
            if farnel_num == "":
                bad_rows.append(row)
                continue
                    
            print ', '.join([row[7],str(int(row[1])*quantity),comment])
print >>sys.stderr ,"processed %d rows with %d missing rows" % (rows, len(bad_rows))
print >>sys.stderr , pprint(bad_rows)
