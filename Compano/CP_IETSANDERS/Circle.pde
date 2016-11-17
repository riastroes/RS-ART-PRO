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
 void lines(float angle){
  
   PVector p1 = this.pos.copy();
   PVector p2 = this.pos.copy();
   
   for(int i = 0; i < PI; i += angle){
      p1.x = this.pos.x + (this.wsize * sin(i));
      p1.y = this.pos.y + (this.hsize * cos(i));
      
      p2.x = this.pos.x - (this.wsize * sin(i));
      p2.y = this.pos.y - (this.hsize * cos(i));
      stroke(0);
      strokeWeight(1);
      line(p1.x, p1.y, p2.x, p2.y);
      println(p1.x + " " +  p1.y+ " " +  p2.x+ " " +  p2.y);
      println(i);
   }
 }
 
 void draw(){
   this.lines(0.03);
 }
}