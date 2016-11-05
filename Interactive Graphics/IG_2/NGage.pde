


class Ngage {
  OscP5 oscP5;
  String BaseAddress;
  NetAddress hackTheScreenAPI;
  int maxLength;

  Ngage() {
    OscProperties myProperties = new OscProperties();
    myProperties.setDatagramSize(10000); 
    myProperties.setListeningPort(7004);
    
    hackTheScreenAPI = new NetAddress("192.168.7.5", 7004);
    myProperties.setRemoteAddress(hackTheScreenAPI);
    BaseAddress = "/ImageProcessing";
    
    oscP5 = new OscP5(this, myProperties);
    initNgageAPI();
  }
  
  void initNgageAPI() {
    OscMessage myMessage = new OscMessage("/OSC/AddClientIP");
    String myIp;
    int[] ipList;

    try {
      InetAddress address = InetAddress.getLocalHost();
      println(address);
      println(InetAddress.getLoopbackAddress());
      myIp = address.getHostAddress();
      println(myIp);
      ipList =  int(split(myIp, '.'));
      myMessage.add(ipList[0]);
      myMessage.add(ipList[1]);
      myMessage.add(ipList[2]);
      myMessage.add(ipList[3]);
      oscP5.send(myMessage);
    } 
    catch (Exception e) {
      println("no ip?");
    }
  }

  

  void oscEvent(OscMessage theOscMessage) {
    if (theOscMessage.checkAddrPattern(BaseAddress+"/Blobs/BlobData") == true) {
      //ImageProcessing Blob Message received
      x = theOscMessage.get(2).floatValue();
      y = theOscMessage.get(3).floatValue();
      
    }
    
    println("### received an osc message:" + x + "  " + y);
   
  }
}