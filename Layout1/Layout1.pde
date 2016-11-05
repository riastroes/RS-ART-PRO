/* interactive ellipses with a mouse*/
App app;
void setup(){
  size(1200,220);
  app = new App();
  
}
void draw(){
  background(255);
  app.draw();
}