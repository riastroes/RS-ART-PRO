class Element{
  PGraphics pg;
  float size = 0;
  boolean isgrowing = true;
  Engine motor = new Engine();
  PVector pos;
  int stylenr;
  
  Element(PGraphics ppg, float px, float py, int pnr){
    pg = ppg;
    motor.position = new PVector(px, py);
    pos = motor.position;
    stylenr = pnr;
    
    
  }
  void live(){
    if(size > 100){
      isgrowing = false;
    }
    if(size < 0){
      isgrowing = true;
    }
    if(isgrowing){
      size += 0.5;
    }
    else{
      size -= 0.5;
    }
  }
   void style(int nr){
    switch(nr){
      case 0:{
        pg.stroke(0);
        pg.fill(0);
        break;
      }
      case 1:{
        pg.stroke(255);
        pg.fill(255);
        break;
      }
      case 2:{
        pg.stroke(0);
        pg.fill(0,0,0,0);//transparent
        pg.strokeWeight(1);
        break;
      }
      case 3:{
        pg.stroke(255);
        pg.fill(0,0,0,0);//transparent
        pg.strokeWeight(1);
        break;
      }
    }
  }
  void update(){
  }
    
  void move(PVector target){
    PVector dir = motor.seek(target);
    motor.applyForce(dir);
    pos = motor.update();
    
    
  }
  void draw(){};
  
}
  