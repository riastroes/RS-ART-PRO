class Machine9 extends Machine {

  int diameter;
  int stopx;
  int drawduration;

  //machine onderdelen

    Wheel[] wheels;
  Rod[] rods;
  Squirt[] squirts;
  float wheelangle, rodangle, rodangle1, rodangle2, squirtangle;

  Machine9() {
    drawduration = 200;
    diameter =0;
    trailrunner1 = new Trailrunner( "dots");
    trailrunner2 = new Trailrunner( "lines");

    wheels = new Wheel[1];
    wheels[0] = new Wheel(100, 100, colors[3], colors[2]);

    rods = new Rod[3];
    rods[0] = new Rod(50, 15, colors[7], colors[2]);  
    rods[1] = new Rod(100, 15, colors[7], colors[2]);  
    rods[2] = new Rod(100, 15, colors[7], colors[2]);

    squirts = new Squirt[1];
    squirts[0] = new Squirt(60, 15, colors[0], colors[7], colors[2]);
  }
  void buildMachine() {


    wheels[0].set(getAbsPos(0), 0, wheelangle);
    nextStructure(1, wheels[0].getVector(0, 1), wheelangle);
    rods[0].set(getAbsPos(1), 0, rodangle);
    nextStructure(2, rods[0].getVector(0, 1), rodangle);
    rods[1].set(getAbsPos(2), 0, rodangle1);
    nextStructure(3, rods[1].getVector(0, 1), rodangle1);
    rods[2].set(getAbsPos(3), 0, rodangle2);
    nextStructure(4, rods[2].getVector(0, 1), rodangle2);
    squirts[0].set(getAbsPos(4), 0, squirtangle);
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
        stop();
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
      }
      if (structure[0].x != stopx) {
        structure[0].x += direction * speed;
        structure[0].y = constrain(structure[0].y + map(noise(a), 0, 1, -10, 10), 220, 600);
      }
      wheelangle = map(sin(a), 0, 1, 0, 1180);
      rodangle = map(noise(a), 0, 1, -30, 30);
      rodangle = map(noise(a), 0, 1, 0, 800);
      rodangle1 = map(noise(a), 0, 1, 0, 90);
      rodangle2 = map(noise(a), 0, 1, 80, 270);
      squirtangle = map(noise(a), 0, 1, 0, 45);
      buildMachine();
      a = a  +0.005;
      if (a > 1000) { 
        stop();
      }
    }
  }
  void start(float x, float y) {
    if (!isStarted) {
      super.start(x, y);
      //squirts[0].paintcolor = paintcolor1;
      squirts[0].lastpainter = null;
      squirts[0].lastpainter = null;
      structure[0].y = random(220, 600);
      stopx = floor(random(width));
      diameter = floor(random(30));
      
    }
  }
  void run() {
    if (isStarted) {
      //if (structure[0].x <= stopx) {
      //  moveBetween(0, width, random(3));
     // } else {
        stopx = 0;
        moveBetween(0, width, random(3));
        
          squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, diameter, trailrunner2.trail);
// if (frameCount % floor(random(200) + 1)== 0 && drawduration <=200) {
//           squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, diameter, trailrunner1.trail);
//           drawduration -= 1;
// }
          if (withSound) {
            // when providing an Instrument, we always specify start time and duration
            float freq = map( squirts[0].painter.y, height, 0, 1000, 1600 );
            out.playNote( 0.0, 0.02, new SineInstrument( freq ) );
          }
          if (drawduration == 0) {
            drawduration = 201;
            structure[0].x +=1;
            
          }
        
     // }
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
      trailrunner1.start( 1, squirts[0].paintcolor, squirts[0].paintcolor, 5, 50);
      trailrunner2.start( 1, squirts[0].paintcolor, squirts[0].paintcolor, diameter, diameter + 10);
    }
  }
};