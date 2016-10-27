import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.effects.*; 
import ddf.minim.analysis.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class verfmachines16 extends PApplet {

//import netP5.*;
//import oscP5.*;
//import supercollider.*;









//Synth synth;
Minim       minim;
AudioRecorder recorder;
//import gifAnimation.*;
//GifMaker gifExport;



int imageIndex;
String imageName;
PFont font;

RPalette palette;
int bg;
PGraphics painting;
int scene;
boolean isDragging;
boolean isRunning;
boolean isOpname;
boolean withSound;

Machine0 machine0;
Machine1 machine1;
Machine2 machine2;
Machine3 machine3;
Machine4 machine4;
Machine5 machine5;
Machine6 machine6;
Machine7 machine7;
Machine8 machine8;
Machine9 machine9;

AudioOutput out;

boolean doSelect;

public void setup() {
        //16:9 breedbeeld
  initSaveImage();
 // synth = new Synth("square");
  //synth.set("freq", 60);
 // synth.create();

  withSound = true;
  if (withSound) {

    // // set initial arguments
    // synth.set("amp", 0.5);
    // synth.set("freq", 80);

    // // create synth
    //  synth.create();




    minim = new Minim(this);
    out = minim.getLineOut();
    recorder = minim.createRecorder(out, "myrecording.wav");
  }

  palette = new RPalette(10);
  bg = palette.colors[0];
  painting = createGraphics(width, height);
  painting.rectMode(CENTER);
  painting.smooth();

  //  trail = new ArrayList<PVector>();
  machine0 = new Machine0();
  machine1 = new Machine1();
  machine2 = new Machine2();
  machine3 = new Machine3();
  machine4 = new Machine4();
  machine5 = new Machine5();
  machine6 = new Machine6();
  machine7 = new Machine7();
  machine8 = new Machine8();
  machine9 = new Machine9();

  isDragging = false;
  isRunning = true;
  isOpname = false;
  if (isOpname) {
    recorder.beginRecord();
  }
  doSelect = true;
}

public void draw() {
  background(bg);
  if (doSelect) {
    showMachines();
  } else {

    image(painting, 0, 0);

    machine0.run();   
    machine1.run();
    machine2.run();
    machine3.run();
    machine4.run();
    machine5.run();
    machine6.run();
    machine7.run();
    machine8.run();
    machine9.run();

    if (isOpname) {
      recorder.beginRecord();
      saveFrame("frames/machine1####.png");
    }
  }
}


public void showMachines() {
  stroke(0);
  //  rectMode(CORNERS);
  //  rect(0,0,380,300);
  machine1.show(100, 100);
  //  rect(380,0,670,380);
  machine2.show(500, 250);
  //  rect(670,0,980,330);
  machine3.show(800, 180);
  //  rect(980,0,width,300);
  machine4.show(1100, 200);
  //  rect(0,300,200,580);
  machine5.show(100, 400);
  //   rect(200,380,670,580);
  machine6.show(300, 500);
  //  rect(670,330,810,700);
  machine7.show(700, 600);
  //  rect(810,330,1000,600);
  machine8.show(900, 500);
  //   rect(1000,330,width,500);
  machine9.show(1100, 600);
  //  rect(1000,500,width,height);
  machine0.show(1100, 400);
}
// /********************************
// standaard functies
// ********************************/

public void initSaveImage() {
  imageIndex = floor(random(100));
  imageName = "machine";
  font = loadFont("Arial-ItalicMT-24.vlw");
}
public void saveImage() {
  background(bg);
  image(painting, 0, 0);
  fill(0);
  stroke(0);

  textFont(font);
  text("S'16", width-140, height-45);
  text("R", width-143, height-35);
  save(imageName + imageIndex + ".jpg");

  imageIndex++;
}
public void mousePressed() {
  if (doSelect) {
    if (mouseX > 0 && mouseX < 380 && mouseY > 0 && mouseY < 300) {
      showScene(1);
    }
    if (mouseX > 380 && mouseX < 670 && mouseY > 0 && mouseY < 380) {
      showScene(2);
    }
    if (mouseX > 670 && mouseX < 980 && mouseY > 0 && mouseY < 330) {
      showScene(3);
    }
    if (mouseX > 980 && mouseX < width && mouseY > 0 && mouseY < 300) {
      showScene(4);
    }
    if (mouseX > 0 && mouseX < 200 && mouseY > 300 && mouseY < 580) {
      showScene(5);
    }
    if (mouseX > 200 && mouseX < 670 && mouseY > 380 && mouseY < 580) {
      showScene(6);
    }
    if (mouseX > 670 && mouseX < 810 && mouseY > 330 && mouseY < 700) {
      showScene(7);
    }
    if (mouseX > 810 && mouseX < 1000 && mouseY > 330 && mouseY < 600) {
      showScene(8);
    }
    if (mouseX > 1000 && mouseX < width && mouseY > 330 && mouseY < 500) {
      showScene(10);
    }
    if (mouseX > 1000 && mouseX < width && mouseY > 500 && mouseY < height) {
      showScene(9);
    }
  }
  doSelect = !doSelect;
}

public void mouseReleased() {
}

public void keyPressed() {
  println("pressed key " +  keyCode + " ");
  switch(keyCode) {
  case 82: //
    isOpname = !isOpname;
    if (recorder.isRecording()) {
      recorder.endRecord();
    } else {
      recorder.beginRecord();
    }
    break;

  case 80: // p
    if (isRunning) {
      //palette.show(width,height);
      noLoop();
      isRunning = false;
    } else {
      loop();
      isRunning = true;
    }
    break;
  case 71: // g
    // gifExport.finish(); 
    println ("Export: " + imageName + imageIndex + ".gif" + " ");
    imageIndex++;
    break;
  case 83: //s
    if (isRunning) {
      noLoop();
      isRunning = false;
      saveImage();
    } else {
      loop();
      isRunning = true;
    }
    break;

  case 70: // f
    if (isRunning) {
      println("frameRate: " + frameRate + " ");
    }
    break;

  case 32:
    showScene(0);
    break;
  case 48:
    showScene(10);
    break;
  case 49:
    showScene(1);
    break;
  case 50:
    showScene(2);
    break;
  case 51:
    showScene(3);
    break;
  case 52:
    showScene(4);
    break;
  case 53:
    showScene(5);
    break;
  case 54:
    showScene(6);
    break;
  case 55:
    showScene(7);
    break;
  case 56:
    showScene(8);
    break;
  case 57:
    showScene(9);
    break;
  }
}
public void initGifMaker() {

  // gifExport = new GifMaker(this, imageName + imageIndex + ".gif");
  // gifExport.setRepeat(0);             // make it an "endless" animation
  // gifExport.setTransparent(0,0,0);    // black is transparent
}

public void showScene(int nr) {


  switch(nr) {
  case 0:
    {  
      if (machine1.trailrunner1.isStarted) {
        machine1.end();
      }
      if (machine2.trailrunner1.isStarted) {
        machine2.end();
      }
      if (machine3.trailrunner1.isStarted) {
        machine3.end();
      }
      if (machine4.trailrunner1.isStarted) {
        machine4.end();
      }
      // if(machine5.trailrunner1.isStarted){
      //   machine5.end();
      // }

      if (machine6.trailrunner1.isStarted) {
        machine6.end();
      }
      if (machine7.trailrunner1.isStarted) {
        machine7.end();
      }
      if (machine8.trailrunner1.isStarted) {
        machine8.end();
      }
      if (machine9.trailrunner1.isStarted) {
        machine9.end();
      }
      // if(machine0.trailrunner1.isStarted){
      // machine0.trailrunner1.stop();

      // }
      break;
    }
  case 1:
    if (machine1.isStarted) {
      machine1.stop();
    } else {
      machine1.start(-400, 220);
    }
    break; 

  case 2: 
    if (machine2.isStarted) {
      machine2.stop();
    } else {
      machine2.start(-100, 220);
    }
    break; 

  case 3:
    if (machine3.isStarted) {
      machine3.stop();
    } else {
      machine3.start(-100, 220);
    }
    break; 

  case 4:
    if (machine4.isStarted) {
      machine4.stop();
    } else {
      machine4.start(-100, 220);
    }
    break;

  case 5:
    if (machine5.isStarted) {
      machine5.stop();
    } else {
      machine5.start(-100, 220);
    }
    break; 

  case 6:
    if (machine6.isStarted) {
      machine6.stop();
    } else {
      machine6.start(-100, 220);
    }
    break; 

  case 7:
    if (machine7.isStarted) {
      machine7.stop();
    } else {
      machine7.start(-100, 220);
    }
    break; 

  case 8:
    if (machine8.isStarted) {
      machine8.stop();
    } else {
      machine8.start(random(0, width), -50);
    }
    break; 

  case 9:
    if (machine9.isStarted) {
      machine9.stop();
    } else {
      machine9.start(-100, 500);
    }
    break; 
  case 10:
    if (machine0.isStarted) {
      machine0.stop();
    } else {
      machine0.start(-100, 220);
    }
    break;
  }
}

public void exit()
{
  //synth.free();
  super.exit();
}
class Connector{
  
  float x, y;
  float sz;
  boolean isConnected;
  boolean active;
  
  Connector(float px, float py, float psz){
    x = px;
    y = py;
    sz = psz;
    isConnected = false;
    
  }
  public void draw(PGraphics pg, boolean active){
    //println(pg.width + ","+ pg.height  + ","+ x + ","+ y  + ","+ isConnected);
   
    
    if(isConnected){
      pg.beginDraw();
      
      if(active){
        pg.stroke(color(255,0,0));
      }
      else{
        pg.stroke(color(50));
      }
      pg.strokeWeight(1);
      pg.fill(color(175));
      pg.ellipse(x,y,sz,sz);
      pg.strokeWeight(sz/10);
      pg.line(x -(sz/2) + (sz/10), y, x+(sz/2) - (sz/10), y);
      
      
      //highlight
      pg.fill(color(255));
      pg.noStroke();
      pg.ellipse( x-(sz/5), y-(sz/5), (sz/5),(sz/5));
      pg.stroke(color(255));
      pg.strokeWeight(sz/10);
      pg.line( x -(sz/2) + (sz/10), y -(sz/10), x+(sz/2) - (sz/10), y-(sz/10));
      
      pg.endDraw();
      
      
    }
  }
  
};

class Pos{
  float x,y;
  
  Pos(float px, float py){
    x = px;
    y =py;
  }
  Pos(){
    x = 0;
    y = 0;
  }
};
class SineInstrument implements Instrument
{
  Oscil wave;
  Line  ampEnv;
  
  SineInstrument( float frequency )
  {
    // make a sine wave oscillator
    // the amplitude is zero because 
    // we are going to patch a Line to it anyway
    wave   = new Oscil( frequency, 0, Waves.SINE );
    ampEnv = new Line();
    ampEnv.patch( wave.amplitude );
  }
  
  // this is called by the sequencer when this instrument
  // should start making sound. the duration is expressed in seconds.
  public void noteOn( float duration )
  {
    // start the amplitude envelope
    ampEnv.activate( duration, 0.5f, 0 );
    // attach the oscil to the output so it makes sound
    wave.patch( out );
  }
  
  // this is called by the sequencer when the instrument should
  // stop making sound
  public void noteOff()
  {
    wave.unpatch( out );
  }
}

class SquareInstrument implements Instrument
{
  Oscil square;
  Line  ampEnv;
  float amplitude;
  
  SquareInstrument( float frequency, float amp )
  {
    // make a sine wave oscillator
    // the amplitude is zero because 
    // we are going to patch a Line to it anyway
    square   = new Oscil( frequency, 0, Waves.SQUARE );
    ampEnv = new Line();
    amplitude = amp;
    ampEnv.patch( square.amplitude  );
  }
  
  // this is called by the sequencer when this instrument
  // should start making sound. the duration is expressed in seconds.
  public void noteOn( float duration )
  {
    // start the amplitude envelope
    ampEnv.activate( duration, amplitude, 0 );
    // attach the oscil to the output so it makes sound
    square.patch( out );
  }
  
  // this is called by the sequencer when the instrument should
  // stop making sound
  public void noteOff()
  {
    square.unpatch( out );
  }
}
class Leg {
  
   char side;
   int direction;
   float speed;
   float legangle1, legangle2, footangle;
   float a;
   int fillcolor, strokecolor;
  
   
   //machine onderdelen
   PVector top;
   PVector[] structure;
   Rod[] rods;
   
   
   Leg(int pfillcolor, int pstrokecolor, char pside){
     
     fillcolor = pfillcolor;
     strokecolor = pstrokecolor;
     side = pside;
     rods = new Rod[3];
     
     structure = new PVector[3];
     structure[0] = new PVector(0,0);
     
     rods[0] = new Rod(80, 20, fillcolor, strokecolor);
     rods[1] = new Rod(70, 20, fillcolor, strokecolor);
     rods[2] = new Rod(50, 20, fillcolor, strokecolor);
     
     legangle1 = 90;
     legangle2 = 90;
     footangle = 0;
     direction = 1;
     speed =0;
     a = 0;
     
    
     
   }
   public void buildMachine(){
      
     
      
     rods[0].set(getAbsPos(0), 0, legangle1); 
     nextStructure(1, rods[0].getVector(0,1) , legangle1);
     rods[1].set(getAbsPos(1), 0, legangle2); 
     
     nextStructure(2, rods[1].getVector(0,1) , legangle2);
     if(side == 'l'){
       rods[2].set(getAbsPos(2), 0, footangle);
     }
     else{
       rods[2].set(getAbsPos(2), 0, footangle + 140);
     }
     
     
      
   }
   

   public void nextStructure(int i , PVector pv, float pangle){
          
     structure[i] = pv.copy();
     structure[i].rotate(radians(pangle));
     
   }
   
   public PVector getAbsPos(int s){
     PVector abspos = structure[0].copy();
    
     for (int i = 1; i < structure.length; i++){
       if(i <= s){
         abspos.add(structure[i]);
       }
     }
     return abspos;
   }
   
 
   public void move(PVector abs, float pspeed ){
       speed = pspeed;
       a = a + speed;
       legangle1 =  map(sin(a), -1,1, 110,45);
       legangle2 =  map(sin(a), -1,1,  90,90);
       footangle =  map(sin(a), -1,1, 0, 45);
      
      structure[0] = abs.copy();
      buildMachine();
   }
  
     
};
 class Arm {
  
   
   char side;
   float speed;
   float legangle1, legangle2, footangle;
   float a;
   int fillcolor, strokecolor, paintcolor;
  
  
   
   //machine onderdelen
   PVector top;
   PVector[] structure;
   Rod[] rods;
   Wheel[] wheels;
   Squirt squirt;
   float shoulderangle, upperarmangle, elbowangle, underarmangle, handangle;
   
   
 Arm(int pfillcolor, int pstrokecolor, int ppaintcolor, char pside){
     
     fillcolor = pfillcolor;
     strokecolor = pstrokecolor;
     paintcolor = ppaintcolor;
     side = pside;
     
     
     
     structure = new PVector[6];
     structure[0] = new PVector(0,0);
     
     rods = new Rod[2];
     rods[0] = new Rod(70, 20, fillcolor, strokecolor);
     rods[1] = new Rod(60, 20, fillcolor, strokecolor);
     
     wheels = new Wheel[3];
     wheels[0] = new Wheel(30,30,  fillcolor, strokecolor);
     wheels[1] = new Wheel(20,20,  fillcolor, strokecolor);
    
     
     squirt = new Squirt(60, 20, fillcolor, strokecolor, paintcolor);
     
     
     shoulderangle = 30;
     upperarmangle = 30;
     elbowangle = 30;
     underarmangle = 30;
     handangle = 30;
     
     
     speed =0;
     a = 0;
     
    
     
   }
   public void buildArm(){
      
     
     wheels[0].set(getAbsPos(0), 0, shoulderangle); 
     if(side == 'l'){
       //leftside
       nextStructure(1, wheels[0].getVector(0,1) , shoulderangle);
       rods[0].set(getAbsPos(1), 0, upperarmangle); 
     nextStructure(2, rods[0].getVector(0,1) , upperarmangle);
     wheels[1].set(getAbsPos(0), 4, elbowangle); 
     nextStructure(3, wheels[1].getVector(4,2) , elbowangle);
     rods[1].set(getAbsPos(3), 0, underarmangle); 
     nextStructure(4, rods[1].getVector(0,1) , underarmangle); 
     squirt.set(getAbsPos(4), 0, handangle);
     nextStructure(5, squirt.getVector(0,1) , handangle); 
     }
     else{
       //rightside
       nextStructure(1, wheels[0].getVector(0,3) , shoulderangle + 180);
       rods[0].set(getAbsPos(1), 0, upperarmangle + 180); 
     nextStructure(2, rods[0].getVector(0,1) , upperarmangle + 180);
     wheels[1].set(getAbsPos(0), 4, elbowangle + 180); 
     nextStructure(3, wheels[1].getVector(4,2) , elbowangle + 180);
     rods[1].set(getAbsPos(3), 0, underarmangle + 180); 
     nextStructure(4, rods[1].getVector(0,1) , underarmangle + 180); 
     squirt.set(getAbsPos(4), 0, handangle + 180);
     nextStructure(5, squirt.getVector(0,1) , handangle + 180); 
     }
     
     
     
     
   }
   

   public void nextStructure(int i , PVector pv, float pangle){
          
     structure[i] = pv.copy();
     structure[i].rotate(radians(pangle));
     
   }
   
   public PVector getAbsPos(int s){
     PVector abspos = structure[0].copy();
    
     for (int i = 1; i < structure.length; i++){
       if(i <= s){
         abspos.add(structure[i]);
       }
     }
     return abspos;
   }
   
 
   public void move(PVector abs, float pspeed ){
       speed = pspeed;
       a = a + speed;
       shoulderangle =  map(sin(a), -1,1, 70, -110);
       upperarmangle =  map(sin(a), -1,1,  70, -110);
       elbowangle =  map(sin(a), -1,1,  70, -70);
       underarmangle =  map(sin(a), -1,1, 70, -70);
       handangle =  map(sin(a), -1,1, 0,360);
      
      structure[0] = abs.copy();
      buildArm();
      
     
   }
  
     
};


   
   
  
class Machine {
  RPalette palette;
  int[] colors;
  //color paintcolor1, paintcolor2;
  
  Trailrunner trailrunner1;
  Trailrunner trailrunner2;
  Trailrunner trailrunner3;
  Trailrunner trailrunner4;
  
  
  boolean isStarted;
  
  float a; //angleseed;
  int direction;
  float speed;

  PVector[] structure;
  
  Machine() {

    palette = new RPalette(10);
    colors = palette.colors;
    //paintcolor1 = palette.randomColor();
    //paintcolor2 = palette.randomColor();
    
    isStarted = false;
    structure = new PVector[14];
    structure[0] =new  PVector(0, 0);
       
    a = 10;
    direction = 1;
    speed =0.1f;
   
  }
  

  public void nextStructure(int i, PVector pv, float pangle) {
    structure[i] = pv.copy();
    structure[i].rotate(radians(pangle));
  }
  

  public PVector getAbsPos(int s) {
    PVector abspos = structure[0].copy();

    for (int i = 1; i < structure.length; i++) {
      if (i <= s) {
        abspos.add(structure[i]);
      }
    }
    return abspos;
  }
   public PVector getStructure(PVector pv, PVector v, float pangle) {
    PVector abspos = pv.copy();
    v.rotate(radians(pangle));
    abspos.add(v);

    return abspos;
  }
  public void start(float x, float y) {
    //paintcolor1 = palette.randomColor();
    //paintcolor2 = palette.randomColor();
   
    structure[0].x = x;
    structure[0].y = y;
    isStarted = true;
  }
  public void stop() {
    a=0;
    isStarted = false;
  }
  public void end(){
    if(trailrunner1 != null){
    trailrunner1.trail = new  ArrayList<PVector>();
    trailrunner1.isStarted = false;
}
  if(trailrunner2 != null){
    trailrunner2.trail = new  ArrayList<PVector>();
    trailrunner1.t = 0;
    trailrunner2.t = 0;
    trailrunner2.isStarted = false;
  }
}
};
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
  public void buildMachine() {

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

  public void show(float x, float y) {
     stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }

  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.01f;

      if (a > 1000) { 
        stop();
      }
    }
  }
  public void start(float x, float y) {

    super.start(x, y);
    structure[0].x = -100;
    structure[0].y = 0;
    speed =  random(1, 2);
  }
  public void run() {
    if (isStarted) {
      
      if ((structure[8].y < 1 || structure[8].y > 759)&& random(10) <1) {
        isPainting = !isPainting;
      }
      if (isPainting) {
        moveBetween(-100, width+50, 0);
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( structure[7].y, height, 0, 200, 800 );
          out.playNote( 0.0f, 0.5f, new SquareInstrument( freq, 0.01f) );
        }
      } else {
        moveBetween(-100, width+50, speed);
      }
    }
  }
};
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
  public void buildMachine() {

    rods[0] = new Rod(60, 10, colors[1], colors[2]);   //tail
    rods[1] = new Rod(100, 20, colors[1], colors[2]);  //neck
    plates[0] = new Plate(100, 40, colors[3], colors[2]); //belly
    plates[1] = new Plate(60, 60, colors[5], colors[2]);  //head
    rods[2] = new Rod(140, 10, colors[6], colors[2]);

    plates[1].connectAll();
    rods[0].set(getAbsPos(0), 1, tailangle); 
    plates[0].set(getAbsPos(0), 0, 0);
    nextStructure(1, plates[0].getVector(0, 3), 0);
    legs[0].move(getAbsPos(1), 0.1f);
    legs[1].move(getAbsPos(1), -0.1f);
    nextStructure(2, plates[0].getVector(3, 2), 0);
    legs[2].move(getAbsPos(2), 0.1f);
    legs[3].move(getAbsPos(2), -0.1f);

    nextStructure(3, plates[0].getVector(2, 1), 0);
    rods[1].set(getAbsPos(3), 0, neckangle);

    nextStructure(4, rods[1].getVector(0, 1), neckangle);
    plates[1].set(getAbsPos(4), 0, -45);

    nextStructure(5, plates[1].getVector(0, 2), -45); 
    arms[0].move(getAbsPos(5), 0.03f);
  }

