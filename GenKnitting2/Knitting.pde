class Knitting{
  float kwidth;
  float kheight;
  PVector[] pos;
  Row[] rows;
  String[] commands = {";knitting"};
  
  Knitting(PVector pos, float pwidth, float pheight){
    this.kwidth = pwidth;
    this.kheight = pheight;
    this.pos = new PVector[6];
    this.pos[0] = new PVector(0,0);
    this.pos[1] = new PVector(pos.x, pos.y);
    this.pos[2] = new PVector(pos.x + this.kwidth, pos.y);
    this.pos[3] = new PVector(pos.x + this.kwidth, pos.y + this.kheight);
    this.pos[4] = new PVector(pos.x, pos.y + this.kheight);
    this.pos[5] = new PVector(pos.x+5, pos.y+5);
    
    this.rows = new Row[1];
    this.rows[0] = new Row(this.pos[5], this.kwidth - 10, this.kheight/10, 10);
    
  }
  String[] gcodeSkirt(float layerheight, float thickness, float speed, float extrude){
    this.commands = append(this.commands, "G1 F" + speed + " Z0.2");
    for(int i = 1; i < this.pos.length; i++){
      PVector v = PVector.sub(this.pos[i], this.pos[i-1]);
      extrude += v.mag() * layerheight * thickness;
      this.commands = append(this.commands, "G1 X"+ this.pos[i].x + " Y"+ this.pos[i].y + " E" + extrude);
    }
    return this.commands;
  }
}  