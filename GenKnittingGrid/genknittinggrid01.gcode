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
G1 X22.0 Y22.0
G1 X22.0 Y102.0 E8.0
G1 X102.0 Y102.0 E16.0
G1 X102.0 Y22.0 E24.0
G1 X24.0 Y24.0 E31.802563
G1 X24.0 Y98.0 E39.202564
G1 X98.0 Y98.0 E46.602566
G1 X98.0 Y26.0 E53.802567
G1 X26.0 Y26.0 E61.002567
;end code
G91                          ;relative positioning
G1 E-1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F3000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
