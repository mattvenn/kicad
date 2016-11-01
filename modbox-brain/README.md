# schematic

[pdf](schematic.pdf)

# power consideration

ESP8266 uses about 100ma when on with wifi
lcd board will use about 50ma
knobs with all leds will use about 100ma with 5ma led current
guess that buttons will be about half knobs = 50ma (less leds)

2 lcds + 2 knobs + button + brain = 450ma max, easy to imagine something twice
as big, so supply should provide 100ma to 1000ma.

Initial idea was to use an LDO with enable as with lipo this will provide
between 80 & 90% efficiency. However, as unit may run continuously on 5v,
efficiency drops to 70%. Switched to using a [TI LMR10510 buck
regulator](http://www.ti.com/lit/ds/symlink/lmr10510.pdf), which should provide 

# states & indicators

    off -> on with vusb -> vusb goes off -> timeout -> off
    off -> on with battery -> timeout -> off

## off

lowest power, no indicators

## plugged in with usb

immediate indicator that plugging in has worked, either:

* red charge led shows charging, or
* green charge complete led shows charge complete

## on

immediate indicator of on-ness via blue status led:

* comes on asap to show system is working. 
* pulses low while wifi connects, goes off when wifi connected
* flashes whenever mqtt messages exchanged

## with battery low

indicator of battery low with separate red led:

* getting low, flash
* too low, on

# IO for power management

inputs:

* vusb via divider
* vbat adc via enable mosfet

outputs:

* enable output for adc enable and reg enable
* low batt led

# esp8266 flash with nodemcu style gpio control

* gpio15 must be low, gpio2 must be high
* gpio0 high -> run mode
* gpio0 low -> flash mode
* gpio16 tied to reset for sleep mode wake up

cp2102 dtr & rts control 2 transistors that control reset and gpio0

Tested by building transistor circuit copied from nodemcu schematic esp12 v0.9
20/11/2014.

boardtype in arduino is nodemcu 0.9 (uses nodemcu for board type with esptool)

tested with cp1202 chip on breakout
[tests results](esp-prog-test/nodemcu-results) = 18/20 success

serial output works too

## usb current settings 

able to set max current to cp2102 with [this tool]
(https://github.com/Lembed/Usb-Serial-Breakout-Cp2102)
