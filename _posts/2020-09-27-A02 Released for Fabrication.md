---
title: "A02 Released for Fabrication"
excerpt_separator: "<!--more-->"
categories:
  - Development Post
---

All the major fixes and redesigns have been implemented and the gerbers have been sent off to be turned into some new PCBs!

Here are some of the major changes to the design from A01:

### Removed USB to UART Bridge Circuit
After a lot of struggling with this circuit, I decided to remove it from the design. The added benefit of the circuit was to make it easier to reprogram the board using the automatic download features of the esptool python script. With this feature no longer present, you will need to have an external USB to UART bridge and force the board into programming mode manually. However, the benefit is a significant cost reduction on the BOM, and reducing the complexity of hand soldering. 
### Changed Passive Parts to 1206
With all the new space from removing the USB to UART circuit, I changed almost all the passive components to 1206 size. This is twice the size of the original 0603 components. I'm hoping this will help make hand soldering the parts significantly easier. 
### Changed Connector Parts
After looking around at the market availability of the connector parts (the DC Barrel Jack and the 3.5 mm audio jack), I noticed that the original parts would not be the easiest to source. I changed these parts to more widely available solutions, with a marginal increase in cost.
### Changed Optocoupler IC
Within the vein of reducing cost and complexity, I changed the two optocoupler ICs to just one IC that has two channels inside. 
### Fixed GPIO Pin Mapping
There were some small fixes needed for which GPIO pins were selected for certain signals on the ESP32. The solenoid MOSFET's gate signal was originally connected to an input only port, so this was moved to a true GPIO. There was also the one of the camera control signals that was connected to a port that controls debug output on UART0. This was moved to another port close by, and the original was tied to ground with a pull down resistor.
### Fixed Solenoid MOSFET Pin Mapping
The MOSFET that controls the solenoid had some errors on the pin mapping. This was a quick fix by changing the footprint to the correct version. In KiCAD there are footprints for all sorts of pin mapping configurations, so it is important to choose the right one. 




