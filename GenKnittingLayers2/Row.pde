class Row{
  PVector pos;
  float rwidth;
  float rheight;
  int sign;
  int max;
  int row;
  Stitch[] stitches;
  boolean lastrow;
  
  
   Row(int row, PVector pos, float pwidth, float pheight, int max, int sign, boolean last){
     this.pos = pos.copy();
     this.max = max;
     this.rwidth = pwidth;
     this.rheight = pheight;
     this.stitches = new Stitch[max];
     this.sign = sign;
     this.row = row;
     this.lastrow = last;
     create();
     
   }
   void create(){
     PVector p;
     for(int i = 0; i < this.max; i++){
       if(i == 0){
         p = this.pos.copy();
         this.stitches[i] = new Stitch(p, this.rwidth/this.max, this.rheight, this.sign, true, false);
       }
       else if (!this.lastrow){
         p = this.stitches[i-1].last.copy();
         this.stitches[i] = new Stitch(p, this.rwidth/this.max, this.rheight, this.sign, false, false);
       }
       else {
         p = this.stitches[i-1].last.copy();
         this.stitches[i] = new Stitch(p, this.rwidth/this.max, this.rheight, this.sign, false, true);
       }
     }
   }
   String[] gcode(int row, float layerheight, float thickness ){
     String[] stitches = {};
     stitches = append(stitches, ";row");
     for(int stitch = 0; stitch < this.max; stitch++){
      stitches = concat(stitches, this.stitches[stitch].gcode(row, layerheight,thickness));
     }
    
     return stitches;
   }
}