class Row{
  PVector pos;
  float rwidth;
  float rheight;
  int max;
  Stitch[] stitches;
  String[] commands = {";row"};
  
   Row(PVector pos, float pwidth, float pheight, int max){
     this.pos = pos.copy();
     this.max = max;
     this.rwidth = pwidth;
     this.rheight = pheight;
     this.stitches = new Stitch[max];
     create();
     
   }
   void create(){
     PVector p;
     for(int i = 0; i < this.max; i++){
       if(i == 0){
         p = this.pos.copy();
       }
       else{
         p = this.stitches[i-1].last.copy();
       }
       this.stitches[i] = new Stitch(p, this.rwidth/this.max, this.rheight);
     }
   }
   String[] gcode(float layerheight, float thickness, float extrude ){
     for(int i = 0; i < this.max; i++){
      this.commands = concat(this.commands, this.stitches[i].gcode(layerheight,thickness, extrude));
     }
     return this.commands;
   }
}