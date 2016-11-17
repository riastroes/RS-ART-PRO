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
 void waveMotif( PVector center, int density, float angle, color acolor, float thickness){
   
   
   PVector p1, p2;
   
   for(int i = 0; i < density; i++){
     p1 = center.copy();
     p2 = center.copy();
     p1.x += (this.wsize/2) * sin(angle);
     p1.y += (this.hsize/2) * cos(angle);
     
     p2.x += (this.wsize/2) * sin(-angle);
     p2.y += (this.hsize/2) * cos(-angle);
     
     angle += PI/density;
     fill(255,100);
     stroke(acolor);
     strokeWeight(thickness);
     beginShape();
     for(float a = p2.x ; a < p1.x; a++){
       p1.y += cos( (PI/ (density/10)) *a);
       curveVertex(a, p1.y);
       
     }
     endShape();
   }
 }
 void draw(){
  
   
 }
}