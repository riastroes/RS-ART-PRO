

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
  
  knitting = new Knitting(new PVector(0,0), 190,180);
  stroke(0);
  strokeWeight(1);
  noFill();
  
  gcode = new Gcode(0.2, 0.4);
  gcode.startCode();
  skirt(0.2,0.4,1200);
  row(0, 0.2, 0.4);
  
  println(gcode.extrude);
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("genknitting19x18");
  
}

void skirt(float layerheight, float thickness, float speed){
  gcode.addCode(knitting.gcodeSkirt(layerheight,thickness,speed));
  println(gcode.extrude);
}
void row(int layer ,float layerheight, float thickness){
  for(int i = 0; i < knitting.rows.length; i++){
    gcode.addCode(knitting.rows[i].gcode(layerheight, thickness));
  }
}