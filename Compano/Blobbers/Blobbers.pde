Blobber blobber;
void setup(){
  size(800,800);
  blobber = new Blobber();
  blobber.init(new PVector(width/2, height/2), 8, 100,300, 100, 300);
}

void draw(){
  blobber.change();
  blobber.draw();
  //blobber.showPoints();
}