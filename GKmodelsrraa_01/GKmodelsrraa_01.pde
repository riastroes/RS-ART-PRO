/*
* Generate Knitting
* Project: Generate Knitting
* Ria Stroes
* 2017
*/
import processing.dxf.*;

Grid grid;
GenKnitting knitting;
Gcode gcode;
int k;
PVector first;
String type;

void setup(){
  size(1000,1000);
  background(255);
  grid = new Grid(new PVector(0,0),1000,1000,70,70);  //scale 5
 
  grid.show();
  
  background(255);
  knitting = new GenKnitting(new PVector(3,1,0),8);
  knitting.createRow(0, "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrs"); //<>//
  knitting.createRow(1, "qppppppppppppppppppppppppppppppp");
  knitting.createRow(2, "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnno");
  knitting.createRow(3, "qppppppppppppppppppppppppppppppp");
  knitting.createRow(4, "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnno");
  knitting.createRow(5, "qppppppppppppppppppppppppppppppp");
  knitting.createRow(6, "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnno");
  
  knitting.createRow(7, "vttttttttttttttttttttttttttttttu");
 // knitting.createRow(2, "effg");
  //knitting.createRow(3, "dccc");
 // knitting.createRow(4, "hiij");
 
  knitting.generateKnitting();
  knitting.drawKnitting();
  
  //BEWAREN
  knitting.first = new PVector(1,1);
  knitting.createSkirt(10,0,0);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 800, 0.20));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("GKarmband-02");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  knitting.drawSkirt();
  
  k = 0;
}
void draw(){
  if(keyPressed){
    background(255);
    knitting.animateKnitting();
  }
  //k++;
  if(mousePressed){
    background(255);
    drawModels();
    noLoop();
  }
}
void drawModelStitch(PVector pos, String type){
  knitting = new GenKnitting(pos,1);
  knitting.createRow(0,type);
  knitting.generateKnitting();
  knitting.drawKnitting();
  pos = grid.get(int(pos.x),int(pos.y));
  strokeWeight(3);
  stroke(255,0,0);
  point(pos.x, pos.y);
  strokeWeight(1);
  textSize(24);
  fill(255,0,0);
  text(type, pos.x, pos.y -10);
}
void drawModels(){
  fill(255,0,0);
  textSize(14);
  text("van links naar rechts", 600,30);
  drawModelStitch( new PVector(1,2),"a");
  drawModelStitch( new PVector(6,2),"a");
  drawModelStitch( new PVector(11,2),"a");
  drawModelStitch( new PVector(16,2),"b");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,150);
  drawModelStitch( new PVector(5,8),"d");
  drawModelStitch( new PVector(10,8),"c");
  drawModelStitch( new PVector(15,8),"c");
  drawModelStitch( new PVector(20,8),"c");
  
  fill(255,0,0);
  textSize(14);
  text("van links naar rechts", 600,320);
  drawModelStitch( new PVector(1,17),"e");
  drawModelStitch( new PVector(6,17),"f");
  drawModelStitch( new PVector(11,17),"f");
  drawModelStitch( new PVector(16,17),"g");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,150);
  drawModelStitch( new PVector(5,26),"d");
  drawModelStitch( new PVector(10,26),"c");
  drawModelStitch( new PVector(15,26),"c");
  drawModelStitch( new PVector(20,26),"c");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,510);
  drawModelStitch( new PVector(1,35),"h");
  drawModelStitch( new PVector(6,39),"i");
  drawModelStitch( new PVector(11,39),"i");
  drawModelStitch( new PVector(16,39),"j");
  
  
  
  
  fill(255,0,0);
  textSize(14);
  text("van links naar rechts", 600,660);
  
  save("Model Stitches.jpg");
}