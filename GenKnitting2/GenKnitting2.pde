

/*
* Generate Knitting
* Project: Generate Knitting
* Ria Stroes
* 2017
*/
import processing.dxf.*;

Grid grid;
Knitting knitting;
float extrude; 
Gcode gcode;

void setup(){
  size(220,220);
  //(PVector pos, float maxwidth, float maxheight, int wmax, int hmax)
  grid = new Grid(new PVector(10,10),width-20, height-20, 22,22);
  //row = new Row(new PVector(10,height - 10), 22);
  //PVector pos;
  //for(int i = 0; i < 22; i++){
  //  if(i == 0){
  //    pos = new PVector(10,height-100);
  //  }
  //  else{
  //    pos = row[i-1].last.copy();
  //  }
  //  row[i] = new Stitch(pos, grid.cellwidth/4);
  //}
  knitting = new Knitting(new PVector(100,100), 50,50);
  stroke(0);
  strokeWeight(1);
  noFill();
  extrude = 0;
  
  skirt(0.2, 0.4, 1200);
  row(0, 0.2, 0.4);
  
  gcode.endCode(false);        //if is last then TRUE
  gcode.save("genknitting01");
  
}

void skirt(float layerheight, float thickness, float speed){
  gcode = new Gcode(layerheight, thickness);
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(layerheight, thickness, speed, extrude));
}
void row(int layer ,float layerheight, float thickness){
  gcode.addCode(knitting.rows[0].gcode(layerheight, thickness, extrude));
}