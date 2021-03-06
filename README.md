# PRIME-SC2-Tests

PRIME (Purdue Rare Isotope Measurement) Lab conducts AMS (accelerator mass spectroscopy) measurements for various elements.  A new source for the accelerator is to be installed and this code is for testing the control of the motor (Kollmorgen PowerPac N33HRHJ-LEK-M2-00) and motor driver (Kollmorgen P70530 driver).

The driver is communicated to through a National Instruments cRIO module (NI-9512) and motor position read back via an 14-bit encoder reporting to a NI-9403 cRIO module.

##  Overview

This LabVIEW code is meant to test wheel rotation algorithms for sample changer and doesn't include code for the other devices to be connected to the SCB cRIO (HV components, gate valves, rod actuation, etc). See the SCB-Control project for full control of source section of beamline.


## Branches
master: latest working version

dev: initial development branch

crio9067: migrated from the 9024/9114 combo to the 9067 and includes full test of precision (4032)

rotate: proto-sample changer code - simply spins the wheel as directed and reads back position

state-control: adds array-of-states to prepare for interlocks required for actually moving samples around
