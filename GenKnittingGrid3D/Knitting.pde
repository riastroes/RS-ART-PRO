class Knitting{
  
  
  PVector gpos;
  
  PVector[] skirt;
  PVector[] knitting;
  int k;
  PVector first;
  PVector last;
  Row[] rows;
  int maxrows;
  int maxstitches;
  int maxstichtesinrow;
  String[] commands = {";knitting"};
  
  Knitting(PVector first, int maxrows, int maxstitchesinrow){
   
    this.first = first.copy();
    grid.last = new PVector(0,0,0).add(this.first);
    this.k = 0;
    this.skirt = new PVector[9];
    
    this.maxrows =maxrows ;  // < int(height/(7 * grid.cellheight)){
    this.maxstichtesinrow = maxstitchesinrow; //< int( width/4 * grid.cellwidth);
    this.rows = new Row[this.maxrows];
    this.maxstitches = maxstitchesinrow;
    this.knitting = new PVector[this.maxrows * this.maxstitches * 14];
    
  }
 void createRows(){
    this.maxstitches = 0;
   
    this.rows[0] = new Row(grid.last, this.maxstichtesinrow);
    //this.maxstitches += this.rows[0].maxstitches;
    this.rows[0].createSetup();
    for(int r = 1; r < this.maxrows-1; r++){
      this.rows[r] = new Row(grid.last,this.maxstichtesinrow);
      this.maxstitches += this.rows[r].maxstitches;
      
      if(r % 2 == 1){
        this.rows[r].createRLrecht(); // van rechts naar links
      }
      else{
        this.rows[r].createLRrecht(); // van links naar rechts
      }
    }
    this.rows[this.maxrows-1] = new Row(grid.last,this.maxstichtesinrow);
    this.maxstitches += this.rows[this.maxrows-1].maxstitches;
    if((this.maxrows-1) % 2 == 1){
      this.rows[this.maxrows-1].createRLFinish(); // van rechts naar links
    }
    else{
      this.rows[this.maxrows-1].createLRFinish(); // van links naar rechts
    }
    
    this.knitting = new PVector[this.maxrows * this.maxstitches * 14];
    int k = 0;
    for(int r = 0; r < this.maxrows; r++){
      for(int s = 0; s < this.rows[r].maxstitches; s++){
        for(int i = 0; i < 14; i++){
        this.knitting[k] = this.rows[r].stitches[s].p[i];
        if(k > 0 && this.knitting[k] != this.knitting[k-1]){
            k++;
          }
        else if(k == 0){
          k++;
        }
        }
      }
    }
    
    //println("rows:     " + this.maxrows);
    //println("stitches: " + this.maxstitches);
    //println("knitting: " + this.knitting.length);
    //println("grid.last:" + grid.last);
  
    
    
 }
 void createStitches(int row, int maxstitches, String type){
    this.maxstitches = maxstitches;
    this.rows[row] = new Row(grid.last, this.maxstitches);
    this.rows[row].createStitches(type);
   
    
      PVector next;
      for(int r = 0; r < this.rows[row].maxstitches; r++){
        for(int i = 0; i < 14; i++){
          if((row == this.maxrows-1 && r > 0)){
            next = this.rows[row].stitches[r].p[i];
            next.y = -1 * next.y;
          }
          else{
          next = this.rows[row].stitches[r].p[i];
          }
          if((row % 2) == 1 ){
            next.x = -1* next.x;
            
          }
          
          this.knitting[this.k] = next;
          this.knitting[this.k].add(grid.last);
          this.k++;
          
        }
        grid.last = this.knitting[this.k-1].copy();
        //println(grid.last);
      
    }
    //println("rows:     " + this.maxrows);
    //println("stitches: " + this.maxstitches);
    //println("knitting: " + this.knitting.length);
    //println("grid.last:" + grid.last);
 }
 
 void createSkirt(int rows, int stitches, int marge){
   int w = int(stitches * 4 * grid.cellwidth);
   int h = int((rows - 1) * 4 * grid.cellheight) + int(grid.cellheight);
   
    this.skirt[0] = this.first.copy().add(-marge-2,-marge-2);
    this.skirt[1] = this.first.copy().add(-marge-1,h + (marge) + 3);
    this.skirt[2] = this.first.copy().add(w + (marge)+ 3,h + (marge) + 3);
    this.skirt[3] = this.first.copy().add(w + (marge)+ 3,-marge -1);
    
    this.skirt[4] = this.first.copy().add(-marge-1,-marge-1);
    this.skirt[5] = this.first.copy().add(-marge-1,h + (marge) + 2);
    this.skirt[6] = this.first.copy().add(w + (marge) + 2, h + (marge) + 2);
    this.skirt[7] = this.first.copy().add(w + (marge) + 2, -marge);
    this.skirt[8] = this.first.copy().add(-marge, -marge);
   
    grid.last = this.skirt[8].copy();
//    println("last:" + grid.last);
    
 }
 
  String[] gcodeLayer(int layer, float layerheight, float thickness, float speed){
    String[] commands = {";start knitting"};
    if(gcode.speed != speed){
      gcode.speed = speed;
      commands = append(commands, "G1 F" + gcode.speed);
    }
    
    PVector v;
    for(int k =1; k < this.knitting.length; k++){
      
      v = PVector.sub(this.knitting[k-1], this.knitting[k]);
      if(this.knitting[k].z == 1){
         gcode.extrude += v.mag() * layerheight * (thickness+0.4) ;
         println("averechts:"+ this.knitting[k]);
      }
      else{
         gcode.extrude += v.mag() * layerheight * thickness;
      }
      commands = append(commands, "G1 Z"+ (layer*layerheight) +" X"+  this.knitting[k].x + " Y"+ this.knitting[k].y + " E" + gcode.extrude);
    }
    return commands;
  }
  
  String[] gcodeToStart(int layer, float layerheight, float thickness, float speed){
    String[] tostart = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      tostart = append(tostart, "G1 F" + gcode.speed);
    }
    PVector v = PVector.sub(grid.last, this.knitting[0]);
    gcode.extrude += v.mag() * layerheight * thickness;
    tostart = append(tostart, "G1 Z"+ (layer*layerheight) +" X"+  this.knitting[0].x + " Y"+ this.knitting[0].y );
    
    return tostart;
  }
  
 
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
    
    strokeWeight(0.2);
    stroke(0,0,200);
    noFill();
    beginShape();
       for(int s = 0; s < this.skirt.length; s++){
        vertex(this.skirt[s].x, this.skirt[s].y);
      }
    endShape();
  }
  void drawKnitting(int k){
    if(k < this.knitting.length){
    strokeWeight(1);
    stroke(0);
    
    beginShape();
       for(int i = 0; i <k; i++){
        vertex(this.knitting[i].x, this.knitting[i].y);
       
      }
    endShape();
    }
    
  }
}  