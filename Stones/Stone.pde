class Stone {
  int width;
  int height;
  int nr;
  PVector pos;
  Grid grid;

  Stone(int swidth, int sheight, int nr, PVector pos) {
    this.width = swidth;
    this.height = sheight;
    this.nr = nr;
    this.pos = pos;
    this.grid = new Grid(this.width, this.height, 11, 6);
  }

  void drawbg() {


    fill(pal[3]);
    stroke(pal[3]);
    strokeWeight(1);
    rect(0, 0, this.width, this.height, 5);
  }
  void drawBGPrint() {
    fill(pal[4]);
    stroke(pal[0]);
    strokeWeight(1);
    rect(0, 0, this.width, this.height, 5);
  }
  void draw(int i) {

    fill(pal[1]);
    stroke(pal[1]);
    strokeWeight(1);
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    this.grid.show();
    this.drawbg();
    this.drawprint(i);
    popMatrix();
  }
  void drawprint(int i) {


    if (i % 13 == 0 ) {
      //this.drawBGPrint();
      //fill(pal[3]);
      //stroke(pal[0]);
      //beginShape();

      //vertex(this.grid.get(0, 0).x, this.grid.get(0, 0).y);
      //vertex(this.grid.get(10, 0).x, this.grid.get(10, 0).y);
      //vertex(this.grid.get(10, 5).x, this.grid.get(10, 5).y);
      //vertex(this.grid.get(0, 5).x, this.grid.get(0, 5).y);

      //endShape(CLOSE);
    }
    if (i % 13 == 1 ) {
      this.drawBGPrint();
      //fill(pal[3]);
      //stroke(pal[0]);
      //beginShape();
      //vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      //vertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      //vertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      //vertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 2 ) {
      //this.drawBGPrint();
      //fill(pal[3]);
      //stroke(pal[0]);
      //beginShape();

      //vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      //vertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      //vertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      //vertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      //endShape(CLOSE);
      //beginShape();
      //vertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      //vertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      //vertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      //vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);

      //endShape(CLOSE);
    }
    if (i % 13 == 3 ) {

      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      vertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      vertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      vertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      endShape(CLOSE);
      beginShape();
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 4 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);
      beginShape();
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      endShape(CLOSE);
    }

    if (i % 13 == 5 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);
      beginShape();
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 6 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 7 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 8 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      endShape(CLOSE);
    }
    if (i % 13 == 9 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(0, 4).x, this.grid.get(0, 4).y);
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      endShape(CLOSE);
    }

    if (i % 13 == 9 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(0, 4).x, this.grid.get(0, 4).y);
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      curveVertex(this.grid.get(3, 2).x, this.grid.get(3, 2).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(8, 1).x, this.grid.get(8, 1).y);
      curveVertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      endShape(CLOSE);
    }

    if (i % 13 == 9 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(0, 4).x, this.grid.get(0, 4).y);
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      curveVertex(this.grid.get(3, 2).x, this.grid.get(3, 2).y);
      curveVertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);



      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      curveVertex(this.grid.get(7, 2).x, this.grid.get(7, 2).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      curveVertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      curveVertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 3).y);
      endShape(CLOSE);
    }
    if (i % 13 == 10 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      curveVertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      curveVertex(this.grid.get(3, 2).x, this.grid.get(3, 2).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      curveVertex(this.grid.get(0, 4).x, this.grid.get(0, 4).y);
      curveVertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      curveVertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      curveVertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      endShape(CLOSE);



      beginShape();
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      curveVertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      endShape(CLOSE);



      beginShape();
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      curveVertex(this.grid.get(7, 2).x, this.grid.get(7, 2).y);
      curveVertex(this.grid.get(7, 1).x, this.grid.get(7, 1).y);
      curveVertex(this.grid.get(10, 1).x, this.grid.get(10, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      endShape(CLOSE);

      beginShape();
      curveVertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      curveVertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      curveVertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 3).y);
      endShape(CLOSE);
    }
    if (i % 13 == 11 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);


      beginShape();
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      curveVertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      curveVertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      curveVertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      curveVertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      curveVertex(this.grid.get(8, 2).x, this.grid.get(8, 2).y);
      curveVertex(this.grid.get(5, 5).x, this.grid.get(5, 2).y);
      curveVertex(this.grid.get(6, 3).x, this.grid.get(6, 3).y);
      curveVertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      curveVertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      curveVertex(this.grid.get(1, 3).x, this.grid.get(1, 3).y);
      curveVertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      endShape(CLOSE);
    }

    if (i % 13 == 12 ) {
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);


      beginShape();
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      curveVertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      curveVertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      curveVertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      curveVertex(this.grid.get(4, 4).x, this.grid.get(4, 4).y);
      endShape(CLOSE);
      
      beginShape();
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      curveVertex(this.grid.get(6, 3).x, this.grid.get(6, 3).y);
      curveVertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      curveVertex(this.grid.get(9, 1).x, this.grid.get(9, 1).y);
      curveVertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      endShape(CLOSE);
    }
  }
}