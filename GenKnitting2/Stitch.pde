class Stitch{
  int type;
  PVector[] pos;
  PVector last;
  float swidth, sheight;
  float ws, hs;
  int max;
  String[] commands = {};
  
  Stitch(PVector pos, float pwidth, float pheight){
    this.max = 12;
    this.swidth = pwidth;
    this.sheight = pheight;
    this.ws = this.swidth/4;
    this.hs = this.sheight/7;
    
    this.pos = new PVector[this.max];
    create(pos);
  }
  void create(PVector pos){
    float x = pos.x;
    float y = pos.y;
    this.pos[0] = new PVector(x,y);
    this.pos[1] = new PVector(x + this.ws    ,y-this.hs);
    this.pos[2] = new PVector(x + this.ws    ,y -(3 * this.hs));
    this.pos[3] = new PVector(x             ,y -(4 * this.hs));
    this.pos[4] = new PVector(x             ,y -(6 * this.hs));
    this.pos[5] = new PVector(x + this.ws    ,y -(7 * this.hs));
    this.pos[6] = new PVector(x + (2*this.ws),y -(7 * this.hs));
    this.pos[7] = new PVector(x + (3*this.ws),y -(6 * this.hs));
    this.pos[8] = new PVector(x + (3*this.ws),y -(4 * this.hs));
    this.pos[9] = new PVector(x + (2*this.ws),y -(3 * this.hs));
    this.pos[10] = new PVector(x + (2*this.ws),y -(1 * this.hs));
    this.pos[11] = new PVector(x + (3*this.ws),y);
    this.last = this.pos[11];
  }
  String[] gcode(float layerheight, float thickness, float extrude){
    PVector v;
        
    for(int i = 1; i < this.pos.length; i++){
      v = PVector.sub(this.pos[i], this.pos[i-1]);
      extrude += v.mag() * layerheight * thickness;
      this.commands = append(this.commands, "G1 X"+ this.pos[i].x + " Y" + this.pos[i].y + " E" + extrude); 
    }
    return this.commands;
  }
  void draw(){
      beginShape();
      for(int i = 0; i < this.pos.length; i++){
        vertex(this.pos[i].x, this.pos[i].y);
      }
      endShape();
  }
}