;Project: Generate Knitting
;Ria Stroes
;start code
M140 S50.000000
M109 T0 S200.000000
T0
M190 S50.000000
M190 S50           ;bed temperature on
M109 S200          ;extruder temperature on
G21                ;metric values
G90                ;absolute positioning
M107               ;start with the fan off
G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way
G28 Z0             ;move Z to min endstops
G1 Z15.0 F3000     ;move the platform up 15mm
G1 F200 E3         ;extrude 3mm of feed stock
G92 E0             ;zero the extruded length again
G1 F3000           ;set printing speed
M117 Printing...
;knitting
G1 F3000.0
G1 X50.0 Y50.0 E0.0
G1 X170.0 Y50.0 E0.0
G1 X170.0 Y170.0 E0.0
G1 X50.0 Y170.0 E0.0
G1 X51.0 Y51.0 E0.0
;end code
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G91                          ;relative positioning
G1 E-1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+0.5 E-5 F3000           ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
