---
title: "Fixing Automatic Firmware Downloads"
excerpt_separator: "<!--more-->"
categories:
  - Development Post
---

While trying to fix the automatic download of firmware I noticed a possible source for the problems: pins on the schematic symbol don't match the actual pinout on the transistor. Something that happens from time to time, and a good reminder that just because you're using a footprint library doesn't mean you don't need to review the pin mapping.

![Pin Mapping Error]({{site.baseurl}}/assets/images/pinmappingerror.jpg){: .align-center}

The good news is that all that should be needed is to take the SOT-23 transistors and flip them upside down, swapping pins 1 and 2. 

I simulated the erroneous circuit that is on the `A01` boards to make sure nothing bad happened when powered on, and luckily there shouldn't have been any run away current or strange voltages. The results showed that the voltages on the `EN` and `IO0` nets never got below 2.57 volts when toggling the RTS and DTR signals.

![Simulated Error]({{site.baseurl}}/assets/images/simulatederror.png){: .align-center}

This shows that the RTS and DTR signals could never bring the `EN` and `IO0` below the threshold voltage to register as a logical 0. 

## What's Next
I'll need to find some time to hop in to the lab and perform the fix. In the mean time, I've gone ahead and updated the design for the `A02` boards.