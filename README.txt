lsd_ultraS

This project consist of using the BC557 & BC547 for pulsing and amplifying piezotransducers with the motive of measuring distance.
this repository consist of:

- Documentation
- Schematics for PCB & for simulation
- Code for RP2040 C-SDK and PIO-ASM

documentation folder:

- Derivations and formulas used ( working on digitalizing this)
- Code description
- Measured results

schematics folder:

- Schematics for use with RP2040-Zero
- simulation to the H-bridge out put and amplifier
- spice models used

Code dir:

- PIO program containing ASM for pulses
- C-SDK program executing the scheduling & logic
- C-SDK header files for Oled display -> from PICO_LSD (libs)
- Cmake.txt file instrucitons for compiler

documentation is still in progress & some code for different range of uses of this circuit.


