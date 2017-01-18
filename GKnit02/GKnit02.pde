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
  
  grid = new Grid(new PVector(0,0),1000,1000,150,200);  //6px X 6px
  //grid.disorderCol(23, new PVector(0,10));
  //grid.disorderCols(0,200, 0.01);
  //grid.projectOnHalfCircle(new PVector(width/2, height/2), 700);
  //grid.disorderByVector(new PVector(width/2, height/2),-20);
  
  
 // PVector first = new PVector(72 -(4*13),113);
 PVector first = new PVector(50,50);
 knitting = new Knitting(first,12);
 knitting.createStitches(0, "bbbbbbbbbbc");
 knitting.createStitches(1, "onnnnnnnnnn");
 knitting.createStitches(2, "rrrrrrrrrrs");
 knitting.createStitches(3, "kllllllllll");
 knitting.createStitches(4, "bbbbbbbbbbc");
 knitting.createStitches(5, "onnnnnnnnnn");
 knitting.createStitches(6, "rrrrrrrrrrs");
 knitting.createStitches(7, "kllllllllll");
 knitting.createStitches(8, "bbbbbbbbbbc");
 knitting.createStitches(9, "onnnnnnnnnn");
 knitting.createStitches(10,"rrrrrrrrrrs");
 knitting.createStitches(11, "kllllllllll"); 


  //BEWAREN
  knitting.first = new PVector(50,50);
  knitting.createSkirt(12,12,3);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  //gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 1.4, 0.1, 800, 0.20));//layer, layerheight,thickness, speed, scale
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("patternRA-03");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  knitting.drawSkirt();
}

void draw(){
  
  
  //k++;
  //if(mousePressed){
  //  knitting.drawKnitting();
  //}
  //else{
  //  background(120);
  //knitting.animateKnitting(120);
 //}
// else{
   knitting.drawKnitting();
 //}
  
}