public void show(float x, float y){
   stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
    
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  + random(0.1f, 1);
    }
  }
  
  public void start(float x, float y) {
    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      structure[0].y = random(220, 600);
    }
  }
  public void run() {
    if (isStarted) {
      
      
        moveBetween(0, width, 2);
        int paint = palette.randomColor();
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, paint, 10,  trailrunner1.trail);
        
        if (withSound) {
            // when providing an Instrument, we always specify start time and duration
            float freq = map( arms[0].squirt.painter.y, height, 0, 110, 880 );
            out.playNote( 0.0f, 0.2f, new SineInstrument( freq ) );
            
        }
    }
    else if(trailrunner1.isStarted){
      trailrunner1.run();
    }
  }
  
  public void stop(){
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner1.start(1,colors[3], colors[4],-25,25 );
    }
  }

  
};
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
  public void buildMachine() {

    plates[0].set(getAbsPos(0), 2, angle);
    
    nextStructure(1, plates[0].getVector(2, 1), angle);
    legs[0].move(getAbsPos(1), 0.05f);
    nextStructure(2, plates[0].getVector(1, 3), angle);
    legs[1].move(getAbsPos(2), 0.07f);
    nextStructure(3, plates[0].getVector(3, 0), angle);
    rods[0].set(getAbsPos(3), 0, -neckangle);
    nextStructure(4, rods[0].getVector(0, 1), -neckangle);
    wheels[1].set(getAbsPos(4), 0, -angle);
    nextStructure(5, wheels[1].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(3), 0.03f);
    nextStructure(6, wheels[1].getVector(1, 3), -angle);
    arms[1].move(getAbsPos(3), 0.04f);
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.05f;
      if (a > 1000) { 
        stop();
      }
    }
  }
  public void show(float x, float y){
     stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
     
  }
  public void start(float x, float y) {
    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].y = random(300, 650);
    }
    
  }
  public void run() {
    if (isStarted) {
      moveBetween(0, width+ 100, random(3));
      
      if (frameCount % 13 == 0) {
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, colors[5], 2,  trailrunner1.trail);
        arms[1].squirt.paintLines(painting, arms[1].squirt.painter, colors[6], 2,  trailrunner2.trail);
      
        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( arms[0].squirt.painter.y, height, 0, 110, 880 );
          out.playNote( 0.0f, 0.2f, new SineInstrument( freq ) );
          freq = map( arms[1].squirt.painter.y, height, 0, 110, 880 );
          out.playNote( 0.0f, 0.2f, new SineInstrument( freq ) );
        }
      }
    }
    else if(trailrunner1.isStarted){
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  public void stop(){
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    trailrunner1.start( 0.5f,colors[5],colors[5],-5,0);
    trailrunner2.start( 0.5f,colors[6],colors[6],0,5);
    }
  }
};
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
  public void buildMachine() {


    wheels[0].set(getAbsPos(0), 0, angle);
    nextStructure(1, wheels[0].getVector(0, 1), angle);
    legs[0].move(getAbsPos(1), 0.05f);
    nextStructure(2, wheels[0].getVector(1, 3), angle);
    legs[1].move(getAbsPos(2), 0.07f);
    nextStructure(3, wheels[0].getVector(3, 4), angle);
    rods[0].set(getAbsPos(3), 0, -neckangle);
    nextStructure(4, rods[0].getVector(0, 1), -neckangle);
    wheels[1].set(getAbsPos(4), 0, -angle);
    nextStructure(5, wheels[1].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(5), 0.03f);
    nextStructure(6, wheels[1].getVector(1, 3), -angle);
    arms[1].move(getAbsPos(6), 0.04f);
  } 
