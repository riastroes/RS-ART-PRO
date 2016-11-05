import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import gab.opencv.*; 
import processing.video.*; 
import java.awt.*; 
import oscP5.*; 
import netP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class VideoInput_FaceDetection_Processing_3Inputs extends PApplet {

/**
 * WhichFace
 * Daniel Shiffman
 * http://shiffman.net/2011/04/26/opencv-matching-faces-over-time/
 *
 * Modified by Jordi Tost (@jorditost) to work with the OpenCV library by Greg Borenstein:
 * https://github.com/atduskgreg/opencv-processing
 *
 * Modified again by Rebecca Fiebrink to send 3 OSC values to Wekinator:
 * www.wekinator.org
 *
 * @url: https://github.com/jorditost/BlobPersistence/
 *
 * University of Applied Sciences Potsdam, 2014
 */







OscP5 oscP5;
NetAddress dest;

Capture video;
OpenCV opencv;

PFont f;

// List of my Face objects (persistent)
ArrayList<Face> faceList;

// List of detected faces (every frame)
Rectangle[] faces;

// Number of faces detected over all time. Used to set IDs.
int faceCount = 0;

// Scaling down the video
int scl = 2;

//Some memory
int countWithout = 0;
int countWithoutMax = 10;

int x = 0; 
int y = 0; 
int w = 0;

public void setup() {
  
  video = new Capture(this, width/scl, height/scl);
  opencv = new OpenCV(this, width/scl, height/scl);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  
  faceList = new ArrayList<Face>();
  
  f = createFont("Courier", 12);
  textFont(f);
  
  video.start();
  
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,9000);
  dest = new NetAddress("127.0.0.1",6448);
  frameRate(90);
}

public void draw() {

  
  
  scale(scl);
  opencv.loadImage(video);

  image(video, 0, 0 );
  
  detectFaces();

  //Rectangles:
  if (faces.length >= 1) {
    countWithout = 0;
    
    noFill();
    strokeWeight(5);
    stroke(255,0,0);
    //rect(faces[0].x, faces[0].y, faces[0].width, faces[0].height); //if you want the rectangle
    x = faces[0].x;
    y = faces[0].y;
    w = faces[0].width;
    drawFace();
      
  } else if (countWithout > countWithoutMax) {
    x = 0;
    y = 0;
    w = 0;
    drawFace();
  } else {
    countWithout++;
  }
  
  //Send the OSC message with face current position
  sendOsc();
  
  fill(255);
  text("Continuously sends 3 inputs to Wekinator\nUsing message /wek/inputs, to port 6448", 10, 10);
  text("Face x=" + x + ", y=" + y + ", width=" + w, 10, 40);
  fill(255,0,0);
  text("Hint: remove glasses, don't tilt your head", 10, 55);
}

