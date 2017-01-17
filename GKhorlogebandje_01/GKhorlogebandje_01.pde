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
  
  grid = new Grid(new PVector(0,0),1000,1000,200,250);  //6px X 6px
  //grid.disorderCol(23, new PVector(0,10));
  //grid.disorderCols(0,200, 0.01);
  grid.disorderByVector(new PVector(width/2, height/2), -50);
  
  k=0;
  PVector first = new PVector(72 -(4*13),113);
  knitting = new Knitting(first,7,40);
 knitting.createStitches(0, "0111111111111111111111111111111111111112");
  knitting.createStitches(1,"5444444444444444444444444444444444444443");
 knitting.createStitches(2, "6777777777777777777777777777777777777778");
 knitting.createStitches(3, "5444444444444444444444444444444444444443");
 knitting.createStitches(4, "6777777777777777777777777777777777777778");
 knitting.createStitches(5, "5444444444444444444444444444444444444443");
 knitting.createStitches(6, "9aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab");       //afhechten op even regels
  //knitting.createStitches(6,14, "eddddddddddddc");  //afhechten op oneven regels
  
  

  //BEWAREN
  knitting.first = new PVector(72 -(4*13),107);
  knitting.createSkirt(10,40,5);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 800, 0.20));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("horlogebandje-01");
  
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