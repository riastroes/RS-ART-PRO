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
  size(220,220);
  
  grid = new Grid(new PVector(10,10),width-20, height-20, 22,22);
  
  knitting = new Knitting(new PVector(80,50), 50,50, 12,8);
  stroke(0);
  strokeWeight(1);
  noFill();
  
  gcode = new Gcode();
  gcode.startCode();
  skirt(0.25, 0.4, 1200);
  
  layer(1, 0.3, 0.4, 1200);
  
  //layer(2, 0.25, 0.4, 1200);
  
  
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("genknitting01");
  
}

void skirt(float layerheight, float thickness, float speed){
  gcode.addCode(knitting.gcodeSkirt(layerheight,thickness,speed));
  
}
void layer(int layer ,float layerheight, float thickness, float speed){
  gcode.addCode(knitting.gcodeToStart(layer, layerheight, thickness, speed));
  
  for(int i = 0; i < knitting.rows.length; i++){
    
    gcode.addCode(knitting.rows[i].gcode(i,layerheight, thickness));
  }
}