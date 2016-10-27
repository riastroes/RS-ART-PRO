/* GridWalk */
/* Created by Ria Stroes */
/* Date: 24-10-2016 */

App app;

void setup(){
  size(2000, 2000);
  app = new App("GridWalk");
  background(255);
  
  rectMode(CENTER);
  
  
}
void draw(){
  //fill(255,1);
  //noStroke();
  //rect(width/2, height/2, width,height);
  app.grid.show();
  for(int i = 0; i < app.walkers.size(); i++){
    app.walkers.get(i).next(app.grid);
    if(i %2 == 0){
      app.walkers.get(i).show2();
    }
    else{
       app.walkers.get(i).show1();
    }
  }
  if((frameCount % 100) ==0){
    app.grid.disorderSin(10);
  }
  if(mousePressed){
    saveFrame("gridWalk-######.png");
  }
  println(frameCount);
}