class GenKnitting{
  PVector gpos;
  PVector[] skirt;
  ArrayList<PVector> knitting;
  PVector first;
  PVector last;
  Row[] rows;
  int maxrows;
  int maxstitchesinrow;
  String[] commands = {";knitting"};
  
  GenKnitting(PVector first, int maxrows){
    this.knitting = new ArrayList<PVector>();
    this.first = first.copy();
    
    grid.last = new PVector(0,0,0).add(this.first);
    this.knitting.add(grid.last);
    
    
    this.skirt = new PVector[9];
    
    this.maxrows =maxrows ;  
    this.rows = new Row[this.maxrows];
    
  }

 void createRow(int row, String type){
    this.rows[row] = new Row(row, type); //<>//
 }
 void generateKnitting(){
   //
   for(int r =0 ; r < this.maxrows; r++){
     for(int i = 0; i < this.rows[r].row.size(); i++){
       PVector next = new PVector(0,0);
       next.x = this.rows[r].row.get(i).x;
       next.y = this.rows[r].row.get(i).y;
       
       int z = int( this.rows[r].row.get(i).z);
       PVector n = grid.get(int(next.x), int(next.y),int(z));
       if(z != 0){
       this.knitting.add(n);
       
       }
     }
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
    for(int k =0; k < this.knitting.size(); k++){
      
     
      if(int(this.knitting.get(k).z) == 0){
        commands = append(commands, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting.get(k).x*scale) + " Y"+ (this.knitting.get(k).y*scale));
      }
      else{
        v = PVector.sub(this.knitting.get(k-1), this.knitting.get(k));
        //if(abs(v.mag()) > 0){
          v.mult(scale);
          //if(abs(v.x) < abs(v.y)){
          if(this.knitting.get(k).z == 1){
             gcode.extrude += 0;//v.mag() * layerheight * (thickness) ;
          }
          else{
             gcode.extrude += v.mag() * layerheight * (thickness);
          }
          commands = append(commands, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting.get(k).x*scale) + " Y"+ (this.knitting.get(k).y*scale) + " E" + gcode.extrude);
        //}  
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
    PVector v = PVector.sub(grid.last, this.knitting.get(0));
    v.mult(scale);
    gcode.extrude += v.mag() * layerheight * thickness;
    tostart = append(tostart, "G1 Z"+ (layer*layerheight) +" X"+  (this.knitting.get(0).x*scale) + " Y"+ (this.knitting.get(0).y*scale)  );
    
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
  void animateKnitting(){
   
    
    
    for(int i = 1; i <  this.knitting.size(); i++){
        if(int(this.knitting.get(i).z) == 1){
          strokeWeight(1);
          stroke(0);
        }
        else if(int(this.knitting.get(i).z) == 3){
           strokeWeight(1);
           stroke(0);
        }
        else if(int(this.knitting.get(i).z) == 0){
           strokeWeight(1);
           stroke(0);
        }
        else{
           println("unknown z: "+ this.knitting.get(i).z);
         }
        line(this.knitting.get(i-1).x, this.knitting.get(i-1).y, this.knitting.get(i).x, this.knitting.get(i).y);
      }
    
    
  }
  void drawKnitting(){
    noFill();
    String zet="";
    for(int i = 1; i < this.knitting.size(); i++){
      int z = int(this.knitting.get(i).z);
      if(z == 0){
        strokeWeight(1);
        stroke(0);
        zet = zet + "0";
      }
      else if(z == 2){
        strokeWeight(5);
        stroke(0,0,255);
        zet = zet + "2";
      }
      else if(z == 1){
        strokeWeight(1);
        stroke(255,0,0);
        zet = zet + "1";
      }
      else if(z == 3){
        strokeWeight(10);
        stroke(0);
        zet = zet + "3";
     }
     else{
          println("FOUT");
        }
     
     line(this.knitting.get(i-1).x, this.knitting.get(i-1).y, this.knitting.get(i).x, this.knitting.get(i).y);
    }
    println(zet); 
    
    
  }
  

} 