public void show(float x, float y){
   stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.05f;
      if (a > 1000) { 
        stop();
      }
    }
  }
  public void start(float x, float y) {
    if(!isStarted){
      super.start(x, y);
      //arms[0].squirt.paintcolor = paintcolor1;
      //arms[1].squirt.paintcolor = paintcolor2;
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].y = random(220, 600);
    }
  }
  public void run() {
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
          out.playNote( 0.0f, 0.2f, new SineInstrument( freq ) );
          if (frameCount % 60== 0) {
            freq = map( arms[1].squirt.painter.y, height, 0, 200, 1200  );
            out.playNote( 0.2f, 0.5f, new SineInstrument( freq ) );
          }
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  public void stop() {
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    trailrunner1.start( 1, colors[1], colors[1], 5, 50);
    trailrunner2.start( 1, colors[2], colors[2], diameter,diameter + 50);
    }
  }
};
class Machine4 extends Machine{
  
  
  
  //machine onderdelen
  
  Wheel[] wheels;
  Rod[] rods;
  Plate[] plates;
  Arm[] arms;
  float angle, rangle;
  
  Machine4() {

    trailrunner1 = new Trailrunner("lines");
    trailrunner2 = new Trailrunner("dots");
    
    rangle = -90;
    angle = -90;
   
    wheels = new Wheel[2];
    wheels[0] = new Wheel(100,100, colors[3], colors[2]);
    wheels[1] = new Wheel(40, 40, colors[3], colors[2]);
    
    
    arms = new Arm[2];
    arms[0] = new Arm(colors[7], colors[2], colors[6], 'l');
    arms[1] = new Arm(colors[7], colors[2], colors[4], 'r');
    rods = new Rod[8];
    rods[0] = new Rod(100, 15, colors[2], colors[2]);  
    rods[1] = new Rod(60, 15, colors[2], colors[2]);  
    rods[2] = new Rod(60, 15, colors[2], colors[2]);  
    rods[3] = new Rod(60, 15, colors[2], colors[2]);  
    rods[4] = new Rod(60, 15, colors[2], colors[2]);  
    rods[5] = new Rod(60, 15, colors[2], colors[2]);  
    rods[6] = new Rod(60, 15, colors[2], colors[2]);  
    rods[7] = new Rod(60, 15, colors[2], colors[2]);  
    
    plates = new Plate[1];
    plates[0] = new Plate(100, 60, colors[6], colors[2]);  
    
   
  }
  public void buildMachine() {
    
    rods[0].set(getAbsPos(0), 0,rangle);
    wheels[0].set(getAbsPos(0),0, 0);
    nextStructure(1, rods[0].getVector(0, 1), rangle);
    rods[1].set(getAbsPos(1), 0,-angle);
    nextStructure(2, rods[1].getVector(0, 1),- angle);
    rods[2].set(getAbsPos(2), 0,angle);
    nextStructure(3, rods[2].getVector(0, 1), angle);
    rods[3].set(getAbsPos(3), 0,-angle);
    nextStructure(4, rods[3].getVector(0, 1), -angle);
    rods[4].set(getAbsPos(4), 0,angle);
    nextStructure(5, rods[4].getVector(0, 1), angle);
    rods[5].set(getAbsPos(5), 0,-angle);
    nextStructure(6, rods[5].getVector(0, 1), -angle);
    rods[6].set(getAbsPos(6), 0,angle);
    nextStructure(7, rods[6].getVector(0, 1), angle);
    rods[7].set(getAbsPos(7), 0,-angle);
    nextStructure(8, rods[7].getVector(0, 1), -angle);
    arms[0].move(getAbsPos(5), 0.03f);
    nextStructure(9, rods[0].getVector(0, 1), angle);
    arms[1].move(getAbsPos(8), 0.03f);
     
        
   
  } 

public void show(float x, float y){
   stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
  }
  
