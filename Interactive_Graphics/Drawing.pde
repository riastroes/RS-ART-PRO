class Drawing{
  
  PGraphics pg;
  ArrayList<Element> elements;
  
  Drawing(int pwidth, int pheight){
    pg = createGraphics(pwidth, pheight);
    elements = new ArrayList<Element>();
  }
  void add(int nr, PVector start){
    switch(nr){
      case 0:
        elements.add(new Circle(pg, start.x, start.y, 5, 2));
        break;
       case 1:
        elements.add(new Circle(pg, start.x, start.y, 5, 3));
        break;
    }
  }
  
  
  void update(){
    PVector target = new PVector(width/2, height/2);
    
    for(int i = 0; i < elements.size(); i++){
      if(i < 1){
        target = elements.get(elements.size()-1).pos;
      }
      else{
        target = elements.get(i-1).pos;
      }
      elements.get(i).update();
      elements.get(i).move(target); //<>//

      
    }
  }
  void draw(){
    
    pg.beginDraw();
    for(Element elem : elements){
      elem.draw();
    }
    pg.endDraw();
  }
  
}