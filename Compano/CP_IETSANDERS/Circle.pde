class Circle{
  PVector pos;
  float wsize;
  float hsize;
  color acolor;
  color bcolor;
  
 Circle(PVector pos, float wsize, float hsize){
   this.pos = pos;
   this.wsize = wsize;
   this.hsize = hsize;
 
 }
 void drawLine(float fromAngle, float toAngle){
  
   PVector p1 = this.pos.copy();
   PVector p2 = this.pos.copy();
   
  
  p1.x = this.pos.x + (this.wsize * sin(fromAngle));
  p1.y = this.pos.y + (this.hsize * cos(fromAngle));
  
  p2.x = this.pos.x - (this.wsize * sin(toAngle));
  p2.y = this.pos.y - (this.hsize * cos(toAngle));
  
  vertex(p1.x, p1.y);
  vertex(p2.x, p2.y);
     
   
 }
 
 void draw(){
   
 }
}