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
  color fillcolor;
  color strokecolor;
  color paintcolor;
  Connector[] connectors;
  PVector[] v;
  float cs = 5; //connectorsize
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  Pos painter, lastpainter;
  float thickness;



  Squirt(int pwidth, int pheight, color pfillcolor, color pstrokecolor, color ppaintcolor) {


    pg = createGraphics(pwidth + 1, pheight + 1);
    top = new PVector(0, 0);
    strokecolor = pstrokecolor;
    fillcolor = pfillcolor;
    paintcolor = ppaintcolor;
    initConnectors();
  }
  void initConnectors() {
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
  void drawConnectors() {
    for (int i =0; i < connectors.length; i++) {
      connectors[i].draw(pg, false); 
     
    }
  }
  void connect(int con) {
    connectors[con].isConnected = true;
  }
  void disconnect(int con) {
    connectors[con].isConnected = false;
  }
  void connectAll() {
    for (int i =0; i < connectors.length; i++) {
      connectors[i].isConnected = true;
    }
  }
  void draw() {

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
  void set(PVector pv, int con, float pangle) {

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
  void show(PVector pv) {
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
  void showConnectors() {
    for (int i = 0; i < connectors.length; i ++) {
      connect(i);
    }
  }
  void activateConnector(int con) {
    for (int i = 0; i < connectors.length; i ++) {
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }

  int getActiveConnector() {
    return activeconnector;
  }
  void activateNextConnector() {
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  int getConnectorSize() {
    return connectors.length;
  }
  int getFillColor() {
    return fillcolor;
  }
  int getStrokeColor() {
    return strokecolor;
  }
  int getWidth() {
    return pg.width;
  }
  int getHeight() {
    return pg.height;
  }

  PVector getVector(int confrom, int conto) {
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  PVector getAbsPos(int con) {
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  boolean isMouseOnElement(float x, float y) {
    boolean on = false;
    if (x > abspv.x && x < abspv.x + pg.width) {
      if (y > abspv.y && y < abspv.y + pg.height) {
        on = true;
      }
    }
    return on;
  }
  void paintRect( PGraphics painting, Pos painter, color paint, float pdiameter, ArrayList<PVector> trail) {

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

  void paintDots( PGraphics painting, Pos painter, color paint, float pdiameter, ArrayList<PVector> trail) {

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
  void paintLines( PGraphics painting, Pos painter, color paint, float thickness, ArrayList<PVector> trail) {

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
  void paintSpaceLines( PGraphics painting, Pos painter, color paint, float thickness, ArrayList<PVector> trail) {

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
  color fillcolor;
  color strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  
  float angle;
  PVector abscenter;
  
  int currentconnector;
  int activeconnector;
  
  
  Plate(int pwidth, int pheight, color pfillcolor, color pstrokecolor){
    
    
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
    
    
    
  }
  void initConnectors(){
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
  void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
        // if(i == activeconnector){
        //   connectors[i].draw(pg, true);  
       // }
       // else{
         connectors[i].draw(pg, false); 
       //}
     
     }
  }
  void connect(int con){
      connectors[con].isConnected = true;
  }
  void disconnect(int con){
      connectors[con].isConnected = false;
  }
  void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(1);
        pg.fill(fillcolor);
        pg.rect(0,0, pg.width-1, pg.height-1,10);
        pg.endDraw();
        
        drawConnectors();
        
    }
  void set(PVector pv, int con, float pangle){
    
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
 void show(PVector pv){
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
  boolean isMouseOnElement(float x, float y){
    boolean on = false;
    if(x > abspv.x && x < abspv.x + pg.width){
      if(y > abspv.y && y < abspv.y + pg.height){
        on = true;
      }
    }
    return on;
  }
  void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  int getActiveConnector(){
    return activeconnector;
  }
  int getConnectorSize(){
    return connectors.length;
  }
  PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
 int getFillColor(){
   return fillcolor;
 }
 int getStrokeColor(){
   return strokecolor;
 }
  int getWidth(){
    return pg.width;
  }
  int getHeight(){
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
  color fillcolor;
  color strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  
  
  
  Rod(int pwidth, int pheight, color pfillcolor, color pstrokecolor){
    
   
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
   
    
    
  }
  void initConnectors(){
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
  void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
       // if(i == activeconnector){
     //     connectors[i].draw(pg, true);  
    //   }
    //   else{
         connectors[i].draw(pg, false); 
     //  }
     
     }
  }
  void connect(int con){
      connectors[con].isConnected = true;
  }
  void disconnect(int con){
      connectors[con].isConnected = false;
  }
  void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(1);
        pg.fill(fillcolor);
        pg.rect(0,0, pg.width-1, pg.height-1,10);
        pg.endDraw();
        
        drawConnectors();
        
    }
  void set(PVector pv, int con, float pangle){
    
    
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
  void show(PVector pv){
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
  void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  int getActiveConnector(){
    return activeconnector;
  }
  void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
   int getConnectorSize(){
    return connectors.length;
  }
  int getFillColor(){
   return fillcolor;
 }
 int getStrokeColor(){
   return strokecolor;
 }
  int getWidth(){
    return pg.width;
  }
  int getHeight(){
    return pg.height;
  }
  PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
  PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  boolean isMouseOnElement(float x, float y){
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
  color fillcolor;
  color strokecolor;
  Connector[] connectors;
  PVector[] v;
  
  float angle;
  PVector abscenter;
  int currentconnector;
  int activeconnector;
  
  
  Wheel(int pwidth, int pheight, color pfillcolor, color pstrokecolor){
    
    pg = createGraphics(pwidth, pheight);
    top = new PVector(0,0);
    
    
    fillcolor = pfillcolor;
    strokecolor = pstrokecolor;
    initConnectors();
    
    
  }
  void initConnectors(){
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
  void drawConnectors(){
     for(int i =0; i < connectors.length; i++){
 //       if(i == activeconnector){
 //         connectors[i].draw(pg, true);  
  //     }
  //     else{
         connectors[i].draw(pg, false); 
 //      }
     
     }
  }
  void connect(int con){
      connectors[con].isConnected = true;
  }
  void disconnect(int con){
      connectors[con].isConnected = false;
  }
  void connectAll(){
    for(int i =0; i < connectors.length; i++){
        connectors[i].isConnected = true;  
     }
  }
  void draw(){

        pg.beginDraw();
        pg.stroke(strokecolor);
        pg.strokeWeight(10);
        pg.fill(fillcolor);
        pg.ellipse(pg.width/2,pg.height/2, pg.width-11, pg.height-11);
        pg.endDraw();
        
        drawConnectors();
        
    }
  void set(PVector pv, int con, float pangle){
    
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
 
  void show(PVector pv){
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
  void showConnectors(){
    for(int i = 0 ; i < connectors.length; i ++){
      connect(i);
    }
  }
  void activateConnector(int con){
    for(int i = 0; i < connectors.length; i ++){
      connectors[i].active = false;
    }
    connectors[con].active = true;
    activeconnector = con;
    drawConnectors();
  }
  void activateNextConnector(){
    int con = getActiveConnector();
    int next = (con + 1) % connectors.length;
    activateConnector(next);
  }
  int getActiveConnector(){
    return activeconnector;
  }
   int getConnectorSize(){
    return connectors.length;
  }
  int getFillColor(){
   return fillcolor;
 }
 int getStrokeColor(){
   return strokecolor;
 }
  int getWidth(){
    return pg.width;
  }
  int getHeight(){
    return pg.height;
  }
  PVector getVector(int confrom, int conto){
    PVector pv = v[conto].copy();
    pv.sub(v[confrom]);
    return pv;
  }
 PVector getAbsPos(int con){
    PVector p = abspv.copy();
    p.sub(v[currentconnector]);
    p.add(v[con]);
    return p;
  }
  boolean isMouseOnElement(float x, float y){
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