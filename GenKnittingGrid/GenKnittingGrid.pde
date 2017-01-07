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
  size(800,800);
  
  grid = new Grid(new PVector(0,0),800,800,100,100);  //6px X 6px
  
  k=0;
  knitting = new Knitting(grid.get(20,20), 40,14,8);
  knitting.createStitches(0,14, "01111111111112");
  knitting.createStitches(1,14, "34444444444445");
  knitting.createStitches(2,14, "67777777777778");
  knitting.createStitches(3,14, "34444444444445");
  knitting.createStitches(4,14, "67777777777778");
  knitting.createStitches(5,14, "34444444444445");
  knitting.createStitches(6,14, "67777777777778");
  knitting.createStitches(7,14, "cdddddddddddde");
 // knitting.createStitches(1,1, "7");
 
  
                  //BEWAREN
                  //knitting.createSkirt(40,14,20);
                  //knitting.createRows();
                 
                  //gcode = new Gcode();
                  //gcode.startCode();
                  //gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1200));
                  //gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200));
                  //gcode.addCode(knitting.gcodeLayer(1, 0.25, 0.4, 1200));
                  //gcode.endCode(true);        //if is last then TRUE
                  //gcode.save("genknittinggrid01");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  point(grid.get(20,20).x, grid.get(20,20).y);
  println(grid.get(20,20));
                //BEWAREN
                //knitting.drawSkirt();
  
}

void draw(){
  
  knitting.drawKnitting(k);
  k++;
  
}