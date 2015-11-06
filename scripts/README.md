# Put farnell numbers in schematic

* `prefs -> options -> template field names`
* `add`
* change name to 'farnell #'
* `ok`

Then fill in all the farnell #s on the schematic.

# Generate bom

* `tools -> generate bill of materials`
* `add plugin` and choose modified scripts/bom_csv_grouped_by_value_with_fp.py
* may need to link kicad_netlist_reader.py
* press `generate`

This creates csv file with no extension

# For farnel order

./scripts/processBOM.py csvfile quantity
