class Wisp2{
 
  ArrayList<PVector> a;
  float radius;
  PVector last;
  float angle;
  color strokecolor;
  boolean isRunning ;
  
  Wisp2(PVector begin, float radius, float angle){
    this.last = begin.copy();
    this.a = new ArrayList<PVector>();
    this.radius = radius;
    this.angle = 0;   
    this.add(this.last, this.angle);
    this.strokecolor = 0;
    this.isRunning = true;
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
  void change(int r){
    PVector distance = new PVector(width/2, height/2);
    PVector f = distance;
    f.sub(this.a.get(r));
    f.normalize();
    
      this.a.get(r).x += f.x;
      this.a.get(r).y += f.y;
    
    if(abs(this.a.get(r).x - distance.x) <50 && abs(this.a.get(r).y - distance.y) < 0){
      this.a.remove(r);
    }
       
  }
  void draw(){
   if(this.isRunning){
     stroke(this.strokecolor);
     strokeWeight(0.1);
     beginShape();
    
     for(int i=this.a.size()-1 ;i >0; i--){
       
       curveVertex(this.a.get(i).x,this.a.get(i).y);
       change(i);
     }
     endShape();
   }
  }

}