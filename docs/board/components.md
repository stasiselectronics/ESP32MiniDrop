---
layout: single
permalink: /docs/board/components/
title: "Components"
author_profile: false
sidebar:
  nav: "docs"
classes: wide
---

**Note:** This board uses 0603 passive components and small outline packages, so a patient hand and good eyes (or a microscope) will be needed to hand solder. The CP2012N is in a Quad Flat no Lead (QFN) package, and is not an easy part to attach. You can skip the USB to UART chip and instead use the 0.100" programming headers (J5) to load the sketches on the ESP32 manually.
{: .notice--warning}
**NOTE**


## Bill of Materials


| Reference Designator          | Value              | Quantity | Manufacturer                        |         Part Number |
|-------------------------------|--------------------|:--------:|-------------------------------------|--------------------:|
| C1, C3                        | 0.1uF 50V          |     2    | Yageo                               |   CC0603ZRY5V9BB104 |
| C2, C5, C7                    | 10uF 50V           |     3    | Samsung Electro-Mechanics           |     CL31A106MBHNNNE |
| C4 C6                         | 1nF 50V            |     2    | Yageo                               |   CC0603KRX7R9BB102 |
| C8                            | 1uF 50V            |     1    | Yageo                               |   CC0603KRX5R9BB105 |
| C9                            | 22uF 6.3V          |     1    | Samsung Electro-Mechanics           |     CL21A226MQQNNNE |
| D1, D6                        | 40V 2A             |     2    | ON Semiconductor                    |              SS24FL |
| D2                            | SP0502BAHT         |     1    | Littelfuse Inc.                     |         SP0502BAHTG |
| D3                            | GREEN 3.2V 20mA    |     1    | Wurth Elektronik                    |       150120GS75000 |
| D4                            | BLUE 3.2V 20mA     |     1    | Wurth Elektronik                    |       150120BS75000 |
| D5                            | 20V 1A             |     1    | ON Semiconductor                    |       MBR120VLSFT3G |
| D7                            | 600V 5A            |     1    | SMC Diode Solutions                 |            SD560BTR |
| J1                            | USB_B_Mini         |     1    | Molex                               |          1050170001 |
| J2                            | Barrel_Jack        |     1    | CUI Devices                         |             PJ-037A |
| J3                            | AudioJack          |     1    | Kycon, Inc.                         |            STX-3000 |
| J4                            | Solenoid Terminal  |     1    | Pheonix Contact                     |             1935161 |
| Q1 Q2                         | S8050              |     2    | ON Semiconductor                    |       MMBT2222ALT1G |
| Q3                            | NMOS 60V 46A       |     1    | ON Semiconductor                    |        NTD5865NLT4G |
| R1, R2, R6, R7, R10, R13, R16 | 10k 1% 0.1W        |     7    | Yageo                               |     RC0603FR-0710KL |
| R14, R15                      | 220R 1% 0.1W       |     2    | Yageo                               |    RC0603FR-07220RL |
| R3                            | 22.1K 1% 0.1W      |     1    | Yageo                               |    RC0603FR-0722K1L |
| R4                            | 47.5K 1% 0.1W      |     1    | Yageo                               |    RC0603FR-0747K5L |
| R5                            | 2K 1% 0.1W         |     1    | Yageo                               |      RC0603FR-072KL |
| R8, R9, R11, R12              | 0R 0.1W            |     4    | Yageo                               |      311-0.0GRCT-ND |
| SW1                           | SPST (RED)         |     1    | TE Connectivity ALCOSWITCH Switches |           1825027-6 |
| SW2                           | SPST (BLUE)        |     1    | TE Connectivity ALCOSWITCH Switches |           1825027-8 |
| U1                            | CP2102N-A01-GQFN28 |     1    | Silicon Labs                        | CP2102N-A02-GQFN28R |
| U2                            | AZ1117-3.3         |     1    | Diodes Incorporated                 |    AZ1117CH-3.3TRG1 |
| U3                            | ESP32-WROOM-32     |     1    | Espressif                           |     ESP32-WROOM-32D |
| U4, U5                        | 4N25               |     2    | Broadcom Limited                    |           4N25-500E |
