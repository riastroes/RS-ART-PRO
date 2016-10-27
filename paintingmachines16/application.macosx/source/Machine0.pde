class Machine0 extends Machine {

  float a;
  boolean isPainting;

  //machine onderdelen

  Rod[] rods;
  Wheel[] wheels;

  float rodangle, wheelangle;

  Machine0() {
    a = 90;
    isPainting = false;
    
    wheelangle = 0;

    rods = new Rod[7];
    int l = (height/6)-3;
    rods[0] = new Rod(l, 15, colors[6], colors[2]);  
    rods[1] = new Rod(l, 15, colors[6], colors[2]);  
    rods[2] = new Rod(l, 15, colors[6], colors[2]);  
    rods[3] = new Rod(l, 15, colors[6], colors[2]); 
    rods[4] = new Rod(l, 15, colors[6], colors[2]);  
    rods[5] = new Rod(l, 15, colors[6], colors[2]); 
    rods[6] = new Rod(l, 15, colors[6], colors[2]); 

    wheels = new Wheel[2];
    wheels[0] = new Wheel(60, 60, colors[0], colors[9]);
    wheels[1] = new Wheel(60, 60, colors[0], colors[9]);
  }
  void buildMachine() {

    wheels[0].set(structure[0], 0, 0);
    rods[0].set(structure[0], 0, rodangle);
    structure[1] = getStructure(structure[0], rods[0].getVector(0, 1), rodangle);
    rods[1].set(structure[1], 0, -rodangle + 180);
    structure[2] = getStructure(structure[1], rods[1].getVector(0, 1), -rodangle + 180);
    rods[2].set(structure[2], 0, rodangle );
    structure[3] = getStructure(structure[2], rods[2].getVector(0, 1), rodangle);
    rods[3].set(structure[3], 0, -rodangle + 180);
    structure[4] = getStructure(structure[3], rods[3].getVector(0, 1), -rodangle + 180);
    rods[4].set(structure[4], 0, rodangle);
    structure[5] = getStructure(structure[4], rods[4].getVector(0, 1), rodangle);
    rods[5].set(structure[5], 0, -rodangle + 180);
    structure[6] = getStructure(structure[5], rods[5].getVector(0, 1), -rodangle + 180);
    rods[6].set(structure[6], 0, rodangle);
    structure[7] = getStructure(structure[6], rods[6].getVector(0, 1), rodangle);
    wheels[1].set(structure[7], 0, 0);
    structure[8] = getStructure(structure[7], wheels[1].getVector(0, 1), wheelangle);
    structure[9] = getStructure(structure[7], wheels[1].getVector(0, 3), wheelangle);

    if (isStarted && isPainting) {
      painting.beginDraw();
      painting.strokeWeight(1);
      
      painting.stroke(colors[9]);
      
      painting.noFill();
      painting.line(structure[8].x, structure[8].y,structure[9].x, structure[9].y);
      painting.endDraw();
    }
  } 

  void show(float x, float y) {
     stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }

  void moveBetween(float min, float max, float speed) {

    if (isStarted) {

      if (structure[0].x > max ) {
        direction = -1;  //backwards
        speed =  random(1, 2);
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
        speed =  random(1, 2);
      }

      structure[0].x += direction * speed;
      rodangle = map(sin(a), -1, 1, 0, 90);
      wheelangle = map(noise(a), 0, 1, 0, 360);
      buildMachine();
      a = a  +0.01;

      if (a > 1000) { 
        stop();
      }
    }
  }
  void start(float x, float y) {

    super.start(x, y);
    structure[0].x = -100;
    structure[0].y = 0;
    speed =  random(1, 2);
  }
  void run() {
    if (isStarted) {
      
      if ((structure[8].y < 1 || structure[8].y > 759)&& random(10) <1) {
        isPainting = !isPainting;
      }
      if (isPainting) {
        moveBetween(-100, width+50, 0);
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( structure[7].y, height, 0, 200, 800 );
          out.playNote( 0.0, 0.5, new SquareInstrument( freq, 0.01) );
        }
      } else {
        moveBetween(-100, width+50, speed);
      }
    }
  }
};