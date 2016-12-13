Blobber blobber;
float radius;
int corners;
void setup(){
  size(800,800);
  background(255);
  blobber = new Blobber();
  blobber.init(new PVector(width/2, height/2), 14, 200,250, 300, 350);
  corners = 3;
  //colorMode(HSB,100,100,100);
}

void draw(){
  
  if(frameCount < 400){
    stroke((frameCount%255),20);
    corners++;
  }
  else if(frameCount == 400){
    radius = 0;
    blobber.init(new PVector(width/2, height/2), 14, 200,250, 100, 150);
  }
  else if(corners>3){
    stroke(random(0,75),0,0,20);
    corners--;
  }
  else{noLoop();}
  noFill();
  strokeWeight(1);
    
  blobber.change(corners, radius);
  blobber.draw();
  radius += 1;
  
}
void mousePressed(){
  
   save("blobbers3.jpg");
   noLoop();
}
  