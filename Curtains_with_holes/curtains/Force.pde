class Force{
  
  PVector pos;
  float _radius;
  float radius;
  float _force;
  float force;
  
  Force(PVector ppos, float pradius, float pforce){
    
    this.pos = ppos;
    this._radius = pradius;
    this._force = pforce;
    this.radius = this._radius;
    this.force = this._force;
  
  }
  void change(float diff){
    this.radius -= diff;
    this.force -=(this.force / this.radius) * diff;
    
    if(this.radius <= 0){
      this.pos = new PVector(random(width), random(height));
      this.radius = random(this._radius);
      this.force = random(this._force);      
    }
  }
  void show(){
    noFill();
    stroke(0);
    strokeWeight(this.force);
    ellipse(this.pos.x, this.pos.y, this.radius, this.radius);
  }
}