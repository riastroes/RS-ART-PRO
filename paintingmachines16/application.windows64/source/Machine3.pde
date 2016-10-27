class Machine3 extends Machine {

  int diameter;

  //machine onderdelen

  Wheel[] wheels;
  Rod[] rods;
  Leg[] legs;
  Arm[] arms;
  float angle, hangle, neckangle;

  Machine3() {
    
    diameter =0;
    trailrunner1 = new Trailrunner("dots");
    trailrunner2 = new Trailrunner("dots");

    wheels = new Wheel[4];
    wheels[0] = new Wheel(100, 100, colors[3], colors[2]);
    wheels[1] = new Wheel(80, 80, colors[5], colors[2]);
    wheels[2] = new Wheel(30, 30, colors[5], colors[2]);
    wheels[3] = new Wheel(30, 30, colors[5], colors[2]);
    legs = new Leg[2];
    legs[0] = new Leg(colors[7], colors[2], 'l');
    legs[1] = new Leg(colors[7], colors[2], 'r');
    arms = new Arm[2];
    arms[0] = new Arm(colors[7], colors[2], colors[1], 'l');
    arms[1] = new Arm(colors[7], colors[2], colors[2], 'r');
    rods = new Rod[3];
    rods[0] = new Rod(50, 20, colors[2], colors[2]);  

    rods[1] = new Rod(100, 15, colors[2], colors[2]);  
    rods[2] = new Rod(100, 15, colors[2], colors[2]);
  }
  void buildMachine() {


    wheels[0].set(getAbsPos(0), 0, angle);
    nextStructure(1, wheels[0].getVector(0, 1), angle);
    legs[0].move(getAbsPos(1), 0.05);
    nextStructure(2, wheels[0].getVector(1, 3), angle);
    legs[1].move(getAbsPos(2), 0.07);
    nextStructure(3, wheels[0].getVector(3, 4), angle);
    rods[0].set(getAbsPos(3), 0, -neckangle);
    nextStructure(4, rods[0].getVector(0, 1), -neckangle);
    wheels[1].set(getAbsPos(4), 0, -angle);
    nextStructure(5, wheels[1].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(5), 0.03);
    nextStructure(6, wheels[1].getVector(1, 3), -angle);
    arms[1].move(getAbsPos(6), 0.04);
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
      structure[0].y = constrain(structure[0].y + map(noise(a),0,1,-10,10), 220, 600);
      neckangle = map(noise(a), 0, 1, 30, 220);
      angle = map(sin(a), -1, 1, -30, 30);
      buildMachine();
      a = a  +0.05;
      if (a > 1000) { 
        stop();
      }
    }
  }
  void start(float x, float y) {
    if(!isStarted){
      super.start(x, y);
      //arms[0].squirt.paintcolor = paintcolor1;
      //arms[1].squirt.paintcolor = paintcolor2;
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].y = random(220, 600);
    }
  }
  void run() {
    if (isStarted) {
      moveBetween(0, width, random(3));

      if (frameCount % 20== 0) {
        diameter = floor(random(30));
        arms[0].squirt.paintDots(painting, arms[0].squirt.painter, arms[0].squirt.paintcolor, diameter, trailrunner1.trail);
        if (frameCount % 60== 0) {
          diameter = floor(random(100));
          arms[1].squirt.paintDots(painting, arms[1].squirt.painter, arms[1].squirt.paintcolor, diameter, trailrunner2.trail);
        }
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( arms[0].squirt.painter.y, height, 0, 500, 1600 );
          out.playNote( 0.0, 0.2, new SineInstrument( freq ) );
          if (frameCount % 60== 0) {
            freq = map( arms[1].squirt.painter.y, height, 0, 200, 1200  );
            out.playNote( 0.2, 0.5, new SineInstrument( freq ) );
          }
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
    trailrunner1.start( 1, colors[1], colors[1], 5, 50);
    trailrunner2.start( 1, colors[2], colors[2], diameter,diameter + 50);
    }
  }
};