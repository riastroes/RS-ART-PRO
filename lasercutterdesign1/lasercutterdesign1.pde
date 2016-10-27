import processing.svg.*;

App app;
void setup(){
  size(1200,200);
  app = new App();
  background(0);
}
void draw(){
  //
  app.draw();
  println(frameCount);
}
void mousePressed(){
  background(0);
  save("drawing.svg");
  
  }