class App {
  Grid grid;
  App() {
    this.grid = new Grid(30, 8);
    
  }
  void draw1() {
    this.grid.show();
    noFill();
    beginShape();
    curveVertex(this.grid.pos[1][7].x, this.grid.pos[1][7].y);
    curveVertex(this.grid.pos[0][6].x, this.grid.pos[0][6].y);
    for (int w= 0; w < this.grid.wmax; w++) {
      if (w % 2 == 0) {
        curveVertex(this.grid.pos[w][1].x, this.grid.pos[w][1].y);
      } else {
        curveVertex(this.grid.pos[w][0].x, this.grid.pos[w][0].y);
      }
    }

    for (int w= this.grid.wmax-1; w >= 0; w--) {
      if (w % 2 == 0) {
        curveVertex(this.grid.pos[w][6].x, this.grid.pos[w][6].y);
      } else {
        curveVertex(this.grid.pos[w][7].x, this.grid.pos[w][7].y);
      }
    }
    curveVertex(this.grid.pos[0][1].x, this.grid.pos[0][1].y);
    curveVertex(this.grid.pos[1][0].x, this.grid.pos[1][0].y);
    endShape();
    beginShape();

    // curveVertex(this.grid.pos[2][6].x, this.grid.pos[2][6].y);
    curveVertex(this.grid.pos[1][5].x, this.grid.pos[1][5].y);
    for (int w= 1; w < this.grid.wmax-1; w++) {
      if (w % 4 == 1) {
        curveVertex(this.grid.pos[w][3].x, this.grid.pos[w][3].y);
      } else if (w % 4 == 2) {
        curveVertex(this.grid.pos[w][2].x, this.grid.pos[w][2].y);
      } else if (w % 4== 3) {
        curveVertex(this.grid.pos[w][1].x, this.grid.pos[w][1].y);
      } else if (w % 4== 0) {
        curveVertex(this.grid.pos[w][2].x, this.grid.pos[w][2].y);
      }
    }
    for (int w= this.grid.wmax -2; w >= 1; w--) {
      if (w % 4 == 1) {
        curveVertex(this.grid.pos[w][4].x, this.grid.pos[w][4].y);
      } else if (w % 4 == 2) {
        curveVertex(this.grid.pos[w][5].x, this.grid.pos[w][5].y);
      } else if (w % 4== 3) {
        curveVertex(this.grid.pos[w][6].x, this.grid.pos[w][6].y);
      } else if (w % 4== 0) {
        curveVertex(this.grid.pos[w][5].x, this.grid.pos[w][5].y);
      }
    }

    curveVertex(this.grid.pos[1][3].x, this.grid.pos[1][3].y);
    curveVertex(this.grid.pos[2][2].x, this.grid.pos[2][2].y);
    endShape();
  }
  
  void draw2(){
    
    
  }
    
}