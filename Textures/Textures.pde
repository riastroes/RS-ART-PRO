/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Textures */

import processing.pdf.*;
Grid[] grid;
Grid layout;
Boolean record;
Texture texture;
void setup() {
  //size(800,800,PDF,"result/texture-1.pdf");
  size(800,800);
  grid = new Grid[36];
  strokeWeight(5);
  record = false;
  layout = new Grid(new PVector(30, 30), width-60, height-60, 6, 6);
  for (int i = 0; i < layout.pos.length; i++) {
    PVector pos = layout.pos[i].copy();
    pos.sub(new PVector((layout.cellwidth/2)-10, (layout.cellheight/2)-10));
    grid[i] = new Grid(pos, layout.cellwidth-20, layout.cellheight-20, 25, 25);
    
    for (int x = 0; x <  grid[i] .wmax; x +=3) {
      grid[i].disorderCol(x, new PVector(3, 3));
    }
    
    
  }
  
}
void createTextureOnGrid(Grid g, int nr) {

  int max = 36;
  texture = new Texture(g);
  if (nr % max == 0) {
    texture.linesHor();
  } else if (nr % max == 1) {
    texture.linesVert();
  } else if (nr % max == 3) {
    texture.curvesVert(2);
  } else if (nr % max == 2) {
    texture.curvesVert(4);
  } else if (nr % max == 10) {
    texture.curvesHor(2);
  } else if (nr % max == 5) {
    texture.curvesHor(3);
  } else if (nr % max == 6) {
    texture.rect(2);
  } else if (nr % max == 7) {
    texture.rect(4);
  } else if (nr % max == 9) {
    texture.rect(1);
  }else if (nr % max == 8) {
    texture.curvedrect(1,4);
  }else if (nr % max == 4) {
    texture.rect(1);
  }else if (nr % max == 11) {
    texture.curvedrect(1,2);
  }else if (nr % max == 12) {
    texture.curvedrect(4,4);
  }else if (nr % max == 13) {
    texture.rect(1);
  }else if (nr % max == 15) {
    texture.curvedrect(4,2);
  }else if (nr % max == 14) {
    texture.curvedrect(4,8);
  }else if (nr % max == 16) {
    texture.curvedrect(8,2);
  }else if (nr % max == 17) {
    texture.curvedrect(8,8);
  }else if (nr % max == 18) {
    texture.triangle(8,2);
  }else if (nr % max == 19) {
    texture.triangle(8,4);
  }else if (nr % max == 21) {
    texture.triangle(8,8);
  }else if (nr % max == 20) {
    texture.sinus(0.01,4);
  }else if (nr % max == 22) {
    texture.sinus(0.01,1);
  }else if (nr % max == 23) {
    texture.sinus(0.1,1);
  }else if (nr % max == 24) {
    texture.sinus(0.1,3);
  }else if (nr % max == 25) {
    texture.vertexes(5,2);
  }else if (nr % max == 27) {
    texture.vertexes(4,3);
  }else if (nr % max == 26) {
    texture.vertexes(3,5);
  }else if (nr % max == 28) {
  texture.horizontals(3,3);
  }else if (nr % max == 29) {
  texture.horizontals(10,5);
  }else if (nr % max == 30) {
  texture.horizontals2(3,3);
  }else if (nr % max == 31) {
  texture.horizontals2(-10,1);
  }else if (nr % max == 33) {
  texture.rect2(3,3);
  }else if (nr % max == 32) {
  texture.rect2(6,6);
  }else if (nr % max == 34) {
  texture.rect2(6,1);
  }else if (nr % max == 35) {
  texture.horizontals2(5,1);
  }
}

void draw() {
  background(255);
  strokeWeight(5);
  if(record){
    beginRecord(PDF, "bugs.pdf"); 
  }

  for (int l = 0; l<this.layout.pos.length; l++) {
    grid[l].disorderRadius(new PVector(mouseX, mouseY), 10,  -20);
    createTextureOnGrid(grid[l], l);
  }
  if (mousePressed==true) {
    background(255);
    int i = layout.mouse(mouseX, mouseY);
    Grid layout2 = new Grid(new PVector(30, 30), width-60, height-60, 100, 100);
    for (int x = 0; x <  layout2.wmax; x +=3) {
      layout2.disorderCol(x, new PVector(3, 3));
    }
    layout2.disorderRadius(new PVector(mouseX, mouseY), 100,  -20);
    createTextureOnGrid(layout2, i);
  }
  if(record ==true){
    endRecord();
    exit();
  }
  // noLoop();
  // exit();
}
void keyPressed(){
   record = true;
}