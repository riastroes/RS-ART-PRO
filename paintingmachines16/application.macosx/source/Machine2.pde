class Machine2 extends Machine {

  
  //machine onderdelen
  Wheel[] wheels;
  Rod[] rods;
  Leg[] legs;
  Arm[] arms;
  Plate[] plates;
  float angle, hangle, neckangle;


  Machine2() {
    angle = 45;
    neckangle = 90;
    
    trailrunner1 = new Trailrunner("lines");
    trailrunner2 = new Trailrunner("lines");

    plates = new Plate[1];
    plates[0] = new Plate(60,60,colors[8], colors[2]);
    wheels = new Wheel[4];
    wheels[0] = new Wheel(100, 100, colors[3], colors[2]);
    wheels[1] = new Wheel(80, 80, colors[5], colors[2]);
    wheels[2] = new Wheel(30, 30, colors[5], colors[2]);
    wheels[3] = new Wheel(30, 30, colors[5], colors[2]);
    legs = new Leg[2];
    legs[0] = new Leg(colors[7], colors[2], 'l');
    legs[1] = new Leg(colors[7], colors[2], 'r');
    arms = new Arm[2];
    arms[0] = new Arm(colors[7], colors[2], colors[5], 'l');
    arms[1] = new Arm(colors[7], colors[2], colors[6], 'r');
    rods = new Rod[3];
    rods[0] = new Rod(80, 20, colors[2], colors[2]);  

    rods[1] = new Rod(100, 15, colors[2], colors[2]);  
    rods[2] = new Rod(100, 15, colors[2], colors[2]);
  }
  void buildMachine() {

    plates[0].set(getAbsPos(0), 2, angle);
    
    nextStructure(1, plates[0].getVector(2, 1), angle);
    legs[0].move(getAbsPos(1), 0.05);
    nextStructure(2, plates[0].getVector(1, 3), angle);
    legs[1].move(getAbsPos(2), 0.07);
    nextStructure(3, plates[0].getVector(3, 0), angle);
    rods[0].set(getAbsPos(3), 0, -neckangle);
    nextStructure(4, rods[0].getVector(0, 1), -neckangle);
    wheels[1].set(getAbsPos(4), 0, -angle);
    nextStructure(5, wheels[1].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(3), 0.03);
    nextStructure(6, wheels[1].getVector(1, 3), -angle);
    arms[1].move(getAbsPos(3), 0.04);
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
      angle = 45;
      buildMachine();
      a = a  +0.05;
      if (a > 1000) { 
        stop();
      }
    }
  }
  void show(float x, float y){
     stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
     
  }
  void start(float x, float y) {
    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].y = random(300, 650);
    }
    
  }
  void run() {
    if (isStarted) {
      moveBetween(0, width+ 100, random(3));
      
      if (frameCount % 13 == 0) {
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, colors[5], 2,  trailrunner1.trail);
        arms[1].squirt.paintLines(painting, arms[1].squirt.painter, colors[6], 2,  trailrunner2.trail);
      
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( arms[0].squirt.painter.y, height, 0, 110, 880 );
          out.playNote( 0.0, 0.2, new SineInstrument( freq ) );
          freq = map( arms[1].squirt.painter.y, height, 0, 110, 880 );
          out.playNote( 0.0, 0.2, new SineInstrument( freq ) );
        }
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
    trailrunner1.start( 0.5,colors[5],colors[5],-5,0);
    trailrunner2.start( 0.5,colors[6],colors[6],0,5);
    }
  }
};