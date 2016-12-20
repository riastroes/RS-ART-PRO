class Texture {
  Grid grid;
  int x, y;
  Texture(Grid pgrid) {
    grid = pgrid;
    x = 0; 
    y = 0;
  }
  void style() {
    stroke(0);
    strokeWeight(1);
    noFill();
  }
  void linesVert(){
    style();
    for (int x = 0; x < grid.wmax; x++) {
      beginShape();
      for (int y = 0; y < grid.hmax; y++) {
        vertex(grid.get(x, y).x, grid.get(x, y).y);
      }
      endShape();
    }
  }
  void linesHor(){
    style();
    for (int y = 0; y < grid.hmax; y++) {
      beginShape();
     for(int x = 0; x < grid.wmax; x++) {
        vertex(grid.get(x, y).x, grid.get(x, y).y);
      }
      endShape();
    }
  }
  void curvesVert(int skip){
    style();
    for (int x = 0; x < grid.wmax; x+=skip) {
      beginShape();
      curveVertex(grid.get(x, 0).x, grid.get(x, 0).y);
      for (int y = 0; y < grid.hmax; y++) {
        curveVertex(grid.get(x, y).x, grid.get(x, y).y);
      }
      curveVertex(grid.get(x, grid.hmax-1).x, grid.get(x, grid.hmax-1).y);
      endShape();
    }
  }
   void curvesHor(int skip){
    style();
    for (int y = 0; y < grid.hmax; y+=skip) {
      beginShape();
      curveVertex(grid.get(0, y).x, grid.get(0, y).y);
      for (int x = 0; x < grid.wmax; x++) {
        curveVertex(grid.get(x, y).x, grid.get(x, y).y);
      }
      curveVertex(grid.get(grid.wmax-1,y).x, grid.get(grid.wmax-1,y).y);
      endShape();
    }
  }
  void rect(int skip){
    style();
    for (int y = 0; y < grid.hmax-1; y+=skip) {
      for (int x = 0; x < grid.wmax-1; x+=skip) {
    beginShape();
      vertex(grid.get(x, y).x, grid.get(x, y).y);
      vertex(grid.get(x+1, y).x, grid.get(x+1, y).y);
      vertex(grid.get(x+1, y+1).x, grid.get(x+1, y+1).y);
      vertex(grid.get(x, y+1).x, grid.get(x, y+1).y);
    endShape(CLOSE);
      }
    }
  }
  void curvedrect(int size,int space){
    style();
    for (int y = 0; y < grid.hmax-size; y+=space) {
      for (int x = 0; x < grid.wmax-size; x+=space) {
    beginShape();
      curveVertex(grid.get(x, y).x, grid.get(x, y).y);
      curveVertex(grid.get(x+size, y).x, grid.get(x+size, y).y);
      curveVertex(grid.get(x+size, y+size).x, grid.get(x+size, y+size).y);
      curveVertex(grid.get(x, y+size).x, grid.get(x, y+size).y);
      //
      curveVertex(grid.get(x, y).x, grid.get(x, y).y);
      curveVertex(grid.get(x+size, y).x, grid.get(x+size, y).y);
      curveVertex(grid.get(x+size, y+size).x, grid.get(x+size, y+size).y);
    endShape(CLOSE);
      }
    }
  }
  void triangle(int size, int space){
    style();
    for (int y = 0; y < grid.hmax-size; y+=space) {
      for (int x = 0; x < grid.wmax-size; x+=space) {
    beginShape();
      vertex(grid.get(x, y).x, grid.get(x, y+size).y +size);
      vertex(grid.get(x, y).x + size, grid.get(x, y).y);
      vertex(grid.get(x, y).x - size, grid.get(x, y).y);
    endShape(CLOSE);
      }
    }
  }
   void sinus(float size, int space){
    style();
    float a= 0;
    for (int y = 0; y < grid.hmax-1; y+=space) {
      beginShape();
      for (int x = 0; x < grid.wmax-1; x+=space) {
    
      vertex(grid.get(x, y).x + (sin(a) *space), grid.get(x, y).y + (sin(a) *space));
      vertex(grid.get(x+1, y+1).x + (sin(a) *space), grid.get(x+1, y+1).y + (sin(a) *space));
       a += size;
      }
      endShape();
    }
  }
  void vertexes(float size, int space){
    style();
    for (int x = 0; x < grid.wmax; x += space) {
      beginShape();
      for (int y = 0; y < grid.hmax; y += space) {
        
          for(int a = 0 ; a < TWO_PI; a += TWO_PI/size){
            
          vertex(grid.get(x, y).x + (sin(a)* size), grid.get(x, y).y+(sin(a)* size));
          }
      }
         
     endShape();
    }
  }
  void horizontals(float size, int space){
    style();
    for (int y = 0; y < grid.hmax; y += space) {
      beginShape();
      for (int x = 0; x < grid.wmax; x += space) {
          if(x %2 == 0){
            vertex(grid.get(x, y).x +size, grid.get(x, y).y-size);
          }
          else{
            vertex(grid.get(x, y).x -size, grid.get(x, y).y+size);
          }
      }
         
     endShape();
    }
  }
   void horizontals2(float size, int space){
    style();
    for (int y = 0; y < grid.hmax; y += space) {
      beginShape();
      for (int x = 0; x < grid.wmax; x += space) {
          if(x %2 == 0){
            curveVertex(grid.get(x, y).x +size, grid.get(x, y).y-size);
          }
          else{
            curveVertex(grid.get(x, y).x -size, grid.get(x, y).y+size);
          }
      }
         
     endShape();
    }
  }
  void rect2(int size, int space){
    style();
    for (int y = 0; y < grid.hmax-space; y+=size) {
      for (int x = 0; x < grid.wmax-space; x+=1) {
    beginShape();
      vertex(grid.get(x, y).x, grid.get(x, y).y);
      vertex(grid.get(x+space, y).x, grid.get(x+space, y).y);
      vertex(grid.get(x+space, y+space).x, grid.get(x+space, y+space).y);
      vertex(grid.get(x, y+space).x, grid.get(x, y+space).y);
    endShape(CLOSE);
      }
    }
  }
  void verticals2(int size, int space){
    style();
    for (int x = 0; x < grid.hmax-space; x+=size) {
      beginShape();
      for (int y = 0; y < grid.wmax-space; y+=1) {
    
      vertex(grid.get(x, y).x, grid.get(x, y).y);
      vertex(grid.get(x+space, y).x, grid.get(x+space, y).y);
      vertex(grid.get(x+space, y+space).x, grid.get(x+space, y+space).y);
      vertex(grid.get(x, y+space).x, grid.get(x, y+space).y);
    
      }
      endShape(CLOSE);
    }
  }
  void draw() {
    style();
    
  }
}