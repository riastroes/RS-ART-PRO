;Project: Generate Knitting
;Ria Stroes
;start code
M140 S50.000000
M109 T0 S200.000000
T0
M190 S60           ;bed temperature on
M109 S200          ;extruder temperature on
G21                ;metric values
G90                ;absolute positioning
M107               ;start with the fan off
G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way
G28 Z0             ;move Z to min endstops
G1 Z15.0 F3000     ;move the platform up 15mm
G1 F200 E30        ;extrude 10mm of feed stock
G92 E0             ;zero the extruded length again
M117 Printing...
G1 F1200.0
G1 Z0.25
G1 X19.0 Y19.0
G1 X20.0 Y124.0 E10.500476
G1 X124.0 Y124.0 E20.900476
G1 X124.0 Y20.0 E31.300476
G1 X20.0 Y20.0 E41.700478
G1 X20.0 Y123.0 E52.000477
G1 X123.0 Y123.0 E62.300476
G1 X123.0 Y21.0 E72.50047
G1 X21.0 Y21.0 E82.70047
;start knitting
G1 Z0.25 XInfinity YInfinity
G1 Z0.25 XInfinity YInfinity
G1 Z0.25 X1.0816936E37 Y9.351621E36
G1 Z0.25 XInfinity YInfinity
G1 Z0.25 X9.3211663E27 Y8.058477E27
G1 Z0.25 X4.10710278E11 Y3.55073786E11
;end code
G91                          ;relative positioning
G1 E-1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F3000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
