 class Trailrunner {
  RPalette palette;
  color[] colors;

  boolean isStarted;
  int t; 
  float a; // position on trail
  float r;
  int mindeviation;
  int maxdeviation;
  float angle; 
  PVector painter, lastpainter;
  color paintcolor, paintcolor1, paintcolor2;
  float diameter;
  ArrayList<PVector> trail;
  String shape;


  Trailrunner(String pshape) {
    
    shape = pshape;
    trail = new  ArrayList<PVector>();
    a= 0;
    t= 0;
    r = 0;
    isStarted = false;
  }

  void paint( PGraphics painting, color paint1, color paint2, float diameter, String shape) {

    painter = trail.get(t);
    if (painter.x != -1 && painter.y != -1) {

      if (lastpainter == null) {
        lastpainter = painter.copy();
      }
      if(painter.x > 0 && painter.x <= width && painter.y > 0 && painter.y <= height){
      painting.beginDraw();
      painting.stroke(paint1);
      painting.strokeWeight(diameter);
      
      if (shape == "lines") {
        painter.x += map(noise(a ), 0, 1, mindeviation, maxdeviation);
        painter.y += map(noise(a + 10), 0, 1, mindeviation, maxdeviation);

        painting.line(lastpainter.x, lastpainter.y, painter.x, painter.y);
        if (withSound) {
          float freq = map( painter.y, height, 0, 110, 600 );
          out.playNote( 0.0, 0.05, new SineInstrument( freq ) );
        }
        t = t + 1;
        a = a + 0.1;
      } else if (shape == "dots") {
        if (frameCount % 13 ==0) {

          painting.noFill();
          painting.stroke(paint1);
          painting.strokeWeight(diameter);
          painting.ellipse(painter.x, painter.y, r, r);
          if (withSound) {
            float freq = map( painter.y, height, 0, 1000, 1500 );
            out.playNote( 0.0, 0.03, new SineInstrument( freq ) );
          }
         t = t + 1;
        }
      } else if (shape == "rect") {
        if (frameCount % 10 ==0) {
         
          painter.y += maxdeviation;
          painting.rectMode(CENTER);
          painting.noFill();
          painting.stroke(paint1);
          painting.rect(painter.x, painter.y, r, r);
          if (withSound) {
            float freq = map( painter.y, height, 0, 500, 1000 );
            out.playNote( 0.0, 0.03, new SineInstrument( freq ) );
          }
          r = constrain(r + 1, mindeviation, maxdeviation+1);
          
          t = t + 1;
          a = a + 0.1;
          
        }
      }
      else if (shape == "rectG") {
        if (frameCount % 10 ==0) {
          
          
          painting.rectMode(CENTER);
          painting.noFill();
          painting.stroke(paint1);
          painting.rect(painter.x, painter.y, r, r);
          if (withSound) {
            float freq = map( painter.y, height, 0, 100, 500 );
            out.playNote( 0.0, 1, new SineInstrument( freq ) );
          }
          
          t = t + 1;
          
        }
        
      }
      painting.endDraw();
      lastpainter = painter.copy();
    } else {
      lastpainter = null;
      t = t+2;
    }
    }
    else{t = t + 1;}
  }

  void start(float pdiameter, color ppaintcolor1, color ppaintcolor2, int pmin, int pmax) {

    diameter = pdiameter;
    mindeviation = pmin;
    maxdeviation = pmax;
    if(random(2) < 1){
      r += 2;}
    else{ r += 4;}
    if(r >= pmax) {r = pmin;}
    t = 0;
    lastpainter = null;
    paintcolor1 =  ppaintcolor1;
    paintcolor2 =  ppaintcolor2;
    isStarted = true;
  }

  void run() {
    if (isStarted) {
      paint(painting, paintcolor1,paintcolor2, diameter, shape);
    }


    if (t >= trail.size() && t != 0) {
      lastpainter = null;
      start(diameter, paintcolor1, paintcolor2, mindeviation, maxdeviation);
    }
  }  

  void stop() {
    isStarted = false;
  }
};