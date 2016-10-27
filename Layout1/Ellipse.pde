class Ellipse{

  PVector pos;//center
  float ewidth;
  float eheight;

  Grid grid;
  color strokecolor;
  color fillcolor;
  float thickness;
  char stylenr = '0';

  Ellipse(PVector ppos, float pwidth, float pheight, Grid pgrid) {
    this.pos = ppos.copy();
    this.ewidth = pwidth;
    this.eheight = pheight;
    this.grid = pgrid;
    this.style('0');
  }
  Ellipse(Grid pgrid, int w, int h) {
    this.grid = pgrid;
    
    this.pos = this.grid.pos[w][h].copy();
    this.pos.x += this.grid.cellwidth/2;
    this.pos.y += this.grid.cellheight/2;
    
    this.ewidth = this.grid.cellwidth;
    this.eheight = this.grid.cellheight;
    this.style('0');
 }

  void mouseOver() {
    
    if (mouseX > this.pos.x - (this.ewidth/2) && mouseX < this.pos.x + (this.ewidth/2)) {
      if (mouseY > this.pos.y - (this.eheight/2) && mouseY < this.pos.y + (this.eheight/2)) {
        if(this.stylenr == '0'){
          this.stylenr = '1';
        }
        else{
          this.stylenr = '0';
        }
      }
    }
  }

  
  void draw() {
    this.mouseOver();
    this.style(this.stylenr);
    ellipse(this.pos.x, this.pos.y, this.ewidth-1, this.eheight-1); //<>//
 
  }
  void style(char nr) {

    switch(nr) {
    case '0':
      {
        this.strokecolor = color(255);
        this.fillcolor = color(255);
        this.thickness = 1;
        break;
      }
    case '1':
      {
        this.strokecolor = color(0);
        this.fillcolor = color(255, 0, 0);
        this.thickness = 0;
        break;
      }
    }

    stroke(this.strokecolor);
    fill(this.fillcolor);
    strokeWeight(this.thickness);
  }
}