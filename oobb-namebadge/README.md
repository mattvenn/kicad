# OOBB compatible SAO V.1.69bis name badge

* compatible with OOBB https://github.com/oomlout/oomlout-OOBB/wiki/pictureIndex
* 5 x SAO V.1.69bis 6 pin connectors - GPIO1&2 shared across all connectors. I2C not connected
* pads for LiPo battery and USB charger
* 90x70mm $5 USD from https://pcbway.com
* [iCEBreaker](https://www.crowdsupply.com/1bitsquared/icebreaker-fpga) compatible. Red and Green LED output drive GPIO1 and 2 SAO.

![front](docs/front.png)

![back](docs/back.png)

# BOM

* J5019 LiPo booster incorporating [TC4056A](docs/TC4056A.pdf) LiPo charger
* LiPo battery measuring 46x52mm
* 3.3v regulator [LD1117S33TR](https://uk.farnell.com/stmicroelectronics/ld1117s33tr/v-reg-ldo-3-3v-smd-1117-sot-223/dp/1202826)
* 2 x 10k pullup resistors if using iCEBreaker to control GPIOs
* sliding SMT switch [JS102011SAQN](https://uk.farnell.com/c-k-components/js102011saqn/switch-spdt-0-6a-6vdc-side-smd/dp/2320017)

