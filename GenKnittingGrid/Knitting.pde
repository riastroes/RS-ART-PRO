class Knitting{
  
  int knittingwidth;
  int knittingheight;
  PVector gpos;
  
  PVector[] skirt;
  PVector first;
  PVector last;
  Row[] rows;
  String[] commands = {";knitting"};
  
  Knitting(PVector gpos, int knittingwidth, int knittingheight){
   
    this.gpos = gpos.copy();
    
    this.skirt = new PVector[9];
    this.knittingwidth = knittingwidth;
    this.knittingheight = knittingheight;
    
    
    
   
    //this.first = new PVector(pos.x + 5, pos.y + 5 );
    //this.last = this.first.copy();
    //this.rows = new Row[this.maxrows];
   
    
    //this.rows[0] = new  Row(this.last, kwidth, kheight/this.maxrows, this.maxstitches);
    //this.rows[0].createSetup();
    //this.last = this.rows[0].last;
   
     
    //for(int i = 1; i < this.rows.length-1; i++){
    //  this.rows[i] = new  Row(this.last, kwidth, kheight/this.maxrows, this.maxstitches);
    //  this.last = this.rows[i].last;
     
    //  if(i % 2 == 0){
    //     println("ga naar rechts");
    //    this.rows[i].createLRrecht();
    //     this.last = this.rows[i].last;
    //  }
    //  else{
    //    println("ga naar links");
    //    this.rows[i].createRLrecht();
    //    this.last = this.rows[i].last;
    //  }
      
    //}
    //afhechten
   //println("afhechten");
    //this.rows[this.rows.length-1] = new  Row(this.last, kwidth, kheight/this.maxrows, this.maxstitches);
    //this.rows[this.rows.length-1].createFinish();
    
    
  }
 void createSkirt(int w, int h, int marge){
    this.skirt[0] = grid.get(0,0).add(this.gpos);
    this.skirt[1] = grid.get(0,h).add(this.gpos);
    this.skirt[2] = grid.get(w,h).add(this.gpos);
    this.skirt[3] = grid.get(w,0).add(this.gpos);
   
    this.skirt[4] = grid.get(1,1).add(this.gpos);
    this.skirt[5] = grid.get(1,h-marge).add(this.gpos);
    this.skirt[6] = grid.get(w-marge, h-marge).add(this.gpos);
    this.skirt[7] = grid.get(w-marge, marge).add(this.gpos);
    this.skirt[8] = grid.get(2, 2).add(this.gpos);
    grid.last = this.skirt[7].copy().add(this.gpos);
   
    
 }
 //String[] gcode(float layerheight, float thickness ){
 //    String[] knitting = {};
 //    knitting = append(knitting, ";row");
 //    for(int i = 0; i < this.rows.length; i++){
 //     knitting = concat(knitting, this.rows[i].gcode(layerheight,thickness));
 //    }
 //   return knitting;
 //  }
        
 
  //String[] gcodeSkirt(float layerheight, float thickness, float speed){
  //  String[] skirt = {};
  //  if(gcode.speed != speed){
  //    gcode.speed = speed;
  //    skirt = append(skirt, "G1 F" + gcode.speed);
  //  }
  //  if(gcode.layerheight != layerheight){
  //    gcode.layerheight = layerheight;
  //    skirt = append(skirt, "G1 Z" +  gcode.layerheight);
  //    skirt = append(skirt, "G1 X"+  this.pos[1].x + " Y"+ this.pos[1].y );
      
  //  }
    
  //  for(int i = 2; i < this.pos.length ; i++){
  //    PVector v = PVector.sub(this.pos[i], this.pos[i-1]);
  //    gcode.extrude += v.mag() * layerheight * thickness;
  //    skirt = append(skirt, "G1 X"+ this.pos[i].x + " Y"+ this.pos[i].y + " E" + gcode.extrude);
        
  // }
  //  return skirt;
  //}
  //String[] gcodeToStart(int layer, float layerheight, float thickness, float speed){
  //  String[] tostart = {};
  //  if(gcode.speed != speed){
  //    gcode.speed = speed;
  //    tostart = append(tostart, "G1 F" + gcode.speed);
  //  }
  //  //tostart = append(tostart, "G1 Z"+ ((layer*layerheight)+2));
  //  PVector v = PVector.sub(this.pos[9], this.first);
  //  gcode.extrude += v.mag() * layerheight * thickness;
  //  tostart = append(tostart, "G1 Z"+ (layer*layerheight) +" X"+  this.first.x + " Y"+ this.first.y );
    
  //  return tostart;
  //}
  
 
  String[] gcodeSkirt(float layerheight, float thickness, float speed){
    String[] skirtcommands = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      skirtcommands = append(skirtcommands, "G1 F" + gcode.speed);
    }
    if(gcode.layerheight != layerheight){
      gcode.layerheight = layerheight;
      skirtcommands = append(skirtcommands, "G1 Z" +  gcode.layerheight);
      skirtcommands = append(skirtcommands, "G1 X"+  this.skirt[0].x + " Y"+ this.skirt[0].y );
      
    }
    
    for(int i = 1; i < this.skirt.length ; i++){
      PVector v = PVector.sub(this.skirt[i], this.skirt[i-1]);
      gcode.extrude += v.mag() * layerheight * thickness;
      skirtcommands = append(skirtcommands, "G1 X"+ this.skirt[i].x + " Y"+ this.skirt[i].y + " E" + gcode.extrude);
        
   }
    return skirtcommands;
  }
  void drawSkirt(){
    
    strokeWeight(3);
    stroke(0,0,200);
    beginShape();
       for(int s = 0; s < this.skirt.length; s++){
        vertex(this.skirt[s].x, this.skirt[s].y);
      }
    endShape();
  }
}  