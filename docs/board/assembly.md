---
permalink: /docs/board/assembly/
title: "Board Assembly"
layout: single
author_profile: false
sidebar:
  nav: "docs"
---
## Hand Soldering
If you want to assemble a board by hand, you're going to need a few things:
- Magnification (Stereo Microscope, Camera Microscope, etc.)
- Fine Tipped Soldering Iron
- Hot Air Rework Station
- Flux, Solder, Solder wick

My general method is to start with the both the hardest and smallest, and work backwards prioritizing size. 

#### Soldering UART Bridge IC
Speaking of starting with the hardest first: the `CP2102n` is a Quad Flat No Leads (QFN) package, and a bit tricky to hand solder. A hot air rework station is practically required to be able to get the job done. 

Flux the footprint and apply a thin layer of solder across all the pads, and then heat up the footprint with the hot air. The goal is to be able to place the IC on the pad while continuing to heat with hot air and to have the surface tension bring the IC onto the correct position. 

**Note:** Make sure you position the IC with pin 1 in the correct orientation.
{: .notice--info}

##### Video Reference
Credit: Scott from [CuriousInventor](https://www.youtube.com/c/CuriousInventor/)
<iframe width="560" height="315" src="https://www.youtube.com/embed/c_Qt5CtUlqY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### Soldering ESP32
The `ESP32` has castellated holes on 3 sides of the module. One challenge can be aligning the module correctly so that no pin overlaps two pads on the footprint. 

Attach the module by one pin to allow you to realign before committing to soldering the rest of the pins. Make sure to inspect all the pins to verify alignment.    

## Reflow Soldering
I haven't had enough experience with reflow soldering, so no advice here on the best methods for this specific design. Generally, you should have a stencil, solder paste, and ideally a pick and place machine. 

## Rendering
![]({{site.baseurl}}/docs/board/assets/assembly_top.png)

### 3D View
Still working on a presentable 3D Render, but Google's Model Viewer works well as a start.

For a better 3D view, check out the STEP file in the [source.](https://github.com/ChandlerMcCowan/ESP32MiniDrop/tree/master/Hardware%20Files/3D%20Model)

<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
<script nomodule src="https://unpkg.com/@google/model-viewer/dist/model-viewer-legacy.js"></script>

<model-viewer 
style="width: 100%;
height: 500px;"
src="{{site.baseurl}}/docs/board/assets/ESP32MiniDrop_PCBA.gltf" 
auto-rotate 
exposure="1.0"
skybox-image="{{site.baseurl}}/docs/board/assets/background.png" 
camera-controls>
</model-viewer>

