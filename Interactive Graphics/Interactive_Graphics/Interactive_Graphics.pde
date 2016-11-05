App app;

void setup(){
  size(600,600);
  app = new App("Interactive_Graphics");
  
  
}
void draw(){
    background(app.bg,50);
    if(frameCount < 100){
      textSize(32);
      text("click on the screen", 50,50);
    }
    app.drawing.update();
    //draw this drawing on top of
    app.draw();

}
void mousePressed(){
  if(mouseButton ==  RIGHT){
    app.reset();
  }
  else{
    PVector start = new PVector(mouseX, mouseY);
    app.drawing.add(app.next%2, start);
    app.next++;
  }
}
void keyPressed() {
  if (key == 's' || key == 'S' ) {
    app.saveScreen();
  }
}