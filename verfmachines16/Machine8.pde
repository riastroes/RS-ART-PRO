class Machine8 extends Machine {

  float b;

  //machine onderdelen

  Wheel[] wheels;
  Rod[] rods;
  Plate[] plates;
  Squirt[] squirts;

  float plateangle, difangle, squirtangle, hairangle;

  Machine8() {

    trailrunner1 = new Trailrunner("lines");
    trailrunner2 = new Trailrunner("dots");

    b= 0;

    plateangle = -90;
    squirtangle = -45;
    difangle =5;
    hairangle = -90;

    wheels = new Wheel[2];
    wheels[0] = new Wheel(120, 120, colors[9], colors[8]);
    wheels[1] = new Wheel(40, 40, colors[9], colors[8]);


    rods = new Rod[3];
    rods[0] = new Rod( 80, 10, colors[7], colors[8]);
    rods[1] = new Rod( 80, 10, colors[7], colors[8]);
    rods[2] = new Rod( 80, 10, colors[7], colors[8]);


    squirts = new Squirt[3];
    squirts[0] = new Squirt(40, 15, colors[7], colors[2], colors[7]);
    squirts[1] = new Squirt(40, 15, colors[8], colors[2], colors[8]);
    squirts[2] = new Squirt(40, 15, colors[9], colors[2], colors[9]);
  }
  void buildMachine() {

    wheels[0].set(structure[0], 0, 0);
    structure[1] = getStructure(structure[0], wheels[0].getVector(0, 1), hairangle);
    rods[0].set(structure[1], 0, hairangle);
    structure[2] = getStructure(structure[0], wheels[0].getVector(0, 4), hairangle);
    rods[1].set(structure[2], 0, hairangle);
    structure[3] = getStructure(structure[0], wheels[0].getVector(0, 2), hairangle);
    rods[2].set(structure[3], 0, hairangle);
    structure[4] = getStructure(structure[1], rods[0].getVector(0, 1), hairangle);
    squirts[0].set(structure[4], 0, squirtangle);
    structure[5] = getStructure(structure[2], rods[1].getVector(0, 1), hairangle);
    squirts[1].set(structure[5], 0, squirtangle);
    structure[6] = getStructure(structure[3], rods[2].getVector(0, 1), hairangle);
    squirts[2].set(structure[6], 0, squirtangle);
  } 
  void show(float x, float y) {
   stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }


  void moveBetween(float min, float max, float speed) {

    if (isStarted) {

      if (structure[0].y > max ) {
        direction = -1;  //backwards
        speed =  random(1, 4);

        stop();
      }
      if (structure[0].y < min) {
        direction = 1;   //forward
        speed =  random(1, 4);
      }

      structure[0].y += direction * speed;
      squirtangle = map(noise(a), 0, 1, -135, -65);


      buildMachine();
      a = a  +0.1;

      if (a > 1000) { 
        stop();
      }
    }
  }

  void start(float x, float y) {
    if (!isStarted) {
      super.start(x, y);
      squirts[0].lastpainter = null;
      squirts[1].lastpainter = null;
      squirts[2].lastpainter = null;
      structure[0].x = random(0, width);
      structure[0].y = -50;

      speed =  random(1, 4);
    }
  }

  void run() {
    if (isStarted) {
      moveBetween(-50, height +200, speed);
      if (frameCount % 5 == 0) {
        squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, 2, trailrunner1.trail);
        squirts[1].paintSpaceLines(painting, squirts[1].painter, squirts[1].paintcolor, 2, null);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 100, 900 );
          out.playNote( 0.0, 0.1, new SineInstrument( freq ) );
        }
      }
      if (frameCount % 17 == 0) {
        color paint= colors[floor(random(10))];
        squirts[2].paintDots(painting, squirts[2].painter, paint, 20, trailrunner2.trail);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 900, 2000 );
          out.playNote( 0.0, 0.1, new SineInstrument( freq ) );
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  void stop() {
    if (isStarted) {
      super.stop();
      trailrunner1.trail.add(new PVector(-1, -1));
      trailrunner2.trail.add(new PVector(-1, -1));
      
      trailrunner1.start(0.5, squirts[0].paintcolor, squirts[0].paintcolor, 0, 10);
      trailrunner2.start( 0.5, squirts[2].paintcolor, squirts[2].paintcolor, 0, 100);
    }
  }
};