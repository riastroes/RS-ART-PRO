class Circle{
  PVector pos;
  float size;
  color acolor;
  color bcolor;
  
 Circle(PVector pos, float size){
   this.pos = pos;
   this.size = size;
   
 }
 void waveMotif( PVector center, int density, float angle, color acolor, float thickness){
   
   
   PVector p1, p2;
   
   for(int i = 0; i < density; i++){
     p1 = center.copy();
     p2 = center.copy();
     p1.x += (this.size/2) * sin(angle);
     p1.y += (this.size/2) * cos(angle);
     
     p2.x += (this.size/2) * sin(-angle);
     p2.y += (this.size/2) * cos(-angle);
     
     angle += PI/density;
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