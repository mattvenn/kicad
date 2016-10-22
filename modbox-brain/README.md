# esp8266 bootup notes

## my breakout board 

gpio2 tied high with 10k
ch_pd tied high with 10k
gpio15 tied to gnd via 10k
gpio0 via a button to gnd
reset high via 10k and via 1uf cap to dtr on serial

have plenty of problems with uploading, plus need to expose a button and press at the right time

## nodemcu board

gpio0 high via 12k
gpio2 high via 12k
en (ch_pd pin 3) high via 12k
reset high via 12k and 470p cap to gnd

dtr & rts control 2 transistors that control rset and gpio0

notes say:
gpio15 must be low, gpio2 must be high
gpio0 high -> run mode
gpio0 low -> flash mode
gpio16 tied to reset for sleep mode wake up

tested by building transistor circuit copied from nodemcu schematic esp12 v0.9 20/11/2014
boardtype in arduino is nodemcu 0.9 (uses nodemcu for board type with esptool)
tested with cp1202 chip on breakout
[tests results](esp-prog-test/nodemcu-results) = 18/20 success

serial works too

## ck board with esptool and my board

gpio2 tied high with 10k
ch_pd tied high with 10k
gpio15 tied to gnd via 10k
gpio0 via a button to gnd
reset high via 10k 

rts -> reset
dtr -> gpio0

tested with cp1202 (dcl0k9) chip on breakout

boardtype in arduino is generic (uses ck for board type with esptool)
[tests results](esp-prog-test/ck-results) = 18/20 success

downside is that opening serial monitor in arduino will put the board into bootloader mode

## usb programmer

thanks to https://github.com/Lembed/Usb-Serial-Breakout-Cp2102