  public void moveBetween(float min, float max, float speed) {

    if (isStarted) {

      if (structure[0].x > max ) {
        direction = -1;  //backwards
        stop();
       
      }
      if (structure[0].x < min) {
        direction = 1;   //forward
      }

      structure[0].x += direction * speed;
      float dif = map(sin(a) ,-1,1, -10,10);
      structure[0].y = constrain(structure[0].y + dif, 220, 600);
      if(direction == 1){
        rangle = map(noise(a), 0,1, -60, -120);
        angle = map(sin(a), -1, 1, 90, -90);
        
      }
      else{
        rangle = map(noise(a), 0,1, -60, -120);
        angle = map(sin(a), -1, 1, -90, -270);
         
      }
      buildMachine();
      a = a  +0.005f;
      if(a > 1000){ 
        stop();          
      }
    }
  }
  public void start(float x, float y) {

    if(!isStarted){
      super.start(x,y);
      arms[0].squirt.lastpainter = null;
      arms[1].squirt.lastpainter = null;
      structure[0].x = -300;
      structure[0].y = random(220, 600);
      angle = -90;
    }   
  }
  public void run() {
    if (isStarted) {
      moveBetween(-300, width+300, random(15));
     
    // if (frameCount % 15 == 0) {
        
        arms[0].squirt.paintLines(painting, arms[0].squirt.painter, arms[0].squirt.paintcolor, 2,  trailrunner1.trail);
        
       
        if (frameCount % 10 == 0) {
        int paint = colors[floor(random(10))];
        arms[1].squirt.paintDots(painting, arms[1].squirt.painter,paint, 30, trailrunner2.trail);
        }
      
        if (withSound) {
         float freq = map( arms[0].squirt.painter.y,height, 0, 100, 900 );
          out.playNote( 0.0f, 0.2f, new SineInstrument( freq ) );
         }
      
    }
   else if(trailrunner1.isStarted){
      trailrunner1.run();
      trailrunner2.run();
    }
  }
 public void stop(){
   if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    
    trailrunner1.start( 1,arms[0].squirt.paintcolor,arms[0].squirt.paintcolor,-10,10);
    trailrunner2.start( 1,arms[1].squirt.paintcolor,arms[1].squirt.paintcolor,0,100);
   }
  }
};
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
  public void buildMachine() {
    
    
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
public void show(float x, float y){
     stop();
     structure[0].x = x;
     structure[0].y = y;
     buildMachine();
  }

  
  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.005f;
      b = b + 0.3f;
      if(a > 1000){ 
        stop();          
      }
    }
  }
  public void start(float x, float y) {
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
  public void run() {
    if (isStarted) {
      moveBetween(-100, width+100, speed);
      squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, 1, null);
      squirts[1].paintLines(painting, squirts[1].painter, squirts[1].paintcolor, 1, null);
      squirts[2].paintLines(painting, squirts[2].painter, squirts[2].paintcolor, 1, null);
      squirts[3].paintLines(painting, squirts[3].painter, squirts[3].paintcolor, 1, null);
       
      
        if (withSound) {
         // when providing an Instrument, we always specify start time and duration
         float freq = map( squirts[0].painter.y,height, 0, 100, 900 );
         out.playNote( 0.0f, 0.1f, new SineInstrument( freq ) );
          freq = map( squirts[1].painter.y,height, 0, 100, 900 );
           out.playNote( 0.1f, 0.1f, new SineInstrument( freq ) );
           freq = map( squirts[2].painter.y,height, 0, 100, 900 );
            out.playNote( 0.2f, 0.1f, new SineInstrument( freq ) );
            freq = map( squirts[3].painter.y,height, 0, 100, 900 );
            out.playNote( 0.3f, 0.f, new SineInstrument( freq ) );
         
        }
        }
      
  }
 public void stop() {
   if(isStarted){
      squirts[0].lastpainter = null;
      squirts[1].lastpainter = null;
      squirts[2].lastpainter = null;
      squirts[3].lastpainter = null;
    super.stop();
   }
    
         
  }
};
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
  public void buildMachine() {


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
  public void show(float x, float y) {
    stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.005f;
      b = b + 0.03f;
      if (a > 1000) { 
        stop();
      }
    }
  }
  public void start(float x, float y) {
if(!isStarted){
    super.start(x, y);
    squirts[0].lastpainter = null;
    squirts[1].lastpainter = null;
    structure[0].x = -400;
    structure[0].y = random( 100, height-100);
    speed =  random(1, 4);
}
  }
  public void run() {
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
           out.playNote( 0.1f, 0.1f, new SineInstrument( freq ) );
           out.playNote( 0.2f, 0.1f, new SineInstrument( freq ) );
          
          //synth.set("freq", freq); 
         // synth.set("t_gate", 1);
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  public void stop() {
    if(isStarted){
    super.stop();
    trailrunner1.trail.add(new PVector(-1,-1));
    trailrunner2.trail.add(new PVector(-1,-1));
    trailrunner1.start( 1, colors[1], colors[1],  1, 5);
    trailrunner2.start( 1, colors[2], colors[2],  3, 7);
    }
  }
};
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
  public void buildMachine() {

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
  public void show(float x, float y) {
   stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a + 0.005f;
      b = b + 0.03f;
      
    }
  }
  public void start(float x, float y) {
    if (!isStarted) {
      super.start(x, y);
      squirts[0].lastpainter = null;
      structure[0].x = -400;
      structure[0].y = random( 100, height-100);
      speed =  random(1, 4);
    }
  }
  public void run() {
    if (isStarted) {
      moveBetween(-400, width+400, speed);
      if (frameCount % 75 == 0) {
        diameter = random( 10,200);
        squirts[0].paintRect(painting, squirts[0].painter,  squirts[0].paintcolor, diameter, trailrunner1.trail);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 100, 900 );
          out.playNote( 0.0f, 0.1f, new SineInstrument( freq ) );
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
    }
  }
  public void stop() {
    if (isStarted) {
      super.stop();
      trailrunner1.trail.add(new PVector(-1, -1));
      trailrunner1.start( 1, colors[5],colors[5], 0, 100);
    }
  }
};
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
  public void buildMachine() {

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
  public void show(float x, float y) {
   stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.1f;

      if (a > 1000) { 
        stop();
      }
    }
  }

  public void start(float x, float y) {
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

  public void run() {
    if (isStarted) {
      moveBetween(-50, height +200, speed);
      if (frameCount % 5 == 0) {
        squirts[0].paintLines(painting, squirts[0].painter, squirts[0].paintcolor, 2, trailrunner1.trail);
        squirts[1].paintSpaceLines(painting, squirts[1].painter, squirts[1].paintcolor, 2, null);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 100, 900 );
          out.playNote( 0.0f, 0.1f, new SineInstrument( freq ) );
        }
      }
      if (frameCount % 17 == 0) {
        int paint= colors[floor(random(10))];
        squirts[2].paintDots(painting, squirts[2].painter, paint, 20, trailrunner2.trail);

        if (withSound) {
          // when providing an Instrument, we always specify start time and duration
          float freq = map( squirts[0].painter.y, height, 0, 900, 2000 );
          out.playNote( 0.0f, 0.1f, new SineInstrument( freq ) );
        }
      }
    } else if (trailrunner1.isStarted) {
      trailrunner1.run();
      trailrunner2.run();
    }
  }
  public void stop() {
    if (isStarted) {
      super.stop();
      trailrunner1.trail.add(new PVector(-1, -1));
      trailrunner2.trail.add(new PVector(-1, -1));
      
      trailrunner1.start(0.5f, squirts[0].paintcolor, squirts[0].paintcolor, 0, 10);
      trailrunner2.start( 0.5f, squirts[2].paintcolor, squirts[2].paintcolor, 0, 100);
    }
  }
};
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
  public void buildMachine() {


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
  public void show(float x, float y) {
   stop();
    structure[0].x = x;
    structure[0].y = y;
    buildMachine();
  }


  public void moveBetween(float min, float max, float speed) {

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
      a = a  +0.005f;
      if (a > 1000) { 
        stop();
      }
    }
  }
  public void start(float x, float y) {
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
  public void run() {
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
            out.playNote( 0.0f, 0.02f, new SineInstrument( freq ) );
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
  public void stop() {
    if (isStarted) {
      super.stop();
      trailrunner1.trail.add(new PVector(-1, -1));
      trailrunner2.trail.add(new PVector(-1, -1));
      trailrunner1.start( 1, squirts[0].paintcolor, squirts[0].paintcolor, 5, 50);
      trailrunner2.start( 1, squirts[0].paintcolor, squirts[0].paintcolor, diameter, diameter + 10);
    }
  }
};
// interface Element {
//   //Let's abstract display()
//   int getWidth();
//   int getHeight();
//   int getFillColor();
//   int getStrokeColor(); 
  
//   int getActiveConnector();
//   int getConnectorSize();
//   PVector getAbsPos(int con);
//   void set(PVector pv, int con, float pangle);
  
//   void show(PVector pv);
//   void showConnectors();
//   void draw();
  
//   boolean isMouseOnElement(float x, float y);
//  // void drag(float x, float y);
//   void activateConnector(int con);
//   void activateNextConnector();
// }

// class Part{
  
//  Element elem;
//  int con;
//  float angle;
 
//  Part(Element pelem, int pcon, float pangle){
   
//    elem = pelem;
//    con = pcon;
//    angle = pangle;
//  }
 
   
// }


class Squirt {

  PGraphics pg;
  PVector abspv;
  PVector top;
  int fillcolor;
  int strokecolor;
  int paintcolor;
  Connector[] connectors;
  PVector[] v;
  float cs = 5; //connectorsize
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  Pos painter, lastpainter;
  float thickness;



  Squirt(int pwidth, int pheight, int pfillcolor, int pstrokecolor, int ppaintcolor) {


    pg = createGraphics(pwidth + 1, pheight + 1);
    top = new PVector(0, 0);
    strokecolor = pstrokecolor;
    fillcolor = pfillcolor;
    paintcolor = ppaintcolor;
    initConnectors();
  }
  public void initConnectors() {
    connectors = new Connector[2];
    v = new PVector[2];


    v[0] = new PVector(cs, pg.height/2);                   //van top naar c0
    v[1] = new PVector(pg.width, pg.height/2);       //van top naar c1 

    PVector cv0 = top.copy();
    cv0.add(v[0]);
    PVector cv1 = top.copy();
    cv1.add(v[1]);


    connectors[0] = new Connector(cv0.x, cv0.y, cs);
    connectors[1] = new Connector(cv1.x, cv1.y, cs);
    activeconnector = 0;
    activateConnector(activeconnector);
  }
  public void drawConnectors() {
    for (int i =0; i < connectors.length; i++) {
      connectors[i].draw(pg, false); 
     
    }
  }
  public void connect(int con) {
    connectors[con].isConnected = true;
  }
  public void disconnect(int con) {
    connectors[con].isConnected = false;
  }
  public void connectAll() {
    for (int i =0; i < connectors.length; i++) {
      connectors[i].isConnected = true;
    }
  }
  public void draw() {

    pg.beginDraw();
    pg.stroke(strokecolor);
    pg.strokeWeight(1);
    pg.fill(fillcolor);

    //pg.rect(pg.width/4,0, pg.width/4, pg.height,10);
    pg.rect(0, pg.height/4, pg.width/4, pg.height/2, 10);
    pg.fill(paintcolor);
    pg.ellipse(pg.width/8 + pg.height/2, pg.height/2, pg.height-1, pg.height-1);
    pg.fill(fillcolor);
    pg.rect(pg.width/2, pg.height/2-cs, pg.width/2, 2*cs, 10);
    pg.endDraw();

    drawConnectors();
  }
  public void set(PVector pv, int con, float pangle) {

    angle = pangle;
    top = new PVector(0, 0);
    top.sub(v[con]);
    connect(con);
    currentconnector = con;
    abspv = pv.copy();


    draw();

    //move and turn
    pushMatrix();
    translate(pv.x, pv.y);
    rotate(radians(angle));
    image(pg, top.x, top.y);
    popMatrix();

    PVector hand = v[1].copy();
    hand.rotate(radians(angle));
    hand.add(abspv);
    painter = new Pos(hand.x, hand.y);
  }
  public void show(PVector pv) {
    angle = 20;
    abspv = pv.copy();
    draw();

    //move and turn
    pushMatrix();
    translate(pv.x, pv.y);
    rotate(radians(angle));
    image(pg, 0, 0);
    popMatrix();
  }
  public void showConnectors() {
    for (int i = 0; i < connectors.length; i ++) {
      connect(i);
    }
  }
  public void activateConnector(int con) {
    for (int i = 0; i < connectors.length; i ++) {
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }

  public int getActiveConnector() {
    return activeconnector;
  }
  public void activateNextConnector() {
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  public int getConnectorSize() {
    return connectors.length;
  }
  public int getFillColor() {
    return fillcolor;
  }
  public int getStrokeColor() {
    return strokecolor;
  }
  public int getWidth() {
    return pg.width;
  }
  public int getHeight() {
    return pg.height;
  }

  public PVector getVector(int confrom, int conto) {
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  public PVector getAbsPos(int con) {
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  public boolean isMouseOnElement(float x, float y) {
    boolean on = false;
    if (x > abspv.x && x < abspv.x + pg.width) {
      if (y > abspv.y && y < abspv.y + pg.height) {
        on = true;
      }
    }
    return on;
  }
  public void paintRect( PGraphics painting, Pos painter, int paint, float pdiameter, ArrayList<PVector> trail) {

    if(painter.x >= 0 && painter.x <= width && painter.y >= 0 && painter.y <= height){
      trail.add(new PVector(painter.x, painter.y));
    }
    painting.beginDraw();
    painting.rectMode(CENTER);
    
    painting.fill(paint);

    painting.noStroke();
    painting.rect(painter.x, painter.y, pdiameter, pdiameter);
    painting.endDraw();

    lastpainter = new Pos( painter.x, painter.y);
  }

  public void paintDots( PGraphics painting, Pos painter, int paint, float pdiameter, ArrayList<PVector> trail) {

    if (trail != null) {
      trail.add(new PVector(painter.x, painter.y));
    }
    painting.beginDraw();
    painting.fill(paint);

    painting.noStroke();
    painting.ellipse(painter.x, painter.y, pdiameter, pdiameter);
    painting.endDraw();

    lastpainter = new Pos( painter.x, painter.y);
  }
  public void paintLines( PGraphics painting, Pos painter, int paint, float thickness, ArrayList<PVector> trail) {

    if (trail != null) {
      trail.add(new PVector(painter.x, painter.y));
    }
    if (lastpainter != null) {

      painting.beginDraw();
      painting.noFill();
      painting.stroke(paint);
      painting.strokeWeight(thickness);
      painting.line(lastpainter.x, lastpainter.y, painter.x, painter.y);
      painting.endDraw();
    }

    lastpainter = new Pos( painter.x, painter.y);
  }
  public void paintSpaceLines( PGraphics painting, Pos painter, int paint, float thickness, ArrayList<PVector> trail) {

    if (trail != null) {
      trail.add(new PVector(painter.x, painter.y));
    }
    if (lastpainter != null) {

      painting.beginDraw();
      painting.noFill();
      painting.stroke(paint);
      painting.strokeWeight(thickness + 100);
      painting.line(lastpainter.x, lastpainter.y, painter.x, painter.y);
      painting.endDraw();
    }

    lastpainter = new Pos( painter.x, painter.y);
  }
};

class Plate{
  
  
  PGraphics pg;
  PVector abspv;
  PVector top;
  int fillcolor;
  int strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  
  float angle;
  PVector abscenter;
  
  int currentconnector;
  int activeconnector;
  
  
  Plate(int pwidth, int pheight, int pfillcolor, int pstrokecolor){
    
    
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
    
    
    
  }
  public void initConnectors(){
     connectors = new Connector[4];
     v = new PVector[4];
     float cs = 10;                   //connectorsize
     if(pg.width< 20){
       cs = pg.width/2;
     }
     if(pg.height < 20){
       cs = pg.height /2;
     }
     v[0] = new PVector(cs,cs);                 //van top naar c0
     v[1] = new PVector(pg.width - cs, cs);     //van top naar c1 
     v[2] =  new PVector(pg.width - cs, pg.height - cs);  //van top naar c2
     v[3] =  new PVector(cs, pg.height - cs);  //van top naar c3
     PVector cv0 = top.copy();
     cv0.add(v[0]);
     PVector cv1 = top.copy();
     cv1.add(v[1]);
     PVector cv2 = top.copy();
     cv2.add(v[2]);
     PVector cv3 = top.copy();
     cv3.add(v[3]);
     
     connectors[0] = new Connector(cv0.x, cv0.y,  cs);
     connectors[1] = new Connector(cv1.x, cv1.y,  cs);
     connectors[2] = new Connector(cv2.x, cv2.y,  cs);
     connectors[3] = new Connector(cv3.x, cv3.y,  cs);
     
     // activeconnector = 0;
     // activateConnector(activeconnector);
  }
  public void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
        // if(i == activeconnector){
        //   connectors[i].draw(pg, true);  
       // }
       // else{
         connectors[i].draw(pg, false); 
       //}
     
     }
  }
  public void connect(int con){
      connectors[con].isConnected = true;
  }
  public void disconnect(int con){
      connectors[con].isConnected = false;
  }
  public void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  public void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(1);
        pg.fill(fillcolor);
        pg.rect(0,0, pg.width-1, pg.height-1,10);
        pg.endDraw();
        
        drawConnectors();
        
    }
  public void set(PVector pv, int con, float pangle){
    
    abspv = pv.copy();
    
    angle = pangle;
    top = new PVector(0,0);
    top.sub(v[con]);
    
    currentconnector = con;
    connect(con);
    
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, top.x,top.y);
    popMatrix();
    
    
    
  }
 public void show(PVector pv){
    angle = 0;
    abspv = pv.copy();
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, 0,0);
    popMatrix();
    
  }
  public boolean isMouseOnElement(float x, float y){
    boolean on = false;
    if(x > abspv.x && x < abspv.x + pg.width){
      if(y > abspv.y && y < abspv.y + pg.height){
        on = true;
      }
    }
    return on;
  }
  public void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  public void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  public void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  public int getActiveConnector(){
    return activeconnector;
  }
  public int getConnectorSize(){
    return connectors.length;
  }
  public PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  public PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
 public int getFillColor(){
   return fillcolor;
 }
 public int getStrokeColor(){
   return strokecolor;
 }
  public int getWidth(){
    return pg.width;
  }
  public int getHeight(){
    return pg.height;
  }
  // void drag(float x, float y){
  //   if(isMouseOnElement(x,y)){
  //     show(new PVector(x,y));
  //   }
  // }
};
class Rod{
  
