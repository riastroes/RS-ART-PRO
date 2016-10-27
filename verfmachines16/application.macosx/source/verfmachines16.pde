//import netP5.*;
//import oscP5.*;
//import supercollider.*;

import ddf.minim.effects.*;
import ddf.minim.analysis.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.*;
import ddf.minim.ugens.*;


//Synth synth;
Minim       minim;
AudioRecorder recorder;
//import gifAnimation.*;
//GifMaker gifExport;



int imageIndex;
String imageName;
PFont font;

RPalette palette;
color bg;
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

void setup() {
  size(1280, 760);      //16:9 breedbeeld
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

void draw() {
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


void showMachines() {
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

void initSaveImage() {
  imageIndex = floor(random(100));
  imageName = "machine";
  font = loadFont("Arial-ItalicMT-24.vlw");
}
void saveImage() {
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
void mousePressed() {
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

void mouseReleased() {
}

void keyPressed() {
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
void initGifMaker() {

  // gifExport = new GifMaker(this, imageName + imageIndex + ".gif");
  // gifExport.setRepeat(0);             // make it an "endless" animation
  // gifExport.setTransparent(0,0,0);    // black is transparent
}

void showScene(int nr) {


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

void exit()
{
  //synth.free();
  super.exit();
}