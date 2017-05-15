/*
* Generate Knitting
* Project: Generate Knitting
* Ria Stroes
* 2017
*/
import processing.dxf.*;

Grid grid;
Knitting knitting;
Pattern pattern;
Gcode gcode;
int k;

void setup(){
  size(1000,1000);
  
  grid = new Grid(new PVector(0,0),1000,1000,50,50);  //6px X 6px
  //grid.disorderCol(23, new PVector(0,10));
  //grid.disorderCols(0,200, 0.01);
  //grid.projectOnHalfCircle(new PVector(width/2, height/2), 700);
  //grid.disorderByVector(new PVector(width/2, height/2),-20);
  
  
 // PVector first = new PVector(72 -(4*13),113);
 PVector first = new PVector(10,10);
 knitting = new Knitting(first,8);
 //pattern = new Pattern(knitting, "Knit", 6, 7);
 
 pattern = new Pattern(knitting, "Purl", 5, 7);
 

  //BEWAREN
 knitting.first = new PVector(10,10);
 knitting.createSkirt(7,7,3);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  //gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 1.4, 0.1, 800, 0.20));//layer, layerheight,thickness, speed, scale
  gcode.endCode();       
  gcode.save("patternA-01");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  knitting.drawSkirt();
}

void draw(){
  
  
  knitting.drawKnitting();
  
}