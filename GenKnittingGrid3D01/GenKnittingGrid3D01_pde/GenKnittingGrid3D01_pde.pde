/*
* Generate Knitting
* Project: Generate Knitting
* Ria Stroes
* 2017
*/
import processing.dxf.*;

Grid grid;
Knitting knitting;
Gcode gcode;
int k;

void setup(){
  size(1000,1000);
  
  grid = new Grid(new PVector(0,0),1000,1000,200,300);  //6px X 6px
  
  
  k=0;
  knitting = new Knitting(grid.get(20,20),7,14);
  knitting.createStitches(0,14, "01111111111112");
  knitting.createStitches(1,14, "34444444444445");
  knitting.createStitches(2,14, "67777777777778");
  knitting.createStitches(3,14, "34444444444445");
  knitting.createStitches(4,14, "67777777777778");
  knitting.createStitches(5,14, "34444444444445");
  knitting.createStitches(6,14, "9aaaaaaaaaaaab");
  //knitting.createStitches(6,14, "cdddddddddddde");
 
 

  //BEWAREN
  knitting.createSkirt(7,14,10);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1200, 0.25));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.25));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 1200, 0.25));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("genknittinggrid3D4");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  knitting.drawSkirt();
}

void draw(){
  
  
  k++;
  if(mousePressed){
    knitting.drawKnitting2();
  }
  else{
    knitting.drawKnitting(k);
  }
  
}