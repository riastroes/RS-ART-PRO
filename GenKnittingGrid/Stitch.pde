class Stitch{
  String type;
  PVector pos;
  PVector[] p;
  PVector last;
  int max;
  float swidth;
  float sheight;
  float ws;
  float hs;
  
  
  Stitch(PVector pos, String type, float pwidth, float pheight){
    this.pos = pos.copy();
    this.swidth = pwidth;
    this.sheight = pheight;
    this.ws = this.swidth/4;
    this.hs = this.sheight/7;
    this.max = 13;
    this.p = new PVector[this.max];
    this.type = type;
    create();
   }
  
  void create(){
    switch(type){
      
      case "firstrrecht":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,1);
        this.p[2] = grid.get(1,3);
        this.p[3] = grid.get(0,4);
        this.p[4] = grid.get(0,6);
        this.p[5] = grid.get(1,7);
        this.p[6] = grid.get(2,7);
        this.p[7] = grid.get(3,6);
        this.p[8] = grid.get(3,4);
        this.p[9] = grid.get(2,3);
        this.p[10] = grid.get(2,1);
        this.p[11] = grid.get(3,0);
        this.p[12] = grid.get(4,0);
        break;
        
      }
      case "rrecht":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,1);
        this.p[2] = grid.get(1,3);
        this.p[3] = grid.get(0,4);
        this.p[4] = grid.get(0,6);
        this.p[5] = grid.get(1,7);
        this.p[6] = grid.get(2,7);
        this.p[7] = grid.get(3,6);
        this.p[8] = grid.get(3,4);
        this.p[9] = grid.get(2,3);
        this.p[10] = grid.get(2,1);
        this.p[11] = grid.get(3,0);
        this.p[12] = grid.get(4,0);
        break;
      }
      case "lastrrecht":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,1);
        this.p[2] = grid.get(1,3);
        this.p[3] = grid.get(0,4);
        this.p[4] = grid.get(0,6);
        this.p[5] = grid.get(1,7);
        this.p[6] = grid.get(2,7);
        this.p[7] = grid.get(3,6);
        this.p[8] = grid.get(3,4);
        this.p[9] = grid.get(2,3);
        this.p[10] = grid.get(2,1);
        this.p[11] = grid.get(4,0);  //meer naar buiten
        this.p[12] = grid.get(4,3);  //omhoog
         break;
      }
      case "firstlrecht":{
       this.p[0] = grid.get(0,0);
       this.p[1] = grid.get(1,0);
       this.p[2] = grid.get(2,1);
       this.p[3] = grid.get(2,3);
       this.p[4] = grid.get(1,4);
       this.p[5] = grid.get(1,6);
       this.p[6] = grid.get(2,7);
       this.p[7] = grid.get(3,7);
       this.p[8] = grid.get(4,6);
       this.p[9] = grid.get(4,4);
       this.p[10] = grid.get(3,3);
       this.p[11] = grid.get(3,1);
       this.p[12] = grid.get(4,0);
        break;
      }
      case "lrecht":{
       this.p[0] = grid.get(0,0);
       this.p[1] = grid.get(1,0);
       this.p[2] = grid.get(2,1);
       this.p[3] = grid.get(2,3);
       this.p[4] = grid.get(1,4);
       this.p[5] = grid.get(1,6);
       this.p[6] = grid.get(2,7);
       this.p[7] = grid.get(3,7);
       this.p[8] = grid.get(4,6);
       this.p[9] = grid.get(4,4);
       this.p[10] = grid.get(3,3);
       this.p[11] = grid.get(3,1);
       this.p[12] = grid.get(4,0);
        break;
      }
      case "lastlrecht":{
       this.p[0] = grid.get(0,0);
       this.p[1] = grid.get(1,0);
       this.p[2] = grid.get(2,1);
       this.p[3] = grid.get(2,3);
       this.p[4] = grid.get(1,4);
       this.p[5] = grid.get(1,6);
       this.p[6] = grid.get(2,7);
       this.p[7] = grid.get(3,7);
       this.p[8] = grid.get(4,6);
       this.p[9] = grid.get(4,4);
       this.p[10] =grid.get(3,3);
       this.p[11] =grid.get(3,1);
       this.p[12] =grid.get(4,3);
        break;
      }
      
      case "firstrsetup":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,0);
        this.p[2] = grid.get(2,1);
        this.p[3] = grid.get(3,2);
        this.p[4] = grid.get(2,3);
        this.p[5] = grid.get(1,3);
        this.p[6] = grid.get(0,2);
        this.p[7] = grid.get(1,1);
        this.p[8] = grid.get(2,0);
        this.p[9] = grid.get(3,0);
        this.p[10] = grid.get(4,0);
        this.p[11] = grid.get(4,0);
        this.p[12] = grid.get(4,0);
         break;
      }
       case "rsetup":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,0);
        this.p[2] = grid.get(2,1);
        this.p[3] = grid.get(3,2);
        this.p[4] = grid.get(2,3);
        this.p[5] = grid.get(1,3);
        this.p[6] = grid.get(0,2);
        this.p[7] = grid.get(1,1);
        this.p[8] = grid.get(2,0);
        this.p[9] = grid.get(3,0);
        this.p[10] = grid.get(4,0);
        this.p[11] = grid.get(4,0);
        this.p[12] = grid.get(4,0);
         break;
      }
      case "lastrsetup":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,0);
        this.p[2] = grid.get(2,1);
        this.p[3] = grid.get(3,2);
        this.p[4] = grid.get(2,3);
        this.p[5] = grid.get(1,3);
        this.p[6] = grid.get(0,2);
        this.p[7] = grid.get(1,1);
        this.p[8] = grid.get(2,0);
        this.p[9] = grid.get(3,0);
        this.p[10] = grid.get(4,0);
        this.p[11] = grid.get(4,0);
        this.p[12] = grid.get(4,1);
         break;
      }
       case "firstrfinish":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(0,6);
        this.p[2] = grid.get(3,6);
        this.p[3] = grid.get(4,5);
        this.p[4] = grid.get(5,3);
        this.p[5] = grid.get(4,2);
        this.p[6] = grid.get(3,2);
        this.p[7] = grid.get(2,3);
        this.p[8] = grid.get(3,4);
        this.p[9] = grid.get(4,5);
        this.p[10] = grid.get(5,6);
        this.p[11] = grid.get(6,6);
        this.p[12] = grid.get(6,6);
         break;
      }
       case "rfinish":{
        
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,0);
        this.p[2] = grid.get(2,1);
        this.p[3] = grid.get(3,3);
        this.p[4] = grid.get(2,4);
        this.p[5] = grid.get(1,4);
        this.p[6] = grid.get(0,3);
        this.p[7] = grid.get(1,2);
        this.p[8] = grid.get(2,1);
        this.p[9] = grid.get(3,0);
        this.p[10] = grid.get(4,0);
        this.p[11] = grid.get(4,0);
        this.p[12] = grid.get(4,0);
         break;
      }
      case "lastrfinish":{
        this.p[0] = grid.get(0,0);
        this.p[1] = grid.get(1,0);
        this.p[2] = grid.get(2,1);
        this.p[3] = grid.get(2,3);
        this.p[4] = grid.get(2,4);
        this.p[5] = grid.get(1,4);
        this.p[6] = grid.get(0,3);
        this.p[7] = grid.get(1,2);
        this.p[8] = grid.get(2,1);
        this.p[9] = grid.get(2,0);
        this.p[10] = grid.get(2,0);
        this.p[11] = grid.get(2,0);
        this.p[12] = grid.get(2,0);
         break;
      }
    }
    //absolute positions
    //println(this.type);
    //for(int i = 0; i < this.p.length; i++){
    //  this.p[i].x = (this.p[i].x * this.ws) + this.pos.x;
    //  this.p[i].y = (this.p[i].y * this.hs) + this.pos.y;
    //}
    //this.last = this.p[12];
    for(int i = 0; i < this.p.length; i++){
      this.p[i].x = this.p[i].x + grid.last.x;
      this.p[i].y = this.p[i].y + grid.last.y;
    }
    
    grid.last = this.p[12];
    //println(this.p[0].y , this.last.y, this.ws);
    
    
  }
  String[] gcode(float layerheight, float thickness){
    String[] stitch = {};
    for(int i = 1; i < this.p.length; i++){
      PVector v = PVector.sub(this.p[i-1], this.p[i]);
      gcode.extrude += v.mag() * layerheight * thickness;
      stitch = append(stitch, "G1 X" + this.p[i].x + " Y" + this.p[i].y  + " E" + gcode.extrude);
    }
    return stitch;
  }
  void draw(){
     
      PVector gpos;
      for(int i = 0; i < this.p.length; i++){
        gpos=grid.get(int(this.p[i].x), int(this.p[i].y));
        vertex( gpos.x,  gpos.y);
      }
      
  }
}