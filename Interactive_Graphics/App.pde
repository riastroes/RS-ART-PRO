class App{
  String title = "";
  int next = 0;
  color bg = color(random(255));
  boolean isStopped = false;
  
  Drawing drawing;
  
  
  App(String ptitle){
    title = ptitle;
    drawing = new Drawing(width,height);
  }
  
  void reset(){
    bg = color(random(255));
    isStopped = true;
    drawing.elements = null;
    
  }
  
  void drawStrip(){
    int x = 0;
    int y = 0;
    
    if(drawing.elements.size()>0){
      x = ((drawing.elements.size()-1) % floor(width/drawing.pg.width)) ;
      y = floor((drawing.elements.size()-1)/floor(width/drawing.pg.width)) ;
    }
   
    if((x * drawing.pg.width)< width || (y * drawing.pg.height) < height){
      image(drawing.pg, x * drawing.pg.width,y * drawing.pg.height);
    }
  }
  void draw(){
    drawing.draw();
    image(drawing.pg, 0,0); //<>//
  }
  
  void saveScreen(){
    saveFrame("results/" + title + "-######.jpg");
  }
  

}