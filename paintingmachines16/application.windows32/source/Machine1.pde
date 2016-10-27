class Machine1 extends Machine {

  float angle, tailangle, neckangle, tongangle;


  //machine onderdelen

  Plate[] plates;
  Rod[] rods;
  Leg[] legs;
  Arm[] arms;


  Machine1() {
    
    
    trailrunner1 = new Trailrunner("lines");
    
    
    plates = new Plate[4];
    rods = new Rod[3];
    legs = new Leg[4];
    legs[0] = new Leg(colors[7], colors[2], 'l');
    legs[1] = new Leg(colors[7], colors[2], 'l');
    legs[2] = new Leg(colors[7], colors[2], 'l');
    legs[3] = new Leg(colors[7], colors[2], 'l');

    arms = new Arm[2];
    arms[0] = new Arm(colors[7], colors[2], colors[6], 'r');

    angle = 90;
    tailangle = 0;
    tongangle = 0;
    neckangle = 0;
  }
  void buildMachine() {

    rods[0] = new Rod(60, 10, colors[1], colors[2]);   //tail
    rods[1] = new Rod(100, 20, colors[1], colors[2]);  //neck
    plates[0] = new Plate(100, 40, colors[3], colors[2]); //belly
    plates[1] = new Plate(60, 60, colors[5], colors[2]);  //head
    rods[2] = new Rod(140, 10, colors[6], colors[2]);

    plates[1].connectAll();
    rods[0].set(getAbsPos(0), 1, tailangle); 
    plates[0].set(getAbsPos(0), 0, 0);
    nextStructure(1, plates[0].getVector(0, 3), 0);
    legs[0].move(getAbsPos(1), 0.1);
    legs[1].move(getAbsPos(1), -0.1);
    nextStructure(2, plates[0].getVector(3, 2), 0);
    legs[2].move(getAbsPos(2), 0.1);
    legs[3].move(getAbsPos(2), -0.1);

    nextStructure(3, plates[0].getVector(2, 1), 0);
    rods[1].set(getAbsPos(3), 0, neckangle);

    nextStructure(4, rods[1].getVector(0, 1), neckangle);
    plates[1].set(getAbsPos(4), 0, -45);

    nextStructure(5, plates[1].getVector(0, 2), -45); 
    arms[0].move(getAbsPos(5), 0.03);
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
        stop();          //this machine is not running backwards
        direction = -1;  //backwards
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
      }

      structure[0].x += direction * speed;
      
      angle = map(sin(a), -1, 1, 90, -35);
      neckangle = map(sin(a/30), -1, 1, 90, -120);
      tongangle = map(sin(a/50), -1, 1, 30, -180);
      tailangle = map(sin(a), -1, 1, 0, 50);

      buildMachine();
      a = a  + random(0.1, 1);
    }
  }
  
  void start(float x, float y) {
    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      structure[0].y = random(220, 600);
    }
  }
  void run() {
    if (isStarted) {
      
      
        moveBetween(0, width, 2);
        color paint = palette.randomColor();
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, paint, 10,  trailrunner1.trail);
        
        if (withSound) {
            // when providing an Instrument, we always specify start time and duration
            float freq = map( arms[0].squirt.painter.y, height, 0, 110, 880 );
            out.playNote( 0.0, 0.2, new SineInstrument( freq ) );
            
        }
    }
    else if(trailrunner1.isStarted){
      trailrunner1.run();
    }
  }
  
  void stop(){
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner1.start(1,colors[3], colors[4],-25,25 );
    }
  }

  
};