public void detectFaces() {
  
  // Faces detected in this frame
  faces = opencv.detect();
  
  // Check if the detected faces already exist are new or some has disappeared. 
  
  // SCENARIO 1 
  // faceList is empty
  if (faceList.isEmpty()) {
    // Just make a Face object for every face Rectangle
    for (int i = 0; i < faces.length; i++) {
      println("+++ New face detected with ID: " + faceCount);
      faceList.add(new Face(faceCount, faces[i].x,faces[i].y,faces[i].width,faces[i].height));
      faceCount++;
    }
  
  // SCENARIO 2 
  // We have fewer Face objects than face Rectangles found from OPENCV
  } else if (faceList.size() <= faces.length) {
    boolean[] used = new boolean[faces.length];
    // Match existing Face objects with a Rectangle
    for (Face f : faceList) {
       // Find faces[index] that is closest to face f
       // set used[index] to true so that it can't be used twice
       float record = 50000;
       int index = -1;
       for (int i = 0; i < faces.length; i++) {
         float d = dist(faces[i].x,faces[i].y,f.r.x,f.r.y);
         if (d < record && !used[i]) {
           record = d;
           index = i;
         } 
       }
       // Update Face object location
       used[index] = true;
       f.update(faces[index]);
    }
    // Add any unused faces
    for (int i = 0; i < faces.length; i++) {
      if (!used[i]) {
        println("+++ New face detected with ID: " + faceCount);
        faceList.add(new Face(faceCount, faces[i].x,faces[i].y,faces[i].width,faces[i].height));
        faceCount++;
      }
    }
  
  // SCENARIO 3 
  // We have more Face objects than face Rectangles found
  } else {
    // All Face objects start out as available
    for (Face f : faceList) {
      f.available = true;
    } 
    // Match Rectangle with a Face object
    for (int i = 0; i < faces.length; i++) {
      // Find face object closest to faces[i] Rectangle
      // set available to false
       float record = 50000;
       int index = -1;
       for (int j = 0; j < faceList.size(); j++) {
         Face f = faceList.get(j);
         float d = dist(faces[i].x,faces[i].y,f.r.x,f.r.y);
         if (d < record && f.available) {
           record = d;
           index = j;
         } 
       }
       // Update Face object location
       Face f = faceList.get(index);
       f.available = false;
       f.update(faces[i]);
    } 
    // Start to kill any left over Face objects
    for (Face f : faceList) {
      if (f.available) {
        f.countDown();
        if (f.dead()) {
          f.delete = true;
        } 
      }
    } 
  }
  
  // Delete any that should be deleted
  for (int i = faceList.size()-1; i >= 0; i--) {
    Face f = faceList.get(i);
    if (f.delete) {
      faceList.remove(i);
    } 
  }
}

public void captureEvent(Capture c) {
  c.read();
}

//Send 3 inputs to Wekinator via oSC
public void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add((float)x); 
  msg.add((float)y);
  msg.add((float)w);
  oscP5.send(msg, dest);
}

public void drawFace() {
   fill(255, 255, 0);
   noStroke();
   ellipse(x+(float)w/2, y+(float)w/2, w, w);
   fill(0);
   ellipse(x+(float)w/3, y+(float)w/3, 10, 10);
   ellipse(x+(2.f * w)/3, y+(float)w/3, 10, 10);
   arc(x + (float)w/2, y + (float)w/2, (float)w/2, (float)w/4, 0, PI);
}
/**
 * Which Face Is Which
 * Daniel Shiffman
 * http://shiffman.net/2011/04/26/opencv-matching-faces-over-time/
 *
 * Modified by Jordi Tost (call the constructor specifying an ID)
 * @updated: 01/10/2014
 */

class Face {
  
  // A Rectangle
  Rectangle r;
  
  // Am I available to be matched?
  boolean available;
  
  // Should I be deleted?
  boolean delete;
  
  // How long should I live if I have disappeared?
  int timer = 127;
  
  // Assign a number to each face
  int id;
  
  // Make me
  Face(int newID, int x, int y, int w, int h) {
    r = new Rectangle(x,y,w,h);
    available = true;
    delete = false;
    id = newID;
  }

  // Show me
  public void display() {
    fill(0,0,255,timer); //Blue
    stroke(0,0,255);  //Blue
    rect(r.x,r.y,r.width, r.height);
    //rect(r.x*scl,r.y*scl,r.width*scl, r.height*scl);
    fill(255,timer*2);
    text(""+id,r.x+10,r.y+30);
    //text(""+id,r.x*scl+10,r.y*scl+30);
    //text(""+id,r.x*scl+10,r.y*scl+30);
  }

  // Give me a new location / size
  // Oooh, it would be nice to lerp here!
  public void update(Rectangle newR) {
    r = (Rectangle) newR.clone();
  }

  // Count me down, I am gone
  public void countDown() {
    timer--;
  }

  // I am deed, delete me
  public boolean dead() {
    if (timer < 0) return true;
    return false;
  }
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "VideoInput_FaceDetection_Processing_3Inputs" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
