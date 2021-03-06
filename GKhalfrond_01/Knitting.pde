class Knitting{
  
  
  PVector gpos;
  
  PVector[] skirt;
  PVector[] knitting;
  int k;
  int maxk;
  PVector first;
  PVector last;
  Row[] rows;
  int maxrows;
  //int maxstitches;
  int maxstitchesinrow;
  String[] commands = {";knitting"};
  
  Knitting(PVector first, int maxrows, int maxstitchesinrow){
   
    this.first = first.copy();
    grid.last = new PVector(0,0,0).add(this.first);
    this.k = 0;
    this.maxk = 0;
    this.skirt = new PVector[9];
    
    this.maxrows =maxrows ;  // < int(height/(7 * grid.cellheight)){
    this.maxstitchesinrow = maxstitchesinrow; //< int( width/4 * grid.cellwidth);
    this.rows = new Row[this.maxrows];
    this.knitting = new PVector[this.maxrows * this.maxstitchesinrow * 14];
    
  }

 void createStitches(int row, String type){
    PVector next = new PVector(0,0,0); //<>//
    String atype = "";
    if(row % 2 == 1){
      atype= new StringBuilder(type).reverse().toString();
      this.rows[row] = new Row(atype);
    }
    else{
      this.rows[row] = new Row(type);
    }
    this.maxk += this.rows[row].maxp;
    for(int r = 0; r < this.rows[row].maxstitches; r++){
      for(int i = 0; i < this.rows[row].stitches[r].max; i++){
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
       next.add(grid.last);
       
       this.knitting[this.k] = grid.get(int(next.x),int(next.y),int(next.z));
       this.k++; 
        
      }
      grid.last = next.copy();
      grid.last.z = 0;
    }
 }
 
 void createSkirt(int rows, int stitches, int marge){
   int w = stitches * 4;
   int h = (rows - 1) * 4;
   PVector next = this.first.copy();
   
   next.add(-marge,-marge);
   this.skirt[0] = grid.get(int(next.x), int(next.y)).add(-2,-2);
   this.skirt[4] = grid.get(int(next.x), int(next.y)).add(-1,-1);
   this.skirt[8] = grid.get(int(next.x), int(next.y));
   next.add(0,(2*marge) + h);
   this.skirt[1] = grid.get(int(next.x), int(next.y)).add(-2,2);
   this.skirt[5] = grid.get(int(next.x), int(next.y)).add(-1,1);
   next.add((2*marge) + w, 0);
   this.skirt[2] = grid.get(int(next.x), int(next.y)).add(2,2);
   this.skirt[6] = grid.get(int(next.x), int(next.y)).add(1,1);
   next.add(0, -((2*marge) + h));
   this.skirt[3] = grid.get(int(next.x), int(next.y)).add(2,-2);
   this.skirt[7] = grid.get(int(next.x), int(next.y)).add(1,-1);
   
   //grid.last = next.copy();
    
 }
 
  String[] gcodeLayer(int layer, float layerheight, float thickness, float speed, float scale){
    String[] commands = {";start knitting"};
    if(gcode.speed != speed){
      gcode.speed = speed;
      commands = append(commands, "G1 F" + gcode.speed);
    }
    
    PVector v;
    for(int k =1; k < this.maxk; k++){
      
     
      if(int(this.knitting[k].z) == 0){
        commands = append(commands, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting[k].x*scale) + " Y"+ (this.knitting[k].y*scale));
      }
      else{
        v = PVector.sub(this.knitting[k-1], this.knitting[k]);
        v.mult(scale);
        if(abs(v.x) < abs(v.y)){
           gcode.extrude += v.mag() * layerheight * (thickness) ;
        }
        else{
           gcode.extrude += v.mag() * layerheight * (thickness);
        }
        commands = append(commands, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting[k].x*scale) + " Y"+ (this.knitting[k].y*scale) + " E" + gcode.extrude);
      }
      
    }
    return commands;
  }
  
  String[] gcodeToStart(int layer, float layerheight, float thickness, float speed, float scale){
    String[] tostart = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      tostart = append(tostart, "G1 F" + gcode.speed);
    }
    PVector v = PVector.sub(grid.last, this.knitting[0]);
    v.mult(scale);
    gcode.extrude += v.mag() * layerheight * thickness;
    tostart = append(tostart, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting[0].x*scale) + " Y"+ (this.knitting[0].y*scale)  );
    
    return tostart;
  }
  
 
  String[] gcodeSkirt(float layerheight, float thickness, float speed, float scale){
    String[] skirtcommands = {};
    if(gcode.speed != speed){
      gcode.speed = speed;
      skirtcommands = append(skirtcommands, "G1 F" + gcode.speed);
    }
    if(gcode.layerheight != layerheight){
      gcode.layerheight = layerheight;
      skirtcommands = append(skirtcommands, "G1 Z" +  gcode.layerheight);
      skirtcommands = append(skirtcommands, "G1 X"+  (this.skirt[0].x*scale) + " Y"+ (this.skirt[0].y*scale) );
      
    }
    
    for(int i = 1; i < this.skirt.length ; i++){
      PVector v = PVector.sub(this.skirt[i], this.skirt[i-1]);
      v.mult(scale);
      gcode.extrude += v.mag() * layerheight * thickness;
      skirtcommands = append(skirtcommands, "G1 X"+ (this.skirt[i].x*scale)  + " Y"+ (this.skirt[i].y*scale)  + " E" + gcode.extrude);
        
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
  void animateKnitting(int k){
   
    if(k < this.maxk){
    
    for(int i = 1; i < k; i++){
        if(int(this.knitting[i].z) == 1){
          strokeWeight(1);
          stroke(0);
        }
        else if(int(this.knitting[i].z) == 3){
           strokeWeight(1);
           stroke(0);
        }
        else if(int(this.knitting[i].z) == 0){
           strokeWeight(1);
           stroke(0);
        }
        else{
           println("unknown z: "+ this.knitting[i].z);
         }
        line(this.knitting[i-1].x, this.knitting[i-1].y, this.knitting[i].x, this.knitting[i].y);
      }
    }
    
  }
  void drawKnitting(){
       
      PVector v;
      
      for(int i = 1; i <this.maxk; i++){
        v = PVector.sub(this.knitting[i-1], this.knitting[i]);
        if(abs(v.x) < abs(v.y)){
       // if(int(this.knitting[i].z) == 1){
          strokeWeight(1);
          stroke(255);
        }
        else{
          strokeWeight(1);
          stroke(255);
        }
        //else if(int(this.knitting[i].z) == 3){
        //   strokeWeight(1);
        //   stroke(255,0,0);
        //}
        //else if(int(this.knitting[i].z) == 0){
        //  strokeWeight(1);
        //  stroke(0);
        // }
         
        line(this.knitting[i-1].x, this.knitting[i-1].y, this.knitting[i].x, this.knitting[i].y);
      }
      
    
    
  }
  //void drawVertex(){
  //  stroke(0);
  //  strokeWeight(1);
  //  beginShape();
  //     for(int i = 0; i <this.knitting.length; i++){
  //      vertex(this.knitting[i].x, this.knitting[i].y);
       
  //    }
  //  endShape();
  //}

} 



 //void createRows(){
 //   this.maxstitches = 0;
   
 //   this.rows[0] = new Row(grid.last, this.maxstichtesinrow);
 //   //this.maxstitches += this.rows[0].maxstitches;
 //   this.rows[0].createSetup();
 //   for(int r = 1; r < this.maxrows-1; r++){
 //     this.rows[r] = new Row(grid.last,this.maxstichtesinrow);
 //     this.maxstitches += this.rows[r].maxstitches;
      
 //     if(r % 2 == 1){
 //       this.rows[r].createRLrecht(); // van rechts naar links
 //     }
 //     else{
 //       this.rows[r].createLRrecht(); // van links naar rechts
 //     }
 //   }
 //   this.rows[this.maxrows-1] = new Row(grid.last,this.maxstichtesinrow);
 //   this.maxstitches += this.rows[this.maxrows-1].maxstitches;
 //   if((this.maxrows-1) % 2 == 1){
 //     this.rows[this.maxrows-1].createRLFinish(); // van rechts naar links
 //   }
 //   else{
 //     this.rows[this.maxrows-1].createLRFinish(); // van links naar rechts
 //   }
    
 //   this.knitting = new PVector[this.maxrows * this.maxstitches * 14];
 //   int k = 0;
 //   for(int r = 0; r < this.maxrows; r++){
 //     for(int s = 0; s < this.rows[r].maxstitches; s++){
 //       for(int i = 0; i < 14; i++){
 //       this.knitting[k] = this.rows[r].stitches[s].p[i];
 //       if(k > 0 && this.knitting[k] != this.knitting[k-1]){
 //           k++;
 //         }
 //       else if(k == 0){
 //         k++;
 //       }
 //       }
 //     }
 //   }
    
 //   //println("rows:     " + this.maxrows);
 //   //println("stitches: " + this.maxstitches);
 //   //println("knitting: " + this.knitting.length);
 //   //println("grid.last:" + grid.last);
  
    
    
 //}