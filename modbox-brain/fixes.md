# Problems

* Q1 p mos should be same fp and part as q4
* cp2102 didn't work from farnell (could easily be soldering issue - done with
iron/hot air rather than oven). Worked with baite board's cp2102
* adc potential divider switch, when off, 0.2ma current still flows to adc. adc
 input R is 3.3M on another module. Removing r15 stops the current leakage

# Improvements

* bigger holes for test points
* top row of comms test points should be 0.1" spaced for easy header

# Fixed

* dc/dc R2 (r22) should be 10k not 100k
* adc potential div Rs are the wrong way up!
* r24 & r25 were mislabled
