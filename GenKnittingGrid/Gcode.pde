class Gcode{
   float extrude;
   float speed;
   float layerheight;
   String[] commands ={";Project: Generate Knitting",";Ria Stroes"};
   
   
   Gcode(){
     this.extrude = 0;
     this.speed = 0;
     this.layerheight = 0;
     append( this.commands, ";");
     
   }
   void addCode(String[] pcommands){
     this.commands = concat(this.commands,pcommands);
   }
   void startCode(){
     this.commands = append(this.commands, ";start code");
     this.commands = append(this.commands, "M140 S50.000000");
     this.commands = append(this.commands, "M109 T0 S210.000000");
     this.commands = append(this.commands, "T0");
    
     this.commands = append(this.commands, "M190 S60           ;bed temperature on"); //<>//
     this.commands = append(this.commands, "M109 S210          ;extruder temperature on");
     this.commands = append(this.commands, "G21                ;metric values");
     this.commands = append(this.commands, "G90                ;absolute positioning");
     this.commands = append(this.commands, "M107               ;start with the fan off");
     this.commands = append(this.commands, "G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way");                           
     this.commands = append(this.commands, "G28 Z0             ;move Z to min endstops");
     this.commands = append(this.commands, "G1 Z6.0 F3000      ;move the platform up 15mm");
     this.commands = append(this.commands, "G1 F200 E30        ;extrude 10mm of feed stock");
     this.commands = append(this.commands, "G92 E0             ;zero the extruded length again");
     //this.commands = append(this.commands, "G1 F3000           ;set printing speed");
     this.commands = append(this.commands, "M117 Printing...");
    
   }
   void endCode(boolean stop){
     this.commands = append(this.commands, ";end code");
     
     this.commands = append(this.commands, "G91                      ;relative positioning");
     this.commands = append(this.commands, "G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure");
     if(stop == true){
       this.commands = append(this.commands, "M104 S0                      ;extruder heater off");
       this.commands = append(this.commands, "M140 S0                      ;heated bed heater off");
     }
     this.commands = append(this.commands, "G1 Z+2 F2000                 ;move Z up a bit and retract filament even more");
     this.commands = append(this.commands, "G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way");                            
     this.commands = append(this.commands, "M84                          ;steppers off");
     this.commands = append(this.commands, "G90                          ;absolute positioning");
   }
   void save(String name){
      saveStrings(name + ".gcode", this.commands);
   } 
}