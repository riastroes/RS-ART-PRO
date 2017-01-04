class Knitting{
  float kwidth;
  float kheight;
  int maxstitches;
  int maxrows;
  PVector[] pos;
  Row[] rows;
  String[] commands = {";knitting"};
  
  Knitting(PVector pos, float pwidth, float pheight, int maxrows, int maxstitches){
    this.kwidth = pwidth;
    this.kheight = pheight;
    this.maxstitches = maxstitches;
    this.maxrows = maxrows;
    this.pos = new PVector[7];
    this.pos[0] = new PVector(0,0);
    this.pos[1] = new PVector(pos.x, pos.y);
    this.pos[2] = new PVector(pos.x + this.kwidth + 20, pos.y);
    this.pos[3] = new PVector(pos.x + this.kwidth + 20, pos.y + this.kheight + 20 );
    this.pos[4] = new PVector(pos.x, pos.y + this.kheight + 20);
    this.pos[5] = new PVector(pos.x+1, pos.y+1);
    this.pos[6] = new PVector(pos.x + 5, pos.y + 5 + (this.kheight/(this.maxrows/2)));
     
    this.rows = new Row[this.maxrows];
    PVector next = this.pos[6];
    int sign = -1;
    for(int i = 0; i < this.rows.length; i++){
      sign = -1 * sign;
      this.rows[i] = new Row(next, this.kwidth, this.kheight/(this.maxrows/2), this.maxstitches, sign);
      next = this.rows[i].stitches[ this.rows[i].max-1].last;
      next.x += -this.rows[i].sign * (this.rows[i].stitches[ this.rows[i].max-1].swidth/4);
      next.y += this.rows[i].stitches[ this.rows[i].max-1].sheight/2;
    }
        
  }
  String[] gcodeSkirt(float layerheight, float thickness, float speed){
   
    this.commands = append(this.commands, "G1 F" + speed + " Z0.2");
    for(int i = 1; i < 6; i++){
      PVector v = PVector.sub(this.pos[i], this.pos[i-1]);
      gcode.extrude += v.mag() * layerheight * thickness;
      if(i == 1){
         this.commands = append(this.commands, "G1 X"+ this.pos[i].x + " Y"+ this.pos[i].y + " Z"+ layerheight + " E" + gcode.extrude);
      }
      else{
        this.commands = append(this.commands, "G1 X"+ this.pos[i].x + " Y"+ this.pos[i].y + " E" + gcode.extrude);
      }  
   }
    return this.commands;
  }
}  