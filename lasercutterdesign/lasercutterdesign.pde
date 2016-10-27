App app;
void setup(){
  size(1200,200);
  app = new App();
  background(255);
}
void draw(){
  //
  app.draw();
  println(frameCount);
}
void mousePressed(){
  background(255);
  int i = parseInt(random(4));
  if(app.chain.get(i).c == color(255)){
    app.chain.get(i).c = color(255,0,0);
  }
  else{
    app.chain.get(i).c = color(255);
  }
  }