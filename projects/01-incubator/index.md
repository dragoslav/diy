---
layout: page
title: Incubator
sidebar: 1
label: incubator
permalink: /incubator/
work-in-progress: true
---

[In biology, an incubator is a device used to grow and maintain microbiological cultures or cell cultures.](http://en.wikipedia.org/wiki/Incubator_%28culture%29)
Design of the following incubator is based on one from [Biohack Academy](http://biohackacademy.github.io/biofactory/class/1-incubator/).

Main differences:

* Instead of Arduino microcontroller, it will be controlled by Raspberry Pi 2
* It should have a smaller volume. In order to achieve that it will be used different heat source (heating foil) and no fan.

## Materials

|**Description**|**Supplier NL**|**Cost**|
|:------------------------------|:--------------------------|--------:|
|3mm MDF 95 x 45 cm|Wood store, like [Houthandel Schmidt](https://www.google.com/maps/dir/Waag+Society,+Nieuwmarkt,+Amsterdam,+Netherlands/Houthandel+Schmidt,+Oudezijds+Achterburgwal+53,+1012+DB+Amsterdam,+Netherlands/@52.3732195,4.8971869,17z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47c609b93deae857:0xa3c3b57e66c44946!2m2!1d4.900298!2d52.372807!1m5!1m1!1s0x47c609b901ad7703:0x6d511a1e0f5be9c2!2m2!1d4.89915!2d52.373417) &nbsp;&nbsp;&nbsp;| |
|Expanded polystyrene (EPS), 2cm thick &nbsp;&nbsp;&nbsp;|[Praxis](https://www.praxis.nl/bouwmaterialen/isolatie/isolatie/isolatieplaat-eps-60-100-x-50-x-2cm-12-stuks/)|€ 7.99|
|Temperature sensor DS18S20 |[Conrad](https://www.conrad.nl/nl/temperatuursensor-met-directe-digitale-uitgang-dallas-ds18s20-50-tot-125-c-in-stappen-van-05-c-soort-behuizing-to-92-176168.html)|€ 5.32|
|MOSFET|[Conrad](https://www.conrad.nl/nl/mosfet-fairchild-semiconductor-buz-11-n-kanaal-soort-behuizing-to-220-ab-i-d-30-a-u-ds-50-v-151334.html)|€ 1.01|
|Heating foil|[Conrad](http://www.conrad.com/ce/en/product/189177/?insert=62&insertNoDeeplink&productname=Thermo-90-mm-Operating-voltage-12-V-Power-15-W)| € 5.49|

## Design

* For incubator box (casing) the following [Magic Box template](http://dragoslav.github.io/diy/projects/01-incubator/magic_box_template.mbt) is used. 
  The template can be edited using [Magic Box tool](http://magic-box.org/tool/).
  It is a modified version of [Press-fit Box](http://magic-box.org/c/designs/). The main difference is that one side can be configured differently: number of steps (t_steps) and fitting (tpf). 
  That allows 5 sides to strongly fit together and the remaining (top) side just to be used as a cover.
  Sample [SVG laser cut file](http://dragoslav.github.io/diy/projects/01-incubator/magic_box_design.svg).

