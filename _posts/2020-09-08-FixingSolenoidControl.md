---
title: "Fixing Solenoid Control"
excerpt_separator: "<!--more-->"
categories:
  - Development Post
---

## AKA Check your pin types

While testing the solenoid control, I noticed that the GPIO would never go high to enable the high power MOSFET. While doing some digging I noticed on the datasheet that the pin type for the GPIO I used is `Input Only`. 

I once had an embedded systems professor recommend using a spreadsheet to keep track of all your IO that you are using, and to reference the datasheet for the microcontroller. You want to make sure you can actually use the pins you've selected for the things you want to do: Input, Output, ADC, SPI, UART, etc.

From the datasheet we can see that GPIO34 is not suitable for an output control signal:

<style type="text/css">
.tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;margin:0px auto;}
.tg td{background-color:#fff;border-bottom-width:1px;border-color:#ccc;border-style:solid;border-top-width:1px;
  border-width:0px;color:#333;font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;
  word-break:normal;}
.tg th{background-color:#f0f0f0;border-bottom-width:1px;border-color:#ccc;border-style:solid;border-top-width:1px;
  border-width:0px;color:#333;font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;
  padding:10px 5px;word-break:normal;}
.tg .tg-wkkj{background-color:#efefef;border-color:#000000;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-i817{background-color:#f9f9f9;border-color:#000000;text-align:left;vertical-align:top}
.tg .tg-73oq{border-color:#000000;text-align:left;vertical-align:top}
.tg .tg-kzzi{background-color:#fffc9e;border-color:#000000;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;margin: auto 0px;}}</style>
<div class="tg-wrap"><table class="tg" style="undefined;table-layout: fixed; width: 384px">
<colgroup>
<col style="width: 121px">
<col style="width: 61px">
<col style="width: 61px">
<col style="width: 141px">
</colgroup>
<thead>
  <tr>
    <th class="tg-wkkj">Name</th>
    <th class="tg-wkkj">No</th>
    <th class="tg-wkkj">Type</th>
    <th class="tg-wkkj">Function</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i817">GND</td>
    <td class="tg-i817">1</td>
    <td class="tg-i817">P</td>
    <td class="tg-i817">Ground</td>
  </tr>
  <tr>
    <td class="tg-73oq">3V3</td>
    <td class="tg-73oq">2</td>
    <td class="tg-73oq">P</td>
    <td class="tg-73oq">Power Supply</td>
  </tr>
  <tr>
    <td class="tg-i817">EN</td>
    <td class="tg-i817">3</td>
    <td class="tg-i817">I</td>
    <td class="tg-i817">Active High Enable</td>
  </tr>
  <tr>
    <td class="tg-73oq">SENSOR_VP</td>
    <td class="tg-73oq">4</td>
    <td class="tg-73oq">I</td>
    <td class="tg-73oq">GPIO36</td>
  </tr>
  <tr>
    <td class="tg-i817">SENSOR_VN</td>
    <td class="tg-i817">5</td>
    <td class="tg-i817">I</td>
    <td class="tg-i817">GPIO39</td>
  </tr>
  <tr>
    <td class="tg-kzzi">IO34</td>
    <td class="tg-kzzi">6</td>
    <td class="tg-kzzi">I</td>
    <td class="tg-kzzi">GPIO34</td>
  </tr>
  <tr>
    <td class="tg-i817">IO35</td>
    <td class="tg-i817">7</td>
    <td class="tg-i817">I</td>
    <td class="tg-i817">GPIO35</td>
  </tr>
  <tr>
    <td class="tg-73oq">IO32</td>
    <td class="tg-73oq">8</td>
    <td class="tg-73oq">I/O</td>
    <td class="tg-73oq">GPIO32</td>
  </tr>
  <tr>
    <td class="tg-i817">IO33</td>
    <td class="tg-i817">9</td>
    <td class="tg-i817">I/O</td>
    <td class="tg-i817">GPIO33</td>
  </tr>
</tbody>
</table></div>

&nbsp;  
I will need to change the GPIO pin for the solenoid control for the next boards, and for now run a small wire from the new pin to the current limiting resistor for the mosfet's gate.