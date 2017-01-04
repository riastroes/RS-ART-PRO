class Knitting{
  float kwidth;
  float kheight;
  int maxstitches;
  int maxrows;
  PVector[] pos;
  PVector first;
  PVector next;
  Row[] rows;
  String[] commands = {";knitting"};
  
  Knitting(PVector pos, float pwidth, float pheight, int maxrows, int maxstitches){
    this.kwidth = pwidth;
    this.kheight = pheight;
    this.maxstitches = maxstitches;
    this.maxrows = maxrows;
    this.pos = new PVector[10];
    this.pos[0] = new PVector(0,0);
    this.pos[1] = new PVector(pos.x, pos.y);
    this.pos[2] = new PVector(pos.x + this.kwidth + 10, pos.y);
    this.pos[3] = new PVector(pos.x + this.kwidth + 10, pos.y + this.kheight + 20 );
    this.pos[4] = new PVector(pos.x, pos.y + this.kheight + 20);
    this.pos[5] = new PVector(pos.x+1, pos.y+1);
    this.pos[6] = new PVector(pos.x + this.kwidth + 8, pos.y + 1);
    this.pos[7] = new PVector(pos.x + this.kwidth + 8, pos.y + this.kheight + 18 );
    this.pos[8] = new PVector(pos.x+1, pos.y + this.kheight + 18);
    this.pos[9] = new PVector(pos.x+2, pos.y+2);
   
    this.first = new PVector(pos.x + 5, pos.y + 5 );
    this.next = this.first.copy();
    this.rows = new Row[this.maxrows];
    
    int sign = -1;
    for(int i = 0; i < this.rows.length; i++){
      sign = -1 * sign;
      if(i == 0){ 
          this.rows[i] = new Row(i, this.next, this.kwidth, this.kheight/(this.maxrows/2), this.maxstitches, sign, false);
          this.next = this.rows[i].stitches[ this.rows[i].max-1].last;
          this.next.x += -this.rows[i].sign * (this.rows[i].stitches[ this.rows[i].max-1].swidth/4);
          this.next.y += this.rows[i].stitches[ this.rows[i].max-1].sheight;
       }
      else if (i < this.rows.length){
         this.rows[i] = new Row(i, this.next, this.kwidth, this.kheight/(this.maxrows/2), this.maxstitches, sign, false);
         this.next = this.rows[i].stitches[ this.rows[i].max-1].last;
        this.next.x += -this.rows[i].sign * (this.rows[i].stitches[ this.rows[i].max-1].swidth/4);
        this.next.y += this.rows[i].stitches[ this.rows[i].max-1].sheight/2;
      }
      else{
         this.rows[i] = new Row(i, this.next, this.kwidth, this.kheight/(this.maxrows/2), this.maxstitches, sign, true);
         this.next = this.rows[i].stitches[ this.rows[i].max-1].last;
        this.next.x += -this.rows[i].sign * (this.rows[i].stitches[ this.rows[i].max-1].swidth/4);
        this.next.y += this.rows[i].stitches[ this.rows[i].max-1].sheight/2;
      }
    }
        
  }
  String[] gcodeSkirt(float layerheight, float thickness, float speed){
    String[] skirt = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      skirt = append(skirt, "G1 F" + gcode.speed);
    }
    if(gcode.layerheight != layerheight){
      gcode.layerheight = layerheight;
      skirt = append(skirt, "G1 Z" +  gcode.layerheight);
      skirt = append(skirt, "G1 X"+  this.pos[1].x + " Y"+ this.pos[1].y );
      
    }
    
    for(int i = 2; i < this.pos.length ; i++){
      PVector v = PVector.sub(this.pos[i], this.pos[i-1]);
      gcode.extrude += v.mag() * layerheight * thickness;
      skirt = append(skirt, "G1 X"+ this.pos[i].x + " Y"+ this.pos[i].y + " E" + gcode.extrude);
        
   }
    return skirt;
  }
  String[] gcodeToStart(int layer, float layerheight, float thickness, float speed){
    String[] tostart = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      tostart = append(tostart, "G1 F" + gcode.speed);
    }
    //tostart = append(tostart, "G1 Z"+ ((layer*layerheight)+2));
    PVector v = PVector.sub(this.pos[9], this.first);
    gcode.extrude += v.mag() * layerheight * thickness;
    tostart = append(tostart, "G1 Z"+ (layer*layerheight) +" X"+  this.first.x + " Y"+ this.first.y );
    
    return tostart;
  }
}  