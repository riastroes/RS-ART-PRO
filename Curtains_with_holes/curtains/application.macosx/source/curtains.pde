App app;
void setup(){
  size(800,800);
  app = new App();
  
}
void draw(){
  background(255);
  app.draw();
  println(frameCount);
}