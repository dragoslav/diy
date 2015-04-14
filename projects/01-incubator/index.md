---
layout: page
title: Incubator
sidebar: 1
label: incubator
permalink: /incubator/
work-in-progress: true
---

[In biology, an incubator is a device used to grow and maintain microbiological cultures or cell cultures.](http://en.wikipedia.org/wiki/Incubator_%28culture%29)
Incubator design is based on design from [Biohack Academy](http://biohackacademy.github.io/biofactory/class/1-incubator/).

Main differences:

* Instead of Arduino microcontroller, it will be controlled by Raspberry Pi 2.
* It should have a smaller volume. In order to achieve that it will be used different heat source (heating foil) and no fan.

## Materials

|**Description**|**Supplier NL**|**Cost**|
|:------------------------------|:--------------------------|--------:|
|3mm MDF 95 x 45 cm|Wood store, like [Houthandel Schmidt](https://www.google.com/maps/dir/Waag+Society,+Nieuwmarkt,+Amsterdam,+Netherlands/Houthandel+Schmidt,+Oudezijds+Achterburgwal+53,+1012+DB+Amsterdam,+Netherlands/@52.3732195,4.8971869,17z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47c609b93deae857:0xa3c3b57e66c44946!2m2!1d4.900298!2d52.372807!1m5!1m1!1s0x47c609b901ad7703:0x6d511a1e0f5be9c2!2m2!1d4.89915!2d52.373417) &nbsp;&nbsp;&nbsp;| |
|Expanded polystyrene (EPS), 2cm thick &nbsp;&nbsp;&nbsp;|[Praxis](https://www.praxis.nl/bouwmaterialen/isolatie/isolatie/isolatieplaat-eps-60-100-x-50-x-2cm-12-stuks/)|€ 7.99|
|Temperature sensor DS18S20 |[Conrad](https://www.conrad.nl/nl/temperatuursensor-met-directe-digitale-uitgang-dallas-ds18s20-50-tot-125-c-in-stappen-van-05-c-soort-behuizing-to-92-176168.html)|€ 5.32|
|4.7kΩ resistor for temperature sensor|||
|LED and resistor for it|||
|MOSFET|[Conrad](https://www.conrad.nl/nl/mosfet-fairchild-semiconductor-buz-11-n-kanaal-soort-behuizing-to-220-ab-i-d-30-a-u-ds-50-v-151334.html)|€ 1.01|
|Heating foil|[Conrad](http://www.conrad.com/ce/en/product/189177/?insert=62&insertNoDeeplink&productname=Thermo-90-mm-Operating-voltage-12-V-Power-15-W)| € 5.49|

## Design

In order find the most suitable design several hypotheses ere tested and these are some results.

1. just a plain carton box
2. 2cm think insulation (EPS) without gluing it (led to some warm air leakage)
3. no fan - checking distribution of the warm air by 2 temperature sensors (bottom & top) 
4. heating foil connected to 5V - using the same [power source](https://www.conrad.nl/nl/inbouwnetvoeding-5-vdc-5-a-25-w-tdk-lambda-ls-25-5-512731.html) as for Raspberry Pi

Without cover:

![carton-box-incubator]({{ site.url }}/projects/01-incubator/carton-box-incubator.jpg)

[Wiring]({{ site.url }}/projects/01-incubator/incubator.fzz), note that temperature sensors are DS18S20 and heating element is the heating foil not a Peltier element.

![wiring]({{ site.url }}/projects/01-incubator/wiring.png)

Software to run the incubator can be found [here](https://github.com/dragoslav/incubator).

![temperature controller]({{ site.url }}/projects/01-incubator/temperature-controller.png)

Conclusion after this experimental design:

1. Heat distribution is not uniform as it could be expected.

![temperature profile]({{ site.url }}/projects/01-incubator/temperature-profile.png)

2. Heating foil with 5V power supply is not good enough. Alone it can reach around 35°C but within container temperature stays below 30°C. 
   Next try out should be with 12V - maximum voltage per specification.
   
3. 4cm thick EPS instead of 2cm.


### Incubator casing

For incubator box (casing) the following Magic Box [template]({{ site.url }}/projects/01-incubator/magic_box_template.mbt) is used.
It is a modified version of [Press-fit Box](http://magic-box.org/c/designs/). The main difference is that one side can be configured differently: number of steps (t_steps) and fitting (tpf). 
That allows 5 sides to strongly fit together and the remaining (top) side just to be used as a cover.
SVG files can be generated using the template and online Magic Box [tool](http://magic-box.org/tool/).
SVG laser cut file [example]({{ site.url }}/projects/01-incubator/magic_box_design.svg).

