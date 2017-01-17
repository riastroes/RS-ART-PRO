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
  grid.projectOnCircle(new PVector(width/2, height/2), height/3*2);
  grid.disorderByVector(new PVector(width/2, height/2),-20);
  
  k=0;
 // PVector first = new PVector(72 -(4*13),113);
 PVector first = new PVector(15,113);
  knitting = new Knitting(first,20,43);
 knitting.createStitches(0, "0111111111111111111111111111111111111111111111112");
 knitting.createStitches(1,"5444444444444444444444444444444444444444444444443");
 knitting.createStitches(2, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(3, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(4, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(5, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(6, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(7,"5444444444444444444444444444444444444444444444443");
 knitting.createStitches(8, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(9, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(10, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(11, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(12, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(13,"5444444444444444444444444444444444444444444444443");
 knitting.createStitches(14, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(15, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(16, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(17, "5444444444444444444444444444444444444444444444443");
 knitting.createStitches(18, "6777777777777777777777777777777777777777777777778");
 knitting.createStitches(19, "edddddddddddddddddddddddddddddddddddddddddddddddc");       //afhechten op even regels
  //knitting.createStitches(6,14, "eddddddddddddc");  //afhechten op oneven regels
  
 grid = new Grid(new PVector(0,0),1000,1000,100,250);  

  //BEWAREN
  knitting.first = new PVector(65,100);
 knitting.createSkirt(10,43,3);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 800, 0.20));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("GKrond-02");
  
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