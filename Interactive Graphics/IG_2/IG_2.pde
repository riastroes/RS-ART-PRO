

/* Ria Stroes */
/* @updated: 27 november 2016 */
/* In this sketch the colors are controlled by the camera capture */

import netP5.*;
import oscP5.*;
import java.net.InetAddress;

Ngage ngage;
//OscP5 oscScreenIn, oscScreenOut;
//NetAddress destScreenIn, destScreenOut;

OscP5 oscWekIn, oscWekOut;
NetAddress destWekIn, destWekOut;


App app;
int hue, saturation, brightness, alpha;
int r,g,b;
float a;
float x, y, size, rot;


void setup() {
  //size(displayWidth, displayHeight);
  size(1280,640);
  //colorMode(HSB, 360, 100, 100,100);
  
  //Initialize Osc with Screen
  ngage = new Ngage();
  //oscScreenIn = new OscP5(this, 7004);
  //destScreenIn = new NetAddress("192.168.7.5", 7004);
  
  //oscScreenOut = new OscP5(this, 12000);
  //destScreenOut = new NetAddress("192.168.7.5", 12000);
  
  //OscMessage myScreenMsg = new OscMessage("/osc/AddClientIP");
  //myScreenMsg.add(157);
  //myScreenMsg.add(97);
  //myScreenMsg.add(112);
  //myScreenMsg.add(146);
  //oscScreenIn.send(myScreenMsg, destScreenIn);
  
  //Initialize Wekinator
  oscWekIn = new OscP5(this, 7000);
  destWekIn = new NetAddress("127.0.0.1", 6448);
  
  oscWekOut = new OscP5(this, 12000);
  destWekOut = new NetAddress("127.0.0.1", 12000);
  
 
  hue = 0;
  saturation = 100;
  brightness = 100;
  a = 0;
  
  background(255);
  app = new App("Interactive Graphics I");
  x = 0;
  y = 0;
}

void draw() {
  
  
  app.draw();
  
  sendWekOsc(x,y);
 
 
}
public void sendWekOsc(float x, float y) {
  OscMessage oscWekmsg = new OscMessage("/wek/inputs");
  oscWekmsg.add(x); 
  oscWekmsg.add(y);
  oscWekIn.send(oscWekmsg, destWekIn);
  a += 0.01;
}

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage oscmsg) {

 if(oscmsg.checkAddrPattern("/wek/outputs")){
      
      r = constrain(int(map(oscmsg.get(0).floatValue(),0,1, 0,255)),0,255);
      g = constrain(int(map(oscmsg.get(1).floatValue(),0,1,0,255)),0,255);
      b = constrain(int(map(oscmsg.get(2).floatValue(),0,1,0,255)),0,255);
      size = constrain(int(map(oscmsg.get(0).floatValue(),0,1,20,80)),20,80);
      rot = constrain(int(map(oscmsg.get(1).floatValue(),0,1,0,PI)),0,PI);
      
      
      println("receive from wek " + hue + " " + saturation + " " + brightness);
 }
}