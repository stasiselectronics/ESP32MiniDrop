---
title: "Bigger Parts, Lower Cost"
excerpt_separator: "<!--more-->"
categories:
  - Development Post
---

## Redesigning for cost and component size

After some thought and exploration, I decided to move forward with redesigning the board with some key things in mind. I wanted to change most of the parts to be easier to hand solder. This means changing the passive components from 1206, twice as big as the 0603 parts previously used. I also wanted to reduce cost and complexity. I accepted that, while a nice to have, the USB to UART automatic downloading shouldn't be used enough to justify its inclusion on all boards. Why burden most people with features they don't use?

By not including the USB to UART bridge IC, cost and complexity are greatly reduced. Moving to larger passive components might increase their part cost, but not enough to notice. 

