class Machine {
  RPalette palette;
  color[] colors;
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
    speed =0.1;
   
  }
  

  void nextStructure(int i, PVector pv, float pangle) {
    structure[i] = pv.copy();
    structure[i].rotate(radians(pangle));
  }
  

  PVector getAbsPos(int s) {
    PVector abspos = structure[0].copy();

    for (int i = 1; i < structure.length; i++) {
      if (i <= s) {
        abspos.add(structure[i]);
      }
    }
    return abspos;
  }
   PVector getStructure(PVector pv, PVector v, float pangle) {
    PVector abspos = pv.copy();
    v.rotate(radians(pangle));
    abspos.add(v);

    return abspos;
  }
  void start(float x, float y) {
    //paintcolor1 = palette.randomColor();
    //paintcolor2 = palette.randomColor();
   
    structure[0].x = x;
    structure[0].y = y;
    isStarted = true;
  }
  void stop() {
    a=0;
    isStarted = false;
  }
  void end(){
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