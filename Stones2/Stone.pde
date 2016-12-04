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
    this.grid = new Grid(this.width, this.height, 20, 6);
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
    this.drawcode(i);
    popMatrix();
  }

  void drawcode(int i) {
     if (i % 5 == 0) {
      //if(int
      //this.drawBGPrint();
     }
    
    if (i % 5 == 1) {
      //if(int
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      //i
      beginShape();
      vertex(this.grid.get(0, 1).x, this.grid.get(0, 1).y);
      vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      vertex(this.grid.get(1, 2).x, this.grid.get(1, 2).y);
      vertex(this.grid.get(0, 2).x, this.grid.get(0, 2).y);
      endShape(CLOSE);
      beginShape();
      vertex(this.grid.get(0, 3).x, this.grid.get(0, 3).y);
      vertex(this.grid.get(1, 3).x, this.grid.get(1, 3).y);
      vertex(this.grid.get(1, 5).x, this.grid.get(1, 5).y);
      vertex(this.grid.get(0, 5).x, this.grid.get(0, 5).y);
      endShape(CLOSE);
       
       //
      beginShape();
      vertex(this.grid.get(2, 0).x, this.grid.get(2, 0).y);
      vertex(this.grid.get(3, 0).x, this.grid.get(3, 0).y);
      vertex(this.grid.get(4, 1).x, this.grid.get(4, 1).y);
      vertex(this.grid.get(3, 1).x, this.grid.get(3, 1).y);
      vertex(this.grid.get(3, 2).x, this.grid.get(3, 2).y);
      vertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      vertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      vertex(this.grid.get(3, 5).x, this.grid.get(3, 5).y);
      vertex(this.grid.get(2, 5).x, this.grid.get(2, 5).y);
      endShape(CLOSE);

      beginShape();
      vertex(this.grid.get(5, 1).x, this.grid.get(5, 1).y);
      vertex(this.grid.get(6, 0).x, this.grid.get(6, 0).y);
      vertex(this.grid.get(7, 0).x, this.grid.get(7, 0).y);
      vertex(this.grid.get(6, 1).x, this.grid.get(6, 1).y);
      vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      vertex(this.grid.get(7, 5).x, this.grid.get(7, 5).y);
      vertex(this.grid.get(6, 5).x, this.grid.get(6, 5).y);
      vertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      endShape(CLOSE);

       beginShape();
      vertex(this.grid.get(8, 2).x, this.grid.get(8, 2).y);
      vertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      vertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      vertex(this.grid.get(11, 2).x, this.grid.get(11, 2).y);
      vertex(this.grid.get(11, 3).x, this.grid.get(11, 3).y);
      vertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      vertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      vertex(this.grid.get(11, 5).x, this.grid.get(11, 5).y);
      vertex(this.grid.get(10, 5).x, this.grid.get(10, 5).y);
      vertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      vertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      vertex(this.grid.get(9, 5).x, this.grid.get(9, 5).y);
      vertex(this.grid.get(8, 5).x, this.grid.get(8, 5).y);
      vertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      vertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      vertex(this.grid.get(8, 3).x, this.grid.get(8, 3).y);
      endShape(CLOSE);
      
      //!
       beginShape();
       vertex(this.grid.get(12, 0).x, this.grid.get(12, 0).y);
       vertex(this.grid.get(13, 0).x, this.grid.get(13, 0).y);
       vertex(this.grid.get(13, 3).x, this.grid.get(13, 3).y);
       vertex(this.grid.get(12, 3).x, this.grid.get(12, 3).y);
       endShape(CLOSE);
        beginShape();
       vertex(this.grid.get(12, 4).x, this.grid.get(12, 4).y);
       vertex(this.grid.get(13, 4).x, this.grid.get(13, 4).y);
       vertex(this.grid.get(13, 5).x, this.grid.get(13, 5).y);
       vertex(this.grid.get(12, 5).x, this.grid.get(12, 5).y);
       endShape(CLOSE);
       //=
        beginShape();
       vertex(this.grid.get(14, 2).x, this.grid.get(14, 2).y);
       vertex(this.grid.get(16, 2).x, this.grid.get(16, 2).y);
       vertex(this.grid.get(16, 3).x, this.grid.get(16, 3).y);
       vertex(this.grid.get(14, 3).x, this.grid.get(14, 3).y);
       endShape(CLOSE);
        beginShape();
       vertex(this.grid.get(14, 4).x, this.grid.get(14, 4).y);
       vertex(this.grid.get(16, 4).x, this.grid.get(16, 4).y);
       vertex(this.grid.get(16, 5).x, this.grid.get(16, 5).y);
       vertex(this.grid.get(14, 5).x, this.grid.get(14, 5).y);
       endShape(CLOSE);
       
       //1
       beginShape();
      vertex(this.grid.get(18, 2).x, this.grid.get(18, 2).y);
      vertex(this.grid.get(19, 2).x, this.grid.get(19, 2).y);
      vertex(this.grid.get(19, 5).x, this.grid.get(19, 5).y);
      vertex(this.grid.get(18, 5).x, this.grid.get(18, 5).y);
      vertex(this.grid.get(18, 3).x, this.grid.get(18,3).y);
      vertex(this.grid.get(17, 3).x, this.grid.get(17, 3).y);
      endShape(CLOSE);
    }

    if (i % 5 ==2) {
      //for( x -
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);


      beginShape();
      vertex(this.grid.get(0, 0).x, this.grid.get(0, 0).y);
      vertex(this.grid.get(1, 0).x, this.grid.get(1, 0).y);
      vertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      vertex(this.grid.get(1, 2).x, this.grid.get(1, 2).y);
      vertex(this.grid.get(2, 3).x, this.grid.get(2, 3).y);
      vertex(this.grid.get(1, 3).x, this.grid.get(1, 3).y);
      vertex(this.grid.get(1, 5).x, this.grid.get(1, 5).y);
      vertex(this.grid.get(0, 5).x, this.grid.get(0, 5).y);
      endShape(CLOSE);

      //o
      beginShape();
      vertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      vertex(this.grid.get(5, 2).x, this.grid.get(5, 2).y);
      vertex(this.grid.get(6, 3).x, this.grid.get(6, 3).y);
      vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      vertex(this.grid.get(5, 5).x, this.grid.get(5, 5).y);
      vertex(this.grid.get(4, 5).x, this.grid.get(4, 5).y);
      vertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      vertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
     
      endShape(CLOSE);

      //r
      beginShape();
      vertex(this.grid.get(8, 2).x, this.grid.get(8, 2).y);
      vertex(this.grid.get(9, 2).x, this.grid.get(9, 2).y);
      vertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      vertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      vertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      vertex(this.grid.get(8, 5).x, this.grid.get(8, 5).y);
      vertex(this.grid.get(7, 5).x, this.grid.get(7, 5).y);
      vertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);

      endShape(CLOSE);
      // (
      beginShape();
      vertex(this.grid.get(11, 1).x, this.grid.get(11, 1).y);
      vertex(this.grid.get(12, 0).x, this.grid.get(12, 0).y);
      vertex(this.grid.get(13, 0).x, this.grid.get(13, 0).y);
      vertex(this.grid.get(12, 1).x, this.grid.get(12, 1).y);
      vertex(this.grid.get(12, 4).x, this.grid.get(13, 4).y);
      vertex(this.grid.get(13, 5).x, this.grid.get(13, 5).y);
      vertex(this.grid.get(12, 5).x, this.grid.get(12, 5).y);
      vertex(this.grid.get(11, 4).x, this.grid.get(11, 4).y);
      endShape(CLOSE);

  // x
      beginShape();
      vertex(this.grid.get(14, 2).x, this.grid.get(14, 2).y);
      vertex(this.grid.get(15, 3).x, this.grid.get(15, 3).y);
      vertex(this.grid.get(16, 3).x, this.grid.get(16, 3).y);
      vertex(this.grid.get(17, 2).x, this.grid.get(17, 2).y);
      vertex(this.grid.get(17, 3).x, this.grid.get(17, 3).y);
      vertex(this.grid.get(16, 3).x, this.grid.get(16, 3).y);
      vertex(this.grid.get(16, 4).x, this.grid.get(16, 4).y);
      vertex(this.grid.get(17, 5).x, this.grid.get(17, 5).y);
      vertex(this.grid.get(16, 5).x, this.grid.get(16, 5).y);
      vertex(this.grid.get(16, 4).x, this.grid.get(16, 4).y);
      vertex(this.grid.get(15, 4).x, this.grid.get(15, 4).y);
      vertex(this.grid.get(15, 5).x, this.grid.get(15, 5).y);
      vertex(this.grid.get(14, 5).x, this.grid.get(14, 5).y);
      vertex(this.grid.get(15, 4).x, this.grid.get(15, 4).y);
      vertex(this.grid.get(15, 3).x, this.grid.get(15, 3).y);
      vertex(this.grid.get(14, 3).x, this.grid.get(14, 3).y);
      endShape(CLOSE);

      beginShape();
      vertex(this.grid.get(18, 3).x, this.grid.get(18, 3).y);
      vertex(this.grid.get(19, 3).x, this.grid.get(19, 3).y);
      vertex(this.grid.get(19, 4).x, this.grid.get(19, 4).y);
      vertex(this.grid.get(18, 4).x, this.grid.get(18, 4).y);
      endShape(CLOSE);
     
    }
    if (i % 5 ==3) {
      //else{
      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);

      beginShape();
      vertex(this.grid.get(1, 2).x, this.grid.get(1, 2).y);
      vertex(this.grid.get(2, 2).x, this.grid.get(2, 2).y);
      vertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      vertex(this.grid.get(3, 4).x, this.grid.get(3, 4).y);
      vertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      vertex(this.grid.get(2, 5).x, this.grid.get(2, 5).y);
      vertex(this.grid.get(1, 5).x, this.grid.get(1, 5).y);
      vertex(this.grid.get(0, 4).x, this.grid.get(0, 4).y);
      vertex(this.grid.get(0, 3).x, this.grid.get(0, 3).y);
      endShape(CLOSE);

      beginShape();
      vertex(this.grid.get(4, 0).x, this.grid.get(4, 0).y);
      vertex(this.grid.get(5, 0).x, this.grid.get(5, 0).y);
      vertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      vertex(this.grid.get(6, 5).x, this.grid.get(6, 5).y);
      vertex(this.grid.get(4, 5).x, this.grid.get(4, 5).y);
      endShape(CLOSE);

      beginShape();
      vertex(this.grid.get(8, 2).x, this.grid.get(8, 2).y);
      vertex(this.grid.get(9, 2).x, this.grid.get(9, 2).y);
      vertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      vertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      vertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      vertex(this.grid.get(9, 5).x, this.grid.get(9, 5).y);
      vertex(this.grid.get(8, 5).x, this.grid.get(8, 5).y);
      vertex(this.grid.get(7, 4).x, this.grid.get(7, 4).y);
      vertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      vertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      endShape(CLOSE);
     //****
      beginShape();
      vertex(this.grid.get(12, 2).x, this.grid.get(12, 2).y);
      vertex(this.grid.get(13, 2).x, this.grid.get(13, 2).y);
     vertex(this.grid.get(14, 3).x, this.grid.get(14, 3).y);
      
      vertex(this.grid.get(14, 4).x, this.grid.get(14, 4).y);
      vertex(this.grid.get(12, 4).x, this.grid.get(12, 4).y);
      vertex(this.grid.get(13, 5).x, this.grid.get(13, 5).y);
      vertex(this.grid.get(12, 5).x, this.grid.get(12, 5).y);
      vertex(this.grid.get(11, 4).x, this.grid.get(11, 4).y);
      vertex(this.grid.get(11, 3).x, this.grid.get(11, 3).y);
      endShape(CLOSE);

      //{
      beginShape();
      vertex(this.grid.get(17, 1).x, this.grid.get(17, 1).y);
      vertex(this.grid.get(18, 0).x, this.grid.get(18, 0).y);
      vertex(this.grid.get(19, 0).x, this.grid.get(19, 0).y);
      vertex(this.grid.get(18, 1).x, this.grid.get(18, 1).y);
      vertex(this.grid.get(18, 4).x, this.grid.get(18, 4).y);
      vertex(this.grid.get(19, 5).x, this.grid.get(19, 5).y);
      vertex(this.grid.get(18, 5).x, this.grid.get(18, 5).y);
      vertex(this.grid.get(17, 4).x, this.grid.get(17, 4).y);
      vertex(this.grid.get(17, 3).x, this.grid.get(17, 3).y);
      vertex(this.grid.get(16, 3).x, this.grid.get(16, 3).y);
      vertex(this.grid.get(17, 2).x, this.grid.get(17, 2).y);
      endShape(CLOSE);
    }
    if (i % 5 == 4) {

      this.drawBGPrint();
      fill(pal[3]);
      stroke(pal[0]);
      // } x + 10 >
      beginShape();
      vertex(this.grid.get(0, 0).x, this.grid.get(0, 0).y);
      vertex(this.grid.get(1, 0).x, this.grid.get(1, 0).y);
      vertex(this.grid.get(2, 1).x, this.grid.get(2, 1).y);
      vertex(this.grid.get(2, 2).x, this.grid.get(2, 2).y);
      vertex(this.grid.get(3, 3).x, this.grid.get(3, 3).y);
      vertex(this.grid.get(2, 3).x, this.grid.get(2, 3).y);
      vertex(this.grid.get(2, 4).x, this.grid.get(2, 4).y);
      vertex(this.grid.get(1, 5).x, this.grid.get(1, 5).y);
      vertex(this.grid.get(0, 5).x, this.grid.get(0, 5).y);
      vertex(this.grid.get(1, 4).x, this.grid.get(1, 4).y);
      vertex(this.grid.get(1, 1).x, this.grid.get(1, 1).y);
      endShape(CLOSE);
      
      //x
       beginShape();
      vertex(this.grid.get(4, 2).x, this.grid.get(4, 2).y);
      vertex(this.grid.get(5, 3).x, this.grid.get(5, 3).y);
      vertex(this.grid.get(6, 3).x, this.grid.get(6, 3).y);
      vertex(this.grid.get(7, 2).x, this.grid.get(7, 2).y);
      vertex(this.grid.get(7, 3).x, this.grid.get(7, 3).y);
      vertex(this.grid.get(6, 3).x, this.grid.get(6, 3).y);
      vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      vertex(this.grid.get(7, 5).x, this.grid.get(7, 5).y);
      vertex(this.grid.get(6, 5).x, this.grid.get(6, 5).y);
      vertex(this.grid.get(6, 4).x, this.grid.get(6, 4).y);
      vertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      vertex(this.grid.get(5, 5).x, this.grid.get(5, 5).y);
      vertex(this.grid.get(4, 5).x, this.grid.get(4, 5).y);
      vertex(this.grid.get(5, 4).x, this.grid.get(5, 4).y);
      vertex(this.grid.get(5, 3).x, this.grid.get(5, 3).y);
      vertex(this.grid.get(4, 3).x, this.grid.get(4, 3).y);
      endShape(CLOSE);
      
       //+
      beginShape();
      vertex(this.grid.get(9, 2).x, this.grid.get(9, 2).y);
      vertex(this.grid.get(10, 2).x, this.grid.get(10, 2).y);
      vertex(this.grid.get(10, 3).x, this.grid.get(10, 3).y);
      vertex(this.grid.get(11, 4).x, this.grid.get(11, 4).y);
      vertex(this.grid.get(10, 4).x, this.grid.get(10, 4).y);
      vertex(this.grid.get(10, 5).x, this.grid.get(10, 5).y);
      vertex(this.grid.get(9, 5).x, this.grid.get(9, 5).y);
      vertex(this.grid.get(9, 4).x, this.grid.get(9, 4).y);
      vertex(this.grid.get(8, 4).x, this.grid.get(8, 4).y);
      vertex(this.grid.get(9, 3).x, this.grid.get(9, 3).y);
      endShape(CLOSE);
      
      // 1
       beginShape();
      vertex(this.grid.get(13, 2).x, this.grid.get(13, 2).y);
      vertex(this.grid.get(14, 2).x, this.grid.get(14, 2).y);
      vertex(this.grid.get(14, 5).x, this.grid.get(14, 5).y);
      vertex(this.grid.get(13, 5).x, this.grid.get(13, 5).y);
      vertex(this.grid.get(13, 3).x, this.grid.get(13,3).y);
       vertex(this.grid.get(12, 3).x, this.grid.get(12, 3).y);
      endShape(CLOSE);
      
       //o
      beginShape();
      vertex(this.grid.get(16, 2).x, this.grid.get(16, 2).y);
      vertex(this.grid.get(17, 2).x, this.grid.get(17, 2).y);
      vertex(this.grid.get(18, 3).x, this.grid.get(18, 3).y);
      vertex(this.grid.get(18, 4).x, this.grid.get(18, 4).y);
      vertex(this.grid.get(17, 5).x, this.grid.get(17, 5).y);
      vertex(this.grid.get(16, 5).x, this.grid.get(16, 5).y);
      vertex(this.grid.get(15, 4).x, this.grid.get(15, 4).y);
      vertex(this.grid.get(15, 3).x, this.grid.get(15, 3).y);
    
      endShape(CLOSE);

    }
    if (i % 5 >3) {
      //this.drawBGPrint();
    }
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