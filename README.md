[![](https://github.com/ChandlerMcCowan/ESP32MiniDrop/raw/master/Enclosure%20Files/Images/ESPMiniDrop_Enclosure_Logo_Small.png)](#)
# ESP32MiniDrop
This repository contains the source files for a DIY Bluetooth connected solenoid controller for use with water drop photography. This project is still a work in progress, so make sure to follow and keep up with any future updates!


Some features of this design include:
* Bluetooth / Wifi connectivity
* 12 V Solenoid Control
* Shutter Control
* Android/IOS App

## Quick Links
- [Schematics](https://github.com/ChandlerMcCowan/ESP32MiniDrop/raw/master/Hardware%20Files/PDFs/ESP32MiniDrop_Schematics_A02.pdf)
- [Board Drawing](https://github.com/ChandlerMcCowan/ESP32MiniDrop/raw/master/Hardware%20Files/PDFs/ESP32MiniDrop_Assembly_A02.pdf)
- Enclosure

## Current Status

This project is still in its early stages, so this repository should be considered a work in progress. As of now, here is what has been done:
- Schematic and Board design are completed and are at first revision: A01
- A01 Boards currently being fabricated/shipped
- Parts for small initial prototype ordered
- 3d printed enclosure designed and ready for first print

## Future Goals

Here's what needs to get done for this project:
- Develop firmware to enable connection to Android/iOS app
- Develop Android/iOS app
- Perform electrical tests on board design

## Usage
The goal for this device is to help make water drop photography a snap. Water drop photography focuses on macro shots of water or other liquids at various stages of impact. This controller enables you to use an electronically controlled valve (i.e. solenoid) positioned above a pool of liquid, where you can adjust the timing between succesive drops, the size of the drops themselves, and when to tell the camera to take the picture. By connecting your phone to the controller, you'll be able to dial in these settings and get significantly more repeatable shots than with manual methods.

## What you'll need
Once you've got an ESP32MiniDrop board in hand, there's a few things needed to get everything ready for pictures. 
#### Solenoid
The star of the show is the electrionically controlled valve known as a solenoid. The ESP32MiniDrop is designed for 12V DC solenoids, with a typical power usage of 6-8 Watts. When buying a solenoid, make sure to look for one that is 2 port (one way in and one way out) and prefereablly where the valve body is made of brass. This helps to prevent corrosion if you decide to experiment with other liquids. Wiring the solenoid should be easy, just use stranded core wire and attach to the terminals on the solenoid and then the controller. 

#### Power Supply
TODO: Fill in
#### Stand
TODO: Fill in
#### Flash
TODO: Fill in
#### Camera
TODO: Fill in
