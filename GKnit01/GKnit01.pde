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
  
  grid = new Grid(new PVector(0,0),1000,1000,50,50);  //6px X 6px
  //grid.disorderCol(23, new PVector(0,10));
  //grid.disorderCols(0,200, 0.01);
  //grid.projectOnHalfCircle(new PVector(width/2, height/2), 700);
  //grid.disorderByVector(new PVector(width/2, height/2),-20);
  
  
 // PVector first = new PVector(72 -(4*13),113);
 PVector first = new PVector(5,5);
 knitting = new Knitting(first,9);
 knitting.createStitches(0, "rrrrrrrs");
 knitting.createStitches(1, "klllllll");
 knitting.createStitches(2, "rrrrrrrs");
 knitting.createStitches(3, "klllllll");
 knitting.createStitches(4, "rrrrrrrs");
 knitting.createStitches(5, "klllllll");
 knitting.createStitches(6, "rrrrrrrs");
 knitting.createStitches(7, "klllllll");
 knitting.createStitches(8, "rrrrrrrs");
  


  //BEWAREN
  //knitting.first = new PVector(5,5);
  //knitting.createSkirt(8,9,3);
  
  gcode = new Gcode();
  gcode.startCode();
  //gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 800, 0.20));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("rechtinv");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  //knitting.drawSkirt();
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