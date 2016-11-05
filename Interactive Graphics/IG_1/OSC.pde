import netP5.*;
import oscP5.*;

class OSC{
  
  OscP5 oscP5In, oscP5Out;
  NetAddress destIn, destOut;
  float a;
  float hue, saturation, brightness;
  
  OSC(){
    oscP5In = new OscP5(this, 6448);
    destIn = new NetAddress("192.169.7.5", 7004);
    
    oscP5Out = new OscP5(this, 12000);
    destOut = new NetAddress("192.169.7.5", 7004);
    
    a = 0;
  }
  
  public void sendOsc() {
    OscMessage oscmsg = new OscMessage("/wek/inputs");
    oscmsg.add(noise(a)); 
    oscP5In.send(oscmsg, destIn);
    a += 0.01;
  }
  
  /* incoming osc message are forwarded to the oscEvent method. */
  void oscEvent(OscMessage oscmsg) {
    if (oscmsg.checkAddrPattern("/wek/outputs")==true) {
     
        hue = map(oscmsg.get(0).floatValue(),0,1, 0,360);
        saturation = map(oscmsg.get(1).floatValue(),0,1,0,100);
        brightness = map(oscmsg.get(2).floatValue(),0,1,0,100);
        println(" recieving: "+ hue +" "+ saturation+" " + brightness);
      
    }
  }
}