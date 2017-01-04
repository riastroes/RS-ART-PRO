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

void setup(){
  size(200,200);
  
  grid = new Grid(new PVector(0,0),200,200,100,100);  //6px X 6px
 
  
  knitting = new Knitting(grid.get(10,10), 40,40);
  knitting.createSkirt(40,40,2);
 
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1200));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("genknittinggrid01");
  //skirt(0.25, 0.4, 1200);
  
  //layer(1, 0.3, 0.4, 1200);
  
  
  //gcode.endCode(true);        //if is last then TRUE
  //gcode.save("genknittinggrid01");
  
}

//void skirt(float layerheight, float thickness, float speed){
//  gcode.addCode(knitting.gcodeSkirt(layerheight,thickness,speed));
  
//}
//void layer(int layer ,float layerheight, float thickness, float speed){
//  gcode.addCode(knitting.gcodeToStart(layer, layerheight, thickness, speed));
//  gcode.addCode(knitting.gcode(layerheight, thickness));
  
  
//}
void draw(){
  grid.show();
  grid.showPoint(10,10);
  knitting.drawSkirt();
  noLoop();
}