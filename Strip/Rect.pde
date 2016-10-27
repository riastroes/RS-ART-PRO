class Rect {

  PVector pos;
  float rwidth;
  float rheight;
  Grid grid;
  color strokecolor;
  color fillcolor;
  float thickness;

  Rect(PVector ppos, float pwidth, float pheight, Grid pgrid) {
    this.pos = ppos.copy();
    this.rwidth = pwidth;
    this.rheight = pheight;
    this.grid = pgrid;
    
  }
  
  
void move(int hor, int vert) {
  pos.add(hor * grid.cellwidth, vert * grid.cellwidth);
}

void draw() {
  this.style(0);
  rect(this.pos.x, this.pos.y, this.rwidth, this.rheight);
}
void style(int nr) {

    switch(nr) {
    case 0:
      this.strokecolor = color(0);
      this.fillcolor = color(255);
      this.thickness = 1;
      break;
    }
    
    stroke(this.strokecolor);
    fill(this.fillcolor);
    strokeWeight(this.thickness);
  
}
}