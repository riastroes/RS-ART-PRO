class Stitch{
  int type;
  PVector[] pos;
  PVector[] poss;
  PVector last;
  float swidth, sheight;
  float ws, hs;
  int max;
  
  
  Stitch(PVector pos, float pwidth, float pheight, int sign){
    this.max = 13;
    this.swidth = pwidth;
    this.sheight = pheight;
    this.ws = this.swidth/4;
    this.hs = this.sheight/7;
    
    this.pos = new PVector[this.max];
    this.poss = new PVector[this.max];
    createSetup(pos, sign);
    create(pos, sign);
  }
  void createSetup(PVector pos, int sign){
    //- is naar beneden 
    //+ is omhoog
    float x = pos.x;
    float y = pos.y;
    println(this.hs);
    this.poss[0] =  new PVector(x     ,y);
    this.poss[1] =  new PVector(x + (sign * this.ws)    ,y + this.hs);
    this.poss[2] =  new PVector(x + (sign * this.ws)    ,y + (1*this.hs));
    this.poss[3] =  new PVector(x + (sign * this.ws)   ,y + (2*this.hs));
    this.poss[4] =  new PVector(x    ,y + (3*this.hs));
    this.poss[5] =  new PVector(x  - (sign * this.ws)  ,y + (3*this.hs));
    this.poss[6] =   new PVector(x - 2*(sign * this.ws)    ,y + (2*this.hs));
    this.poss[7] =  new PVector(x -2*(sign * this.ws)    ,y );
    this.poss[8] =  new PVector(x - (sign * this.ws)    ,y-(this.hs));
    this.poss[9] =  new PVector(x + 1*(sign * this.ws)    ,y-(this.hs));
    this.poss[10] = new PVector(x + 2*(sign * this.ws)    ,y-(this.hs));
    this.poss[11] =  new PVector(x + 3*(sign * this.ws)    ,y-(this.hs));
    this.poss[12] =  new PVector(x + 4*(sign * this.ws)    ,y-(this.hs));
    
    this.last = this.poss[12];
  }
  
  void create(PVector pos, int sign){
    float x = pos.x;
    float y = pos.y;
    this.pos[0] =  new PVector(x,y);
    this.pos[1] =  new PVector(x + (sign * this.ws)    ,y -this.hs);
    this.pos[2] =  new PVector(x + (sign * this.ws)    ,y -(3 * this.hs));
    this.pos[3] =  new PVector(x              ,y -(4 * this.hs));
    this.pos[4] =  new PVector(x              ,y -(6 * this.hs));
    this.pos[5] =  new PVector(x + (sign * this.ws)    ,y -(7 * this.hs));
    this.pos[6] =  new PVector(x + (sign * 2*this.ws),y -(7 * this.hs));
    this.pos[7] =  new PVector(x + (sign * 3*this.ws),y -(6 * this.hs));
    this.pos[8] =  new PVector(x + (sign * 3*this.ws),y -(4 * this.hs));
    this.pos[9] =  new PVector(x + (sign * 2*this.ws),y -(3 * this.hs));
    this.pos[10] = new PVector(x + (sign *2*this.ws),y -(1 * this.hs));
    this.pos[11] = new PVector(x + (sign *3*this.ws),y);
    this.pos[12] = new PVector(x + (sign *4*this.ws),y);
    this.last = this.pos[12];
  }
  String[] gcode(int row,  float layerheight, float thickness){
    PVector v;
    String[] stitches = {};
    
    if(row == 0 ){    
      
      for(int i = 1; i < this.poss.length; i++){
        
           v = PVector.sub(this.poss[i], this.poss[i-1]);
          gcode.extrude += v.mag() * layerheight * thickness;
          stitches = append(stitches, "G1 X"+ this.poss[i].x + " Y" + this.poss[i].y + " E" + gcode.extrude); 
      }
    }
    else{
      
      for(int i = 1; i < this.pos.length; i++){
       
           v = PVector.sub(this.pos[i], this.pos[i-1]);
          gcode.extrude += v.mag() * layerheight * thickness;
          stitches = append(stitches, "G1 X"+ this.pos[i].x + " Y" + this.pos[i].y + " E" + gcode.extrude); 
      }
    }
    
    return stitches;
  }
  void draw(){
      beginShape();
      for(int i = 0; i < this.pos.length; i++){
        vertex(this.pos[i].x, this.pos[i].y);
      }
      endShape();
  }
}