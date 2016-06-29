# PRIME-SC2-Tests

PRIME (Purdue Rare Isotope Measurement) Lab conducts AMS (accelerator mass spectroscopy) measurements for various elements.  A new source for the accelerator is to be installed and this code is for testing the control of the motor (Kollmorgen PowerPac N33HRHJ-LEK-M2-00) and motor driver (Kollmorgen P70530 driver).

The driver is communicated to through a National Instruments cRIO module (NI-9512) and motor position read back via an 14-bit encoder reporting to a NI-9403 cRIO module.

## Branches
master: latest working version

rotate: proto-sample changer code - simply spins the wheel as directed and reads back position

state-control: adds array-of-states to prepare for interlocks required for actually moving samples around
