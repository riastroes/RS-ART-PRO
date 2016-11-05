class Rect {

  PVector pos;
  float rwidth;
  float rheight;
  float wmargin;
  float hmargin;
  Grid grid;
  color strokecolor;
  color fillcolor;
  float thickness;
  int stylenr = 0;

  Rect(PVector ppos, float pwidth, float pheight, Grid pgrid) {
    this.pos = ppos.copy();
    this.rwidth = pwidth;
    this.rheight = pheight;
    this.grid = pgrid;
    this.style(0);
  }
  Rect(Grid pgrid, int w, int h, int margin) {
    this.grid = pgrid;
    this.pos = this.grid.pos[w][h].copy();
    
    this.rwidth = this.grid.cellwidth - margin;
    this.rheight = this.grid.cellheight - margin;
    this.style(0);
  }

  void mouseOver() {
    
    if (mouseX > this.pos.x && mouseX < this.pos.x + this.rwidth) {
      if (mouseY > this.pos.y && mouseY < this.pos.y + this.rheight) {
        if(this.stylenr == 0){
          this.stylenr = 1;
        }
        else{
          this.stylenr = 0;
        }
      }
    }
  }

  void move(int hor, int vert) {
    this.pos.add(hor * grid.cellwidth, vert * grid.cellwidth);
  }

  void draw() {
    this.mouseOver();
    this.style(this.stylenr);
    rect(this.pos.x, this.pos.y, this.rwidth, this.rheight);
  }
  void style(int nr) {

    switch(nr) {
    case 0:
      {
        this.strokecolor = color(0);
        this.fillcolor = color(255);
        this.thickness = 1;
        break;
      }
    case 1:
      {
        this.strokecolor = color(0);
        this.fillcolor = color(255, 0, 0);
        this.thickness = 1;
        break;
      }
    }

    stroke(this.strokecolor);
    fill(this.fillcolor);
    strokeWeight(this.thickness);
  }
}