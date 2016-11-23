class Wisp2{
 
  ArrayList<PVector> a;
  float radius;
  PVector last;
  float angle;
  PVector stop;
  
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
      this.angle = random(-PI/2,PI/2);
      //this.angle = -PI/2;
      //this.angle = map(next.y, 0, height,PI/2,-PI/2); 
      next.x += this.radius * sin(this.angle);
      next.y += this.radius * cos(this.angle);
      this.a.add(next);
      this.last = next.copy();
    }
  }
  void change(int r){
    PVector f = new PVector(0,0);
    if(frameCount == 600){
       stop = new PVector(width/2, height/2);
     }
    else if(frameCount > 600){
      f = posOnCircle(stop,r, r);
      
    }
    else{
      f = posOnCircle(posOnCircle(new PVector(width/2, height/4),50,r),frameCount, r) ;
    }
    
    f.sub(this.a.get(r));
    f.normalize();
    f.mult(20);
    this.a.get(r).x += f.x;
    this.a.get(r).y += f.y;
       
  }
  void draw(){
   if(this.isRunning){
     
   
     for(int i=0 ;i < this.a.size(); i++){
       beginShape();
       curveVertex(this.a.get(i).x,this.a.get(i).y);
        curveVertex(this.a.get(i).x+30,this.a.get(i).y+30);
         curveVertex(this.a.get(i).x,this.a.get(i).y+30);
          curveVertex(this.a.get(i).x-30,this.a.get(i).y+30);
           curveVertex(this.a.get(i).x,this.a.get(i).y);
            curveVertex(this.a.get(i).x+30,this.a.get(i).y+30);
            curveVertex(this.a.get(i).x,this.a.get(i).y+30);
       endShape();
       change(i);
     }
    // 
   }
  }

}
PVector posOnCircle(PVector center, float radius, float r){
  PVector pos = new PVector(center.x,center.y);
  pos.x += radius * sin(r);
  pos.y += radius * cos(r);
  
  return pos;
}
  
  