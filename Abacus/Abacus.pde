/*
* Project: Abacus
* Ria Stroes
* januari 2017
* Compano BV
*/
color[] pal;
Circle[] circles;
float binwidth, binheight;
float buiwidth, buiheight;
PVector offset;

void setup(){
  size(600,350);
  pal = new color[2];
  pal[0] = color(0);
  pal[1] = color(255);
  rectMode(CENTER);
  
  stroke(pal[0]);
  background(pal[1]);
  
  buiwidth = width -20;
  buiheight = height -20;
  binwidth = width -50;
  binheight = height -50;
  offset = new PVector(50/2, 50/2);
  
}
void draw(){
  drawFrame(binwidth, binheight, buiwidth, buiheight);
  drawCircles(2, 7, binwidth, binheight);
  //drawTextures();
}

void drawFrame(float binwidth,float binheight, float buiwidth, float buiheight){
  fill(pal[0]);
  stroke(pal[1]);
  strokeWeight(1);
  rect(width/2,height/2, buiwidth, buiheight);
  fill(pal[1]);
  stroke(pal[0]);
  strokeWeight(1);
  rect(width/2,height/2, binwidth, binheight);
}
void drawCircles(int prows, int pcircles, float bwidth, float bheight){
  circles = new Circle[prows*pcircles];
  for(int r = 0; r < prows; r++){
    for(int c = 0; c < pcircles; c++){
      float x =  offset.x +((bwidth/ pcircles)* c)+(bwidth/pcircles/2);
      float y =  offset.y + (bheight/(prows+1)) * (r+1);
      
      circles[(r * pcircles) + c] = new Circle(new PVector(x,y), width/pcircles);
      circles[(r * pcircles) + c].draw();  
    }
  }
}
void drawTextures(int circles){
  
}