  PGraphics pg;
  PVector abspv;
  PVector top;
  int fillcolor;
  int strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  
  
  
  Rod(int pwidth, int pheight, int pfillcolor, int pstrokecolor){
    
   
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
   
    
    
  }
  public void initConnectors(){
     connectors = new Connector[2];
     v = new PVector[2];
     float cs = 10;                   //connectorsize
     if(pg.width< 20){
       cs = pg.width/2;
     }
     if(pg.height < 20){
       cs = pg.height /2;
     }
     v[0] = new PVector(cs,cs);            //van top naar c0
     v[1] = new PVector(pg.width - cs, cs);  //van top naar c1 
     
     PVector cv0 = top.copy();
     cv0.add(v[0]);
     PVector cv1 = top.copy();
     cv1.add(v[1]);
     
     
     connectors[0] = new Connector(cv0.x, cv0.y,  cs);
     connectors[1] = new Connector(cv1.x, cv1.y,  cs);
     activeconnector = 0;
     activateConnector(activeconnector);
     
  }
  public void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
       // if(i == activeconnector){
     //     connectors[i].draw(pg, true);  
    //   }
    //   else{
         connectors[i].draw(pg, false); 
     //  }
     
     }
  }
  public void connect(int con){
      connectors[con].isConnected = true;
  }
  public void disconnect(int con){
      connectors[con].isConnected = false;
  }
  public void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  public void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(1);
        pg.fill(fillcolor);
        pg.rect(0,0, pg.width-1, pg.height-1,10);
        pg.endDraw();
        
        drawConnectors();
        
    }
  public void set(PVector pv, int con, float pangle){
    
    
    angle = pangle;
    top = new PVector(0,0);
    top.sub(v[con]);
    connect(con);
    currentconnector = con;
    abspv = pv.copy();
    
    
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, top.x,top.y);
    popMatrix();
    
  }
  public void show(PVector pv){
    angle = 30;
    abspv = pv.copy();
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, 0,0);
    popMatrix();
    
  }
  public void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  public void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  public int getActiveConnector(){
    return activeconnector;
  }
  public void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
   public int getConnectorSize(){
    return connectors.length;
  }
  public int getFillColor(){
   return fillcolor;
 }
 public int getStrokeColor(){
   return strokecolor;
 }
  public int getWidth(){
    return pg.width;
  }
  public int getHeight(){
    return pg.height;
  }
  public PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  public PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  public boolean isMouseOnElement(float x, float y){
    boolean on = false;
    if(x > abspv.x && x < abspv.x + pg.width){
      if(y > abspv.y && y < abspv.y + pg.height){
        on = true;
      }
    }
    return on;
  }
  // void drag(float x, float y){
  //   if(isMouseOnElement(x,y)){
  //     show(new PVector(x,y));
  //   }
  // }
};
class Wheel{
  
