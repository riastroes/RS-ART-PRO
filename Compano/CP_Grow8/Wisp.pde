class Wisp{
 
  ArrayList<PVector> a;
  ArrayList<PVector> b;
  PVector alast;
  PVector blast;
  PVector growth;
  float growspeed;
  float minangle;
  float maxangle;
  float anoise;
  float bnoise;
  float whimsicality;
  boolean isRunning;
  
  
 Wisp(PVector begin, float growspeed, float minangle, float maxangle){
   this.a = new ArrayList<PVector>();
   this.b = new ArrayList<PVector>();
   this.alast = begin.copy();
   this.blast = begin.copy();
   this.a.add(this.alast);
   this.b.add(this.blast);
    this.anoise = random(100);
    this.bnoise = random(100);
   this.growspeed = growspeed;
   this.growth = new PVector(0,0);
   this.minangle = minangle;
   this.maxangle = maxangle;
   this.anoise = random(100);
   this.whimsicality = random(0,0.1);
   this.isRunning = true;
 }
 void grow(){
   if(this.isRunning){
     this.growth = PVector.fromAngle(map(noise(this.anoise),0,1,this.minangle, this.maxangle));
     this.growth.mult(this.growspeed);
     this.alast.add(this.growth);
     this.a.add(this.alast);
     this.anoise += this.whimsicality;
     
     this.growth = PVector.fromAngle(map(noise(this.bnoise),0,1,this.minangle, this.maxangle));
     this.growth.mult(this.growspeed);
     this.blast.add(this.growth);
     this.b.add(this.blast);
     this.bnoise += this.whimsicality;
     
     if(this.alast.x > width && this.blast.x > width+100){
       this.isRunning = false;
     }
     if(this.alast.y > height && this.blast.y > height+100){
       this.isRunning = false;
     }
     if(this.alast.x <-100 && this.blast.x <-100){
       this.isRunning = false;
     }
     if(this.alast.y <-100 && this.blast.y <-100){
       this.isRunning = false;
     }
   }
   
 }
 void draw(){
   
   beginShape();
   for(int i=0 ;i < this.a.size(); i++){
     curveVertex(this.a.get(i).x,this.a.get(i).y);
     curveVertex(this.b.get(i).x,this.b.get(i).y);
   }
   endShape();
 }
   
}