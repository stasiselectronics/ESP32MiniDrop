---
title: "Accepting Failure"
excerpt_separator: "<!--more-->"
categories:
  - Development Post
---

## USB to UART Bridge IC won't work

I've been struggling with getting the USB to UART functionality working, but to no avail. Last weekend I spent some time in the lab to rework the transistors to try and get the auto download working. Unfortunately the rework caused both of the built boards I have to no longer have functional UART communication. 

There seemed to be something causing the ESP32's TX signal line to stay high, meaning no communication between my development PC and the board. Today I tried removing the `CP2102n` IC from the board, and this brought back valid signals on the TX line. 

Understanding that this is not a primary function of the device, I need to reevaluate how much effort I put into fixing it. 

## But at what cost?

I created a new sub sheet in KiCad to move all the USB to UART parts to so that I can create a new BOM from just these parts. In order to not have all the other parts come along with, I saved as to a new folder for just the sheet with the relavent parts.

At MOQ of 1, the parts come out to approximately $4.10, and approximately $2.76 at an order quantity of 100. This is quite the chunk of the overall cost of the board. 

The pros of the feature boil down to an easier time reprogramming the device, but the goal is that no one should need to reprogram the device that often. If someone would like to reprogram the device, then it can be assumed that they have the USB to UART board needed to reprogram it. 

I think this is a good reminder to focus on the primary functions of a product, and to not burden the cost of a PCB with features that are not used often if not at all.

