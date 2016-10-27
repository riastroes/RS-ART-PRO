class Machine7 extends Machine {

  float b;
  float diameter;

  //machine onderdelen

  Wheel[] wheels;
  Rod[] rods;
  Plate[] plates;
  Squirt[] squirts;

  float plateangle, difangle, squirtangle;

  Machine7() {
    
    trailrunner1 = new Trailrunner("rectG");
    trailrunner2 = new Trailrunner("rectG");

    b= 0;

    plateangle = -90;
    squirtangle = -45;
    difangle =5;

    wheels = new Wheel[2];
    wheels[0] = new Wheel(40, 40, colors[9], colors[8]);
    wheels[1] = new Wheel(40, 40, colors[9], colors[8]);


    plates = new Plate[6];
    plates[0] = new Plate(60, 60, colors[3], colors[2]);  
    plates[1] = new Plate(60, 60, colors[4], colors[2]);  
    plates[2] = new Plate(60, 60, colors[5], colors[2]);  
    plates[3] = new Plate(60, 60, colors[6], colors[2]);  
    plates[4] = new Plate(60, 60, colors[7], colors[2]); 
    plates[5] = new Plate(60, 60, colors[8], colors[2]); 

    squirts = new Squirt[1];
    squirts[0] = new Squirt(60, 15, colors[7], colors[2], colors[5]);
    
  }
  void buildMachine() {

    plates[0].set(structure[0], 0, 0);
    structure[1] = getStructure(structure[0], plates[0].getVector(0, 1), 0);
    plates[1].set(structure[1], 3, plateangle + 5);
    structure[2] = getStructure(structure[1], plates[1].getVector(3, 2), plateangle + (1*difangle));
    plates[2].set(structure[2], 3, plateangle +(2*difangle));
    structure[3] = getStructure(structure[2], plates[2].getVector(3, 2), plateangle + (2*difangle));
    plates[3].set(structure[3], 3, plateangle + (3*difangle));
    structure[4] = getStructure(structure[3], plates[3].getVector(3, 2), plateangle + (3*difangle));
    plates[4].set(structure[4], 3, plateangle + (4*difangle));
    structure[5] = getStructure(structure[4], plates[4].getVector(3, 2), plateangle + (4*difangle));
    plates[5].set(structure[5], 3, plateangle + (5*difangle));
    structure[6] = getStructure(structure[5], plates[5].getVector(3, 1), plateangle + (5*difangle));
    squirts[0].set(structure[6], 0, plateangle + (5*difangle));

    structure[7] = getStructure(structure[0], plates[0].getVector(0, 3), 0);
    wheels[0].set(structure[7], 0, 0);
    structure[8] = getStructure(structure[0], plates[0].getVector(0, 2), 0);
    wheels[1].set(structure[8], 0, 0);
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
      plateangle = map(sin(a)* sin(b), -1, 1, 0, -180);
      difangle = map(noise(a), 0, 1, -40, 40);
      diameter = map(noise(b), 0, 1, 5, 30);
      
      buildMachine();
      a = a + 0.005;
      b = b + 0.03;
      
    }
  }
  void start(float x, float y) {
    if (!isStarted) {
      super.start(x, y);
      squirts[0].lastpainter = null;
      structure[0].x = -400;
      structure[0].y = random( 100, height-100);
      speed =  random(1, 4);
    }
  }
  void run() {
    if (isStarted) {
      moveBetween(-400, width+400, speed);
      if (frameCount % 75 == 0) {
        diameter = random( 10,200);
        squirts[0].paintRect(painting, squirts[0].painter,  squirts[0].paintcolor, diameter, trailrunner1.trail);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 100, 900 );
          out.playNote( 0.0, 0.1, new SineInstrument( freq ) );
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
    }
  }
  void stop() {
    if (isStarted) {
      super.stop();
      trailrunner1.trail.add(new PVector(-1, -1));
      trailrunner1.start( 1, colors[5],colors[5], 0, 100);
    }
  }
};