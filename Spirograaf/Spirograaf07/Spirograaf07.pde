/*
Compano BV
Date:  1012-2016
Project: Spirograaf
*/

BezierCircle spiro;
void setup(){
  size(1000,1000);
  
  strokeWeight(1);
  spiro = new BezierCircle(200);
}
void draw(){
  background(255);
  for(int i = 0; i < 360; i += 2){
     stroke(0);
     noFill();
     spiro.create();
     spiro.draw();
     //spiro.showControls();
     
     
  }
  //spiro.showBeginEnd();
  ellipse(40, height/2, 40,40);
  ellipse(width - 40, height/2, 40,40);
  noLoop();
}