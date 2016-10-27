class Machine4 extends Machine{
  
  
  
  //machine onderdelen
  
  Wheel[] wheels;
  Rod[] rods;
  Plate[] plates;
  Arm[] arms;
  float angle, rangle;
  
  Machine4() {

    trailrunner1 = new Trailrunner("lines");
    trailrunner2 = new Trailrunner("dots");
    
    rangle = -90;
    angle = -90;
   
    wheels = new Wheel[2];
    wheels[0] = new Wheel(100,100, colors[3], colors[2]);
    wheels[1] = new Wheel(40, 40, colors[3], colors[2]);
    
    
    arms = new Arm[2];
    arms[0] = new Arm(colors[7], colors[2], colors[6], 'l');
    arms[1] = new Arm(colors[7], colors[2], colors[4], 'r');
    rods = new Rod[8];
    rods[0] = new Rod(100, 15, colors[2], colors[2]);  
    rods[1] = new Rod(60, 15, colors[2], colors[2]);  
    rods[2] = new Rod(60, 15, colors[2], colors[2]);  
    rods[3] = new Rod(60, 15, colors[2], colors[2]);  
    rods[4] = new Rod(60, 15, colors[2], colors[2]);  
    rods[5] = new Rod(60, 15, colors[2], colors[2]);  
    rods[6] = new Rod(60, 15, colors[2], colors[2]);  
    rods[7] = new Rod(60, 15, colors[2], colors[2]);  
    
    plates = new Plate[1];
    plates[0] = new Plate(100, 60, colors[6], colors[2]);  
    
   
  }
  void buildMachine() {
    
    rods[0].set(getAbsPos(0), 0,rangle);
    wheels[0].set(getAbsPos(0),0, 0);
    nextStructure(1, rods[0].getVector(0, 1), rangle);
    rods[1].set(getAbsPos(1), 0,-angle);
    nextStructure(2, rods[1].getVector(0, 1),- angle);
    rods[2].set(getAbsPos(2), 0,angle);
    nextStructure(3, rods[2].getVector(0, 1), angle);
    rods[3].set(getAbsPos(3), 0,-angle);
    nextStructure(4, rods[3].getVector(0, 1), -angle);
    rods[4].set(getAbsPos(4), 0,angle);
    nextStructure(5, rods[4].getVector(0, 1), angle);
    rods[5].set(getAbsPos(5), 0,-angle);
    nextStructure(6, rods[5].getVector(0, 1), -angle);
    rods[6].set(getAbsPos(6), 0,angle);
    nextStructure(7, rods[6].getVector(0, 1), angle);
    rods[7].set(getAbsPos(7), 0,-angle);
    nextStructure(8, rods[7].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(5), 0.03);
    nextStructure(9, rods[0].getVector(0, 1), angle);
    arms[1].move(getAbsPos(8), 0.03);
     
        
   
  } 

void show(float x, float y){
   stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
  }
  
  void moveBetween(float min, float max, float speed) {

    if (isStarted) {

      if (structure[0].x > max ) {
        direction = -1;  //backwards
        stop();
       
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
      }

      structure[0].x += direction * speed;
      float dif = map(sin(a) ,-1,1, -10,10);
      structure[0].y = constrain(structure[0].y + dif, 220, 600);
      if(direction == 1){
        rangle = map(noise(a), 0,1, -60, -120);
        angle = map(sin(a), -1, 1, 90, -90);
        
      }
      else{
        rangle = map(noise(a), 0,1, -60, -120);
        angle = map(sin(a), -1, 1, -90, -270);
         
      }
      buildMachine();
      a = a  +0.005;
      if(a > 1000){ 
        stop();          
      }
    }
  }
  void start(float x, float y) {

    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].x = -300;
      structure[0].y = random(220, 600);
      angle = -90;
    }   
  }
  void run() {
    if (isStarted) {
      moveBetween(-300, width+300, random(15));
     
    // if (frameCount % 15 == 0) {
        
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, arms[0].squirt.paintcolor, 2,  trailrunner1.trail);
        
       
        if (frameCount % 10 == 0) {
        color paint = colors[floor(random(10))];
        arms[1].squirt.paintDots(painting, arms[1].squirt.painter,paint, 30, trailrunner2.trail);
        }
      
        if (withSound) {
         float freq = map( arms[0].squirt.painter.y,height, 0, 100, 900 );
          out.playNote( 0.0, 0.2, new SineInstrument( freq ) );
         }
      
    }
   else if(trailrunner1.isStarted){
      trailrunner1.run();
      trailrunner2.run();
    }
  }
 void stop(){
   if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    
    trailrunner1.start( 1,arms[0].squirt.paintcolor,arms[0].squirt.paintcolor,-10,10);
    trailrunner2.start( 1,arms[1].squirt.paintcolor,arms[1].squirt.paintcolor,0,100);
   }
  }
};