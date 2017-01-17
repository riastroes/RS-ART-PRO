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
  grid = new Grid(new PVector(0,0),1000,1000,200,200);  //scale 5
 
  grid.show();
  
  background(255);
  knitting = new GenKnitting(new PVector(30,30,0),20);
  knitting.createRow(0, "aaaaaaaaaaaaaaaaaaab"); //<>//
  knitting.createRow(1, "dccccccccccccccccccc");
  knitting.createRow(2, "effffffffffffffffffg");
  knitting.createRow(3, "dccccccccccccccccccc");
  knitting.createRow(4, "effffffffffffffffffg");
  knitting.createRow(5, "dccccccccccccccccccc");
  knitting.createRow(6, "effffffffffffffffffg");
  knitting.createRow(7, "dccccccccccccccccccc");
  knitting.createRow(8, "effffffffffffffffffg");
  knitting.createRow(9, "dccccccccccccccccccc");
  knitting.createRow(10, "effffffffffffffffffg");
  knitting.createRow(11, "dccccccccccccccccccc");
  knitting.createRow(12, "effffffffffffffffffg");
  knitting.createRow(13, "dccccccccccccccccccc");
  knitting.createRow(14, "effffffffffffffffffg");
  knitting.createRow(15, "dccccccccccccccccccc");
  knitting.createRow(16, "effffffffffffffffffg");
  knitting.createRow(17, "dccccccccccccccccccc");
  knitting.createRow(18, "effffffffffffffffffg");
  knitting.createRow(19, "mllllllllllllllllllk");
  knitting.generateKnitting();
  knitting.drawKnitting();
  
  //BEWAREN
  knitting.first = new PVector(30,30);
  knitting.createSkirt(20,20,3);
  
  gcode = new Gcode();
  gcode.startCode();
  gcode.addCode(knitting.gcodeSkirt(0.25, 0.4, 1600, 0.20));
  gcode.addCode(knitting.gcodeToStart(1, 0.25, 0.4, 1200, 0.20));
  gcode.addCode(knitting.gcodeLayer(1, 0.35, 0.4, 800, 0.20));
  gcode.endCode(true);        //if is last then TRUE
  gcode.save("recht20x20-01");
  
  grid.show();
  stroke(255,0,0);
  strokeWeight(1);
  //knitting.drawSkirt();
  
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
  drawModelStitch( new PVector(1,2),"1");
  drawModelStitch( new PVector(6,2),"1");
  drawModelStitch( new PVector(11,2),"1");
  drawModelStitch( new PVector(16,2),"2");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,150);
  drawModelStitch( new PVector(5,8),"4");
  drawModelStitch( new PVector(10,8),"3");
  drawModelStitch( new PVector(15,8),"3");
  drawModelStitch( new PVector(20,8),"3");
  
  fill(255,0,0);
  textSize(14);
  text("van links naar rechts", 600,320);
  drawModelStitch( new PVector(1,17),"5");
  drawModelStitch( new PVector(6,17),"5");
  drawModelStitch( new PVector(11,17),"5");
  drawModelStitch( new PVector(16,17),"6");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,150);
  drawModelStitch( new PVector(5,26),"4");
  drawModelStitch( new PVector(10,26),"3");
  drawModelStitch( new PVector(15,26),"3");
  drawModelStitch( new PVector(20,26),"3");
  
  fill(255,0,0);
  textSize(14);
  text("van rechts naar links", 600,510);
  drawModelStitch( new PVector(1,35),"7");
  drawModelStitch( new PVector(6,39),"8");
  drawModelStitch( new PVector(11,39),"8");
  drawModelStitch( new PVector(16,39),"9");
  
  
  fill(255,0,0);
  textSize(14);
  text("van links naar rechts", 600,660);
  
  save("Model Stitches.jpg");
}