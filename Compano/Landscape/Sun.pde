class Sun{
  PVector pos;
  float size;
  color acolor;
  color bcolor;
  
 Sun(PVector pos, float size, color acolor, color bcolor){
   this.pos = pos;
   this.size = size;
   this.acolor = acolor;
   this.bcolor = bcolor;
 }
 void draw(){
   float angle = PI/2;
   PVector p1, p2;
   for(int i = 0; i < 20; i++){
     p1 = this.pos.copy();
     p2 = this.pos.copy();
     p1.x += (this.size/2) * sin(angle);
     p1.y += (this.size/2) * cos(angle);
     
     p2.x += (this.size/2) * sin(-angle);
     p2.y += (this.size/2) * cos(-angle);
     
     angle += (PI/20);
     stroke(this.acolor);
     strokeWeight(2);
     for(float a = p2.x ; a < p1.x; a++){
       p1.y += cos( (PI/ 20) *a);
       point(a, p1.y);
       
     }
   }
   float angle1 = 0;
   PVector p3, p4;
 for(int i = 0; i < 17; i++){
     p3 = this.pos.copy();
     p4 = this.pos.copy();
     p3.x += (this.size/2) * sin(angle1);
     p3.y += (this.size/2) * cos(angle1);
     
     p4.x += (this.size/2) * sin(-angle1);
     p4.y += (this.size/2) * cos(-angle1);
     
     angle1 += (PI/17);
     stroke(this.bcolor);
     strokeWeight(2);
     for(float a = p4.x ; a < p3.x; a++){
       p3.y += cos( (PI/ 17) *a);
       point(a, p3.y);
       
     }
    }
   
 }
}