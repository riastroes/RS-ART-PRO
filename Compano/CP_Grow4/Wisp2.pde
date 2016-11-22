class Wisp2{
 
  ArrayList<PVector> a;
  float radius;
  PVector last;
  float angle;
  
  boolean isRunning ;
  
  Wisp2(PVector begin, float radius, float angle){
    this.last = begin.copy();
    this.a = new ArrayList<PVector>();
    this.radius = radius;
    this.angle = angle;   
    this.add(this.last, this.angle);
    
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
      //this.angle = random(-PI/2,PI/2);
      //this.angle = -PI/2;
      this.angle = map(next.y, 0, height,PI/2,-PI/2); 
      next.x += this.radius * sin(this.angle);
      next.y += this.radius * cos(this.angle);
      this.a.add(next);
      this.last = next.copy();
    }
  }
  void change(int r){
    PVector distance = new PVector(width/2, height/4);
    if( abs(this.a.get(r).x - distance.x) < 50 &&  abs(this.a.get(r).y - distance.y) < 50){
      this.a.remove(r);
    }
    else{
    PVector f = distance;
    f.sub(this.a.get(r));
    f.normalize();
    
      this.a.get(r).x += f.x;
      this.a.get(r).y += f.y;
    
    }
       
  }
  void draw(){
   if(this.isRunning){
     if(frameCount %20 == 0){
       fill(strokecolor);
     rect(this.a.get(0).x,this.a.get(0).y,10,10);
     }
     noFill();
     beginShape();
    
     for(int i=this.a.size()-1 ;i >0; i--){
       
       curveVertex(this.a.get(i).x,this.a.get(i).y);
       change(i);
     }
     endShape();
   }
  }

}