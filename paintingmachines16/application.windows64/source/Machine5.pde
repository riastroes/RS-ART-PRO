class Machine5 extends Machine{
  
  float b;
  
  //machine onderdelen
  
  Wheel[] wheels;
  Rod[] rods;
  Squirt[] squirts;
  
  float wheelangle, rodangle, squirtangle;
  
  Machine5() {

    
    b= 0;
    
    wheelangle = 0;
    rodangle = 45;
    squirtangle = -45;
   
    wheels = new Wheel[1];
    wheels[0] = new Wheel(80, 80, colors[3], colors[2]);
    
    
    rods = new Rod[4];
    rods[0] = new Rod(60, 15, colors[6], colors[2]);  
    rods[1] = new Rod(60, 15, colors[6], colors[2]);  
    rods[2] = new Rod(60, 15, colors[6], colors[2]);  
    rods[3] = new Rod(60, 15, colors[6], colors[2]);  
    
    
    squirts = new Squirt[4];
    squirts[0] = new Squirt(40, 15, colors[7], colors[2], colors[0]);
    squirts[1] = new Squirt(40, 15, colors[7], colors[2], colors[9]);
    squirts[2] = new Squirt(40, 15, colors[7], colors[2], colors[0]);
    squirts[3] = new Squirt(40, 15, colors[7], colors[2], colors[9]);
    
   
  }
  void buildMachine() {
    
    
    wheels[0].set(getAbsPos(0),0, wheelangle);
    structure[1] = getStructure(getAbsPos(0), wheels[0].getVector(0, 1), wheelangle);
    structure[2] = getStructure(getAbsPos(0), wheels[0].getVector(0, 2), wheelangle);
    structure[3] = getStructure(getAbsPos(0), wheels[0].getVector(0, 3), wheelangle);
    structure[4] = getStructure(getAbsPos(0), wheels[0].getVector(0, 4), wheelangle);
    
    rods[0].set(structure[1], 0,rodangle);
    rods[1].set(structure[2], 0,rodangle + 90);
    rods[2].set(structure[3], 0,rodangle + 180);
    rods[3].set(structure[4], 0,rodangle + 270);
    
    structure[5] = getStructure(structure[1], rods[0].getVector(0, 1), rodangle);
    structure[6] = getStructure(structure[2], rods[1].getVector(0, 1), rodangle + 90);
    structure[7] = getStructure(structure[3], rods[2].getVector(0, 1), rodangle + 180);
    structure[8] = getStructure(structure[4], rods[3].getVector(0, 1), rodangle + 270);
    
    squirts[0].set(structure[5], 0,squirtangle);
    squirts[1].set(structure[6], 0,squirtangle + 90);
    squirts[2].set(structure[7], 0,squirtangle + 180);
    squirts[3].set(structure[8], 0,squirtangle + 270);
    
   
       
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
        speed =  random(1,2);
         stop();
       
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
         
        speed =  random(1,2);
      }

      structure[0].x += direction * speed;
      float dif = map(noise(b) ,0,1, -10,10);
      structure[0].y = constrain(structure[0].y + dif,   100, height-100);
      //if(direction == 1){
        
        wheelangle = map(sin(a), -1, 1, 0, 360);
        rodangle = map(sin(a), -1, 1, 0, 360);
        squirtangle = map(sin(b), 0,1, 0, 360);
     // }
     
      buildMachine();
      a = a  +0.005;
      b = b + 0.3;
      if(a > 1000){ 
        stop();          
      }
    }
  }
  void start(float x, float y) {
    if(!isStarted){
      squirts[0].lastpainter = null;
      squirts[1].lastpainter = null;
      squirts[2].lastpainter = null;
      squirts[3].lastpainter = null;
      super.start(x,y);
      structure[0].y = random(100, height - 100);
      speed = random( 10,15);
    }
      
  }
  void run() {
    if (isStarted) {
      moveBetween(-100, width+100, speed);
      squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, 1, null);
      squirts[1].paintLines(painting, squirts[1].painter, squirts[1].paintcolor, 1, null);
      squirts[2].paintLines(painting, squirts[2].painter, squirts[2].paintcolor, 1, null);
      squirts[3].paintLines(painting, squirts[3].painter, squirts[3].paintcolor, 1, null);
       
      
        if (withSound) {
         // when providing an Instrument, we always specify start time and duration
         float freq = map( squirts[0].painter.y,height, 0, 100, 900 );
         out.playNote( 0.0, 0.1, new SineInstrument( freq ) );
          freq = map( squirts[1].painter.y,height, 0, 100, 900 );
           out.playNote( 0.1, 0.1, new SineInstrument( freq ) );
           freq = map( squirts[2].painter.y,height, 0, 100, 900 );
            out.playNote( 0.2, 0.1, new SineInstrument( freq ) );
            freq = map( squirts[3].painter.y,height, 0, 100, 900 );
            out.playNote( 0.3, 0., new SineInstrument( freq ) );
         
        }
        }
      
  }
 void stop() {
   if(isStarted){
      squirts[0].lastpainter = null;
      squirts[1].lastpainter = null;
      squirts[2].lastpainter = null;
      squirts[3].lastpainter = null;
    super.stop();
   }
    
         
  }
};