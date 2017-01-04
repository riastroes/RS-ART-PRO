class Row{
  PVector pos;
  float rwidth;
  float rheight;
  int sign;
  int max;
  Stitch[] stitches;
  String[] commands = {};
  
   Row(PVector pos, float pwidth, float pheight, int max, int sign){
     this.pos = pos.copy();
     this.max = max;
     this.rwidth = pwidth;
     this.rheight = pheight;
     this.stitches = new Stitch[max];
     this.sign = sign;
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
       this.stitches[i] = new Stitch(p, this.rwidth/this.max, this.rheight, this.sign);
     }
   }
   String[] gcode(float layerheight, float thickness ){
     
     this.commands = append(this.commands, ";row");
     for(int i = 0; i < this.max; i++){
      this.commands = concat(this.commands, this.stitches[i].gcode(layerheight,thickness));
     }
     return this.commands;
   }
}