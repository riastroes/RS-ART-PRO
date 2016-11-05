class Circle{
  
 PVector center;
 float radius;
 
 
 Circle(PVector c, float radius){
   this.center = c;
   this.radius = radius;
   
 }
 PVector pos(float angle){
   PVector p = center.copy();
   p.x += this.radius * sin(angle);
   p.y += this.radius * cos(angle);
   return p;
  }
  
  public void show( ){
    ellipse(this.center.x, this.center.y, this.radius *2, this.radius*2);
    stroke(0);
    strokeWeight(30);
    
    for(float a = PI/2; a <= PI*1.5; a += PI/8){
      point(pos(a).x, pos(a).y);
    }
    strokeWeight(1);
    
  }
  
}