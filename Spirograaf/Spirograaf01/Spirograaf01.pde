/*
Compano BV
Date:  1012-2016
Project: Spirograaf
*/

BezierCircle spiro;
void setup(){
  size(1000,1000);
  stroke(0);
  noFill();
  strokeWeight(1);
  spiro = new BezierCircle(300);
}
void draw(){
  background(255);
  for(int i = 0; i < 360; i += 2){
     spiro.create();
     spiro.draw();
  }
  ellipse(50, height/2, 40,40);
  ellipse(width - 50, height/2, 40,40);
  ellipse(width/2, height/2, 980,980);
  noLoop();
}