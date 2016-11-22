class Wisp{
 
  ArrayList<PVector> body;
  PVector last;
  PVector growth;
  float growspeed;
  float minangle;
  float maxangle;
  float a;
  float whimsicality;
  
  
 Wisp(PVector begin, float growspeed, float minangle, float maxangle){
   this.body = new ArrayList<PVector>();
   this.last = begin.copy();
   this.body.add(this.last);
   this.growspeed = growspeed;
   this.growth = new PVector(0,0);
   this.minangle = minangle;
   this.maxangle = maxangle;
   this.a = random(100);
   this.whimsicality = random(0,0.1);
 }
 void grow(){
   
   this.growth = PVector.fromAngle(map(noise(this.a),0,1,this.minangle, this.maxangle));
   this.growth.mult(this.growspeed);
   this.last.add(this.growth);
   this.body.add(this.last);
   this.a += this.whimsicality;
   
 }
 void draw(){
   
 
  
  // for(int i = 0; i < this.body.size(); i++){
     
     vertex(this.last.x, this.last.y);
 
   //endShape();
 }
   
}