  PGraphics pg;
  PVector abspv;
  PVector top;
  int fillcolor;
  int strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  
  
  Wheel(int pwidth, int pheight, int pfillcolor, int pstrokecolor){
    
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
    
    
  }
  public void initConnectors(){
     connectors = new Connector[5];
     v = new PVector[5];
     float cs = 10;                   //connectorsize
     if(pg.width< 20){
       cs = pg.width/2;
     }
     if(pg.height < 20){
       cs = pg.height /2;
     }
     v[0] = new PVector(pg.width/2, pg.height/2);               //van top naar c0
     v[1] = new PVector((pg.width) - cs, pg.height/2);         //van top naar c1 
     v[2] = new PVector((pg.width/2), pg.height -cs);         //van top naar c2
     v[3] = new PVector(cs, pg.height/2);                     //van top naar c3
     v[4] = new PVector((pg.width/2), cs);                     //van top naar c4
     
     PVector cv0 = top.copy();
     cv0.add(v[0]);
     PVector cv1 = top.copy();
     cv1.add(v[1]);
     PVector cv2 = top.copy();
     cv2.add(v[2]);
     PVector cv3 = top.copy();
     cv3.add(v[3]);
     PVector cv4 = top.copy();
     cv4.add(v[4]);
    
     
     connectors[0] = new Connector(cv0.x, cv0.y,  cs);
     connectors[1] = new Connector(cv1.x, cv1.y,  cs);
     connectors[2] = new Connector(cv2.x, cv2.y,  cs);
     connectors[3] = new Connector(cv3.x, cv3.y,  cs);
     connectors[4] = new Connector(cv4.x, cv4.y,  cs);
     
     //activeconnector = 0;
     //activateConnector(activeconnector);
  }
  public void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
 //       if(i == activeconnector){
 //         connectors[i].draw(pg, true);  
  //     }
  //     else{
         connectors[i].draw(pg, false); 
 //      }
     
     }
  }
  public void connect(int con){
      connectors[con].isConnected = true;
  }
  public void disconnect(int con){
      connectors[con].isConnected = false;
  }
  public void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  public void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(10);
        pg.fill(fillcolor);
        pg.ellipse(pg.width/2,pg.height/2, pg.width-11, pg.height-11);
        pg.endDraw();
        
        drawConnectors();
        
    }
  public void set(PVector pv, int con, float pangle){
    
    angle = pangle;
    top = new PVector(0,0);
    top.sub(v[con]);
    connect(con);
    currentconnector = con;
    abspv = pv.copy();
   
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, top.x,top.y);
    popMatrix();
    
  }
 
  public void show(PVector pv){
    angle = 0;
    abspv = pv.copy();
    draw();
    
    //move and turn
    pushMatrix();
      translate(pv.x, pv.y);
      rotate(radians(angle));
      image(pg, 0,0);
    popMatrix();
    
  }
  public void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  public void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  public void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  public int getActiveConnector(){
    return activeconnector;
  }
   public int getConnectorSize(){
    return connectors.length;
  }
  public int getFillColor(){
   return fillcolor;
 }
 public int getStrokeColor(){
   return strokecolor;
 }
  public int getWidth(){
    return pg.width;
  }
  public int getHeight(){
    return pg.height;
  }
  public PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
 public PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  public boolean isMouseOnElement(float x, float y){
    boolean on = false;
    if(x > abspv.x && x < abspv.x + pg.width){
      if(y > abspv.y && y < abspv.y + pg.height){
        on = true;
      }
    }
    return on;
  }
  // void drag(float x, float y){
  //   if(isMouseOnElement(x,y)){
  //     show(new PVector(x,y));
  //   }
  // }
};
/* @pjs preload = "sample.jpg"; */

