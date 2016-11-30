class Circle{
 
  ArrayList<PVector> a;
  float radius;
  PVector center;
  PVector last;
  PVector stop;
  float start;
  float pos;
  float step;
  float angle;
  int live;
  color acolor;
  color bcolor;
  
  boolean alive ;
  
  Circle(PVector center, float radius, float start, float angle){
    this.center = center.copy();
    this.a = new ArrayList<PVector>();
    this.radius = radius;
    this.start = start;   
    this.pos = start;   
    this.angle = angle;
    this.add(this.pos,1);
    
    this.acolor = lerpColor(colors[int(random(0,5))],colors[int(random(0,5))], this.angle/TWO_PI);
    this.bcolor = lerpColor(colors[int(random(5,9))],colors[int(random(5,9))], this.angle/TWO_PI);

    this.live = int(random(25));
    
    this.alive = true;
  }
  void add(float step, float count){
    for(int c = 0; c < count; c++){
      this.pos += step;
      this.last = this.center.copy();
      this.last.x += this.radius * sin(this.pos);
      this.last.y += (this.radius/2) * cos(this.pos);
      this.a.add(this.last);
    }
   }
   void change(float step){
     this.radius += step;
     this.a = new ArrayList<PVector>();
     this.add(this.pos,1);
     this.add(PI/8,16);
   }
 
 
  void draw(){
     if(this.alive){
       ellipse(this.center.x, this.center.y, this.radius, this.radius/2);
       this.live -=1;
       if(this.live == 0){
         this.alive = false;
       }
     }
     
  }

}