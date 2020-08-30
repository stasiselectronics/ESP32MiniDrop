---
layout: single
permalink: /docs/board/schematics/
title: "Schematics"
author_profile: false
sidebar:
  nav: "docs"
---
<a href="{{site.baseurl}}/docs/board/assets/ESP32MiniDrop_Schematics_A02.pdf" target="_blank">open shematic pdf in new tab</a>

Below are the different parts of the schematic design for MiniDrop. They are broken up in different functional groups.

## ESP32
![ESP32]({{site.baseurl}}/docs/board/assets/ESP32.jpg)
## USB to UART
Included in the design is the USB to UART Bridge IC `CP2102N`. This device has a USB 2.0 full speed controller that enables a host computer to connect to the MiniDrop over a Virtual COM port. This is similair to when connecting to an Arduino board, you select the COM port and upload sketches and monitor UART communication. 
![USB to UART]({{site.baseurl}}/docs/board/assets/UARTbridge.jpg)
The internal 3.3V regulator is disabled by shorting the regulator input and output to the externally regulated 3.3V.

### Boot Mode Selection
The `CP2102N` aslo includes RTS (Request to Send) and CTS (Clear To Send) signals. These are hardware handshaking signals that are used by `esptool.py` to automatically put the device into the right boot mode for programming by toggling the `EN` and `IO 0` pins on the ESP32 module.
![Boot Mode Selection]({{site.baseurl}}/docs/board/assets/BootSelection.jpg)
To learn more about how this works, [check out the esptool repo on github.](https://github.com/espressif/esptool)

## Solenoid Control
The method for controlling the 12V solenoid is a simple N-Channel Mosfet used as a low side driver: connecting the solenoid coil to ground, allowing current to flow and the magnetic field to be created. 
![Solenoid Control]({{site.baseurl}}/docs/board/assets/Solenoid.jpg)
The flyback diode `SD560BTR` from SMC Diode Solutions is used to provide a path for current to flow back into the coil when the mosfet swtiches off, safely dissapating any stored energy when the solenoid is switched off. 

To learn more about flyback diodes, check out this post from [Electronics Hub](https://www.electronicshub.org/flyback-diode-or-freewheeling-diode/).

The mosfet selection of `NTD5865NLT4G` from ON semiconductor is based on the power requirements of any possible 12V solenoid you could connect. In order to make sure the MOSFET can safely switch the solenoid, we need to have a large saftey margin. The Drain to Source Voltage of 60V allows us to safely have +12 V at the drain while the MOSFET is off. The max power dissapation of 71 Watts is well above the expected 6-8 Watts from most 12V solenoids.

Since the digital logic portion of the design is operating at 3.3V, a Gate Source Threshold voltage of 2 V allows the microcontroller to be able to switch the MOSFET on without needing an extra MOSFET to drive a higher gate voltage.

## Camera Control
![Camera Control]({{site.baseurl}}/docs/board/assets/cameracontrol.jpg)
## User Interface