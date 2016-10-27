class Machine6 extends Machine {

  float b;

  //machine onderdelen

  Wheel[] wheels;
  Rod[] rods;
  Plate[] plates;
  Squirt[] squirts;

  float wheelangle, rodangle, squirtangle, plateangle;

  Machine6() {

    trailrunner1 = new Trailrunner("rect");
    trailrunner2 = new Trailrunner("rect");

    b= 0;

    wheelangle = 0;
    rodangle = 0;
    plateangle = 0;
    squirtangle = -45;

    wheels = new Wheel[2];
    wheels[0] = new Wheel(80, 80, colors[3], colors[2]);
    wheels[1] = new Wheel(80, 80, colors[3], colors[2]);

    rods = new Rod[5];
    rods[0] = new Rod(60, 15, colors[6], colors[2]);  
    rods[1] = new Rod(60, 15, colors[6], colors[2]);  
    rods[2] = new Rod(60, 15, colors[6], colors[2]);  
    rods[3] = new Rod(60, 15, colors[6], colors[2]);  
    rods[4] = new Rod(60, 15, colors[6], colors[2]);  

    plates = new Plate[5];
    plates[0] = new Plate(40, 100, colors[6], colors[2]);  
    plates[1] = new Plate(40, 100, colors[6], colors[2]);  
    plates[2] = new Plate(40, 100, colors[6], colors[2]);  
    plates[3] = new Plate(40, 100, colors[6], colors[2]);  
    plates[4] = new Plate(40, 100, colors[6], colors[2]);  

    squirts = new Squirt[2];
    squirts[0] = new Squirt(40, 15, colors[7], colors[2], colors[8]);
    squirts[1] = new Squirt(40, 15, colors[7], colors[2], colors[9]);
  }
  void buildMachine() {


    wheels[0].set(getAbsPos(0), 0, wheelangle);
    plates[0].set(getAbsPos(0), 3, plateangle);

    structure[1] = getStructure(getAbsPos(0), plates[0].getVector(3, 0), plateangle);
    squirts[0].set(structure[1], 0, squirtangle + 180);
    structure[2] = getStructure(structure[0], plates[0].getVector(3, 1), plateangle);
    rods[0].set(structure[2], 0, rodangle);
    structure[3] = getStructure(structure[2 ], rods[0].getVector(0, 1), rodangle);
    plates[1].set(structure[3], 0, plateangle);
    structure[4] = getStructure(structure[3], plates[1].getVector(0, 2), plateangle);
    rods[1].set(structure[4], 0, rodangle);
    structure[5] = getStructure(structure[4], rods[1].getVector(0, 1), rodangle);
    plates[2].set(structure[5], 3, plateangle);
    structure[6] = getStructure(structure[5], plates[2].getVector(3, 1), plateangle);
    rods[2].set(structure[6], 0, rodangle);
    structure[7] = getStructure(structure[6], rods[2].getVector(0, 1), rodangle);
    plates[3].set(structure[7], 0, plateangle);
    structure[8] = getStructure(structure[7], plates[3].getVector(0, 2), plateangle);
    rods[3].set(structure[8], 0, rodangle);
    structure[9] = getStructure(structure[8], rods[3].getVector(0, 1), rodangle);
    plates[4].set(structure[9], 3, plateangle);
    structure[10] = getStructure(structure[9], plates[4].getVector(3, 2), plateangle);
    wheels[1].set(structure[10], 0, wheelangle);
    structure[11] = getStructure(structure[10], plates[4].getVector(2, 1), plateangle);
    rods[4].set(structure[11], 0, rodangle);
    structure[12] = getStructure(structure[11], rods[4].getVector(0, 1), rodangle);
    squirts[1].set(structure[12], 0, -squirtangle);
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
        speed =  random(1, 4);
        structure[0].y = random(100, height-100);
         stop();
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
        speed =  random(1, 4);
        structure[0].y = random(100, height-100);
      }

      structure[0].x += direction * speed;
      rodangle = map(sin(a), -1, 1, -17, 17);
      plateangle = map(sin(a), -1, 1, 10, -10);
      squirtangle = map(sin(a) * sin(b), -1, 1,-70,70);
     
      buildMachine();
      a = a  +0.005;
      b = b + 0.03;
      if (a > 1000) { 
        stop();
      }
    }
  }
  void start(float x, float y) {
if(!isStarted){
    super.start(x, y);
    squirts[0].lastpainter = null;
    squirts[1].lastpainter = null;
    structure[0].x = -400;
    structure[0].y = random( 100, height-100);
    speed =  random(1, 4);
}
  }
  void run() {
    if (isStarted) {
      moveBetween(-400, width+400, speed);
      if(frameCount % 15 == 0){
        float diam = map(noise(a), 0,1, 10, 20);
        squirts[0].paintRect(painting, squirts[0].painter, colors[1], diam, trailrunner1.trail);
        squirts[1].paintRect(painting, squirts[1].painter, colors[2], diam, trailrunner2.trail);
  
  
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          
          //float freq = map( squirts[0].painter.y, height, 0, 60, 120 );
          
          // out.playNote( 0.0, 0.1, new SineInstrument( freq ) );
          
          float freq = map( squirts[1].painter.y, height, 0, 120, 920 );
           out.playNote( 0.1, 0.1, new SineInstrument( freq ) );
           out.playNote( 0.2, 0.1, new SineInstrument( freq ) );
          
          //synth.set("freq", freq); 
         // synth.set("t_gate", 1);
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  void stop() {
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    trailrunner1.start( 1, colors[1], colors[1],  1, 5);
    trailrunner2.start( 1, colors[2], colors[2],  3, 7);
    }
  }
};