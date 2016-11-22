class Wisp2{
 
  ArrayList<PVector> a;
  float radius;
  PVector last;
  float angle;
  
  Wisp2(PVector begin, float radius, float angle){
    this.last = begin.copy();
    this.a = new ArrayList<PVector>();
    this.radius = radius;
    this.angle = 0;   
    this.add(this.last, this.angle);
  }
  void add(PVector last, float angle){
    this.last = last.copy();
    PVector next = last.copy();
    next.x += this.radius * sin(angle);
    next.y += this.radius * cos(angle);
    this.a.add(next);
    this.last = next.copy();
    
  }
  void grow(int length){
    for(int i = 0; i < length; i++){
      PVector next = this.last.copy();
      this.angle = random(0,PI);
      next.x += this.radius * sin(this.angle);
      next.y += this.radius * cos(this.angle);
      this.a.add(next);
      this.last = next.copy();
    }
  }
  void change(PVector f){
    int r = int(random(this.a.size()));
    this.a.get(r).x += f.x;
    this.a.get(r).y += f.y;
  }
  void draw(){
   strokeWeight(1);
   beginShape();
   for(int i=0 ;i < this.a.size(); i++){
     curveVertex(this.a.get(i).x,this.a.get(i).y);
     
    }
   endShape();
   //strokeWeight(5);
   //for(int i=0 ;i < this.a.size(); i++){
   //    if(i%2 == 0){
   //      stroke(color(255,0,0));
   //    }
   //    else{
   //      stroke(0);
   //    }
   //    point(this.a.get(i).x,this.a.get(i).y);
   //  }
  }

}