class RPalette{
  PImage sample;
  int[] colors;
  int[] tints;
  
  RPalette(int count){
    sample = loadImage("sample11.jpg");
    colors = createImgPalette(count);
    tints = createTintPalette(colors[0], colors[1], count);

  }
    // random palette op basis van een afbeelding
  public int[] createImgPalette(int count){
        
        colors = new int[count];
        sample.loadPixels();
        int c = 0;
        while(c < count){

            int p = floor(random(sample.pixels.length));
            colors[c] = sample.pixels[p];
            
            c++;
        }
        
        return colors;
    }
    
    //maak een palet op basis van twee kleuren.
    public int[] createTintPalette(int color1, int color2, int count){
      tints = new int[count];
      
        for (int i = 0; i < count; i = i+1){
          int co = lerpColor(color1, color2, i * (1.0f / count));
          tints[i] = co;
        }
        return tints;
    }

    public void show(float width, float height){
      float w = width/colors.length;
      noStroke();
      for (int i = 0; i < colors.length; i = i+1){
        fill(colors[i]);
        rect(i * w,0, w, height/2 );
        fill(tints[i]);
        rect(i * w,height/2 , w, height/2 );
        
      }
    }
    public int randomColor(){
      int rcolor = colors[floor(random(10))];
      return rcolor;
    }
};
 class Trailrunner {
  RPalette palette;
  int[] colors;

  boolean isStarted;
  int t; 
  float a; // position on trail
  float r;
  int mindeviation;
  int maxdeviation;
  float angle; 
  PVector painter, lastpainter;
  int paintcolor, paintcolor1, paintcolor2;
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

  public void paint( PGraphics painting, int paint1, int paint2, float diameter, String shape) {

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
          out.playNote( 0.0f, 0.05f, new SineInstrument( freq ) );
        }
        t = t + 1;
        a = a + 0.1f;
      } else if (shape == "dots") {
        if (frameCount % 13 ==0) {

          painting.noFill();
          painting.stroke(paint1);
          painting.strokeWeight(diameter);
          painting.ellipse(painter.x, painter.y, r, r);
          if (withSound) {
            float freq = map( painter.y, height, 0, 1000, 1500 );
            out.playNote( 0.0f, 0.03f, new SineInstrument( freq ) );
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
            out.playNote( 0.0f, 0.03f, new SineInstrument( freq ) );
          }
          r = constrain(r + 1, mindeviation, maxdeviation+1);
          
          t = t + 1;
          a = a + 0.1f;
          
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
            out.playNote( 0.0f, 1, new SineInstrument( freq ) );
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

  public void start(float pdiameter, int ppaintcolor1, int ppaintcolor2, int pmin, int pmax) {

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

  public void run() {
    if (isStarted) {
      paint(painting, paintcolor1,paintcolor2, diameter, shape);
    }


    if (t >= trail.size() && t != 0) {
      lastpainter = null;
      start(diameter, paintcolor1, paintcolor2, mindeviation, maxdeviation);
    }
  }  

  public void stop() {
    isStarted = false;
  }
};
  public void settings() {  size(1280, 760); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "verfmachines16" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
