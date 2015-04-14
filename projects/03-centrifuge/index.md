---
layout: page
title: Centrifuge
sidebar: 3
label: centrifuge
permalink: /centrifuge/
work-in-progress: true
---

[A centrifuge is a piece of equipment that puts an object in rotation around a fixed axis (spins it in a circle), applying a potentially strong force perpendicular to the axis of spin (outward).](http://en.wikipedia.org/wiki/Centrifuge)
Centrifuge design is based on design from [Biohack Academy](http://biohackacademy.github.io/biofactory/class/5-centrifuge/).

Main differences:

* Instead of Arduino microcontroller, it will be controlled by Raspberry Pi 2.

## Materials

|**Description**|**Supplier NL**|**Cost**|
|:------------------------------|:--------------------------|--------:|
|3mm MDF 95 x 45 cm|Wood store, like [Houthandel Schmidt](https://www.google.com/maps/dir/Waag+Society,+Nieuwmarkt,+Amsterdam,+Netherlands/Houthandel+Schmidt,+Oudezijds+Achterburgwal+53,+1012+DB+Amsterdam,+Netherlands/@52.3732195,4.8971869,17z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47c609b93deae857:0xa3c3b57e66c44946!2m2!1d4.900298!2d52.372807!1m5!1m1!1s0x47c609b901ad7703:0x6d511a1e0f5be9c2!2m2!1d4.89915!2d52.373417) &nbsp;&nbsp;&nbsp;| |
|DC Brushless motor &nbsp;&nbsp;&nbsp;|[HobbyKing](http://www.hobbyking.com/hobbyking/store/__40269__HobbyKing_Donkey_ST3511_810kv_Brushless_Power_System_Combo.html)|€ 14.99|
|Optoelectronic Reflective Coupler|[Conrad](https://www.conrad.nl/nl/opto-elektronische-reflectiekoppelaar-cny-70-vishay-cny-70-opto-elektronische-reflexkoppeling-bereik-03-mm-184241.html)|€ 2.13|
|DAC (Digital-to-Analog Convertor)|[Conrad](https://www.conrad.nl/nl/linear-ic-mcp4725a0t-ech-sot-23-6-microchip-technology-651477.html)|€ 1.35|
|DS2401 Silicon Serial Number|[Conrad](https://www.conrad.nl/nl/maxim-integrated-ds2401-lineaire-ic-soort-behuizing-to-92-uitvoering-1-wire-serie-nummer-170010.html)|€ 2.09|
|Toggle switch (2 states on & 1 off)|[Conrad](https://www.conrad.nl/nl/sci-r13-211d-02-wipschakelaar-250-vac-10-a-1x-aanuitaan-vergrendelend-1-stuks-448169.html)|€ 1.60|

## Design

Centrifuge can work in 2 modes: with and without Raspberry Pi (toggle switch 1-0-2).
Raspberry Pi is used for setting the RPM and DAC can output the stored value without Raspberry Pi.
That means centrifuge can work without any controller.
In order to get the right RPM, optoelectronic reflective coupler is used for measuring the current RPM.
Silicon Serial Number (1-wire protocol) is used for identifying the device. 
The main goal is to recognize automatically the device (centrifuge in this example) Raspberry Pi is connected to.
