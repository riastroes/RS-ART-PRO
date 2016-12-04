class Letter{
  PVector pos;
  int nr;
  Grid grid;
  Letter(PVector pos, float gridWidth, float gridHeigh, int rows, int cols, int nr){
    this.pos = pos;
    this.grid = new Grid(gridWidth, gridHeigh, 5, 10);
    this.nr = nr;
  }
  
  void show(){
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    this.grid.show();
    popMatrix();
  }
   void draw(){
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    this.drawLetter2();
    popMatrix();
  }
  void set(int x, int y){
    vertex(this.grid.get(x, y).x, this.grid.get(x, y).y);
  }
  void drawLetter2(){
     beginShape();
    if(this.nr == 1){
      //a
      set(1,4);
      set(2,3);
      set(4,3);
      set(4,8);
      set(2,8);
      set(1,7);
      beginContour();
      set(2,4);
      set(2,7);
      set(3,7);
      set(3,4);
      endContour();
    }
    if(this.nr == 2){
      //B
      set(1,0);
      set(2,0);
      set(2,3);
      set(3,3);
      set(4,4);
      set(4,7);
      set(3,8);
      set(1,8);
      beginContour();
      set(2,4);
      set(2,7);
      set(3,7);
      set(3,4);
      endContour();
    }
    endShape(CLOSE);
  }
  void drawLetter(){
    beginShape();
    if(this.nr == 1){
      //A
      set(1,1);
      set(2,0);
      set(3,0);
      set(4,1);
      set(4,6);
      set(3,6);
      set(3,3);
      set(2,3);
      set(2,6);
      set(1,6);
      
      beginContour();
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,1);
      endContour();
    }
    if(this.nr == 2){
      //B
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,2);
      set(3,3);
      set(4,4);
      set(4,5);
      set(3,6);
      set(1,6);
      
      beginContour();
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,1);
      endContour();
      beginContour();
      set(2,4);
      set(2,5);
      set(3,5);
      set(3,4);
      endContour();
    }
    if(this.nr == 3){
      //C
      set(1,1);
      set(2,0);
      set(3,0);
      set(4,1);
      set(2,1);
      set(2,5);
      set(4,5);
      set(3,6);
      set(2,6);
      set(1,5);
    }
    if(this.nr == 4){
      //D
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,5);
      set(3,6);
      set(1,6);
      beginContour();
      set(2,1);
      set(2,5);
      set(3,5);
      set(3,1);
      endContour();
    }
     if(this.nr == 5){
      //F
      set(1,0);
      set(4,0);
      set(4,1);
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,3);
      set(2,3);
      set(2,5);
      set(4,5);
      set(4,6);
      set(1,6);
    }
    if(this.nr == 6){
      //F
      set(1,0);
      set(4,0);
      set(4,1);
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,3);
      set(2,3);
      set(2,6);
      set(1,6);
    }
   if(this.nr == 7){
      //G
      set(1,1);
      set(2,0);
      set(3,0);
      set(4,1);
      set(4,5);
      set(3,6);
      set(1,6);
      set(1,5);
      set(3,5);
      set(3,3);
      set(2,3);
      set(1,2);
      
      beginContour();
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,1);
      endContour();
    }
    if(this.nr == 8){
      //H
      set(1,0);
      set(2,0);
      set(2,2);
      set(3,2);
      set(3,0);
      set(4,0);
      set(4,6);
      set(3,6);
      set(3,3);
      set(2,3);
      set(2,6);
      set(1,6);
    }
     if(this.nr == 9){
      //I
      //set(2,0);
      //set(3,0);
      //set(3,1);
      //set(2,1);
      //endShape(CLOSE);
      //beginShape();
      //set(2,2);
      //set(3,2);
      //set(3,6);
      //set(2,6);
      //I
      set(1,0);
      set(4,0);
      set(4,1);
      set(3,1);
      set(3,5);
      set(4,5);
      set(4,6);
      set(1,6);
      set(1,5);
      set(2,5);
      set(2,1);
      set(1,1);
      
    }
    if(this.nr == 12){
      //L
      set(1,0);
      set(2,0);
      set(2,5);
      set(4,5);
      set(4,6);
      set(1,6);
    }
     if(this.nr == 14){
      //n
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,6);
      set(3,6);
      set(3,1);
      set(2,1);
      set(2,6);
      set(1,6);
     }
    if(this.nr == 15){
      //O
      set(1,1);
      set(2,0);
      set(3,0);
      set(4,1);
      set(4,5);
      set(3,6);
      set(2,6);
      set(1,5);
      beginContour();
      set(2,1);
      set(2,5);
      set(3,5);
      set(3,1);
      endContour();
    }
    if(this.nr == 18){
      //R
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,2);
      set(3,3);
      set(4,4);
      set(4,5);
      set(4,6);
      set(3,6);
      set(3,5);
      set(2,4);
      set(2,6);
      set(1,6);
      
      beginContour();
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,1);
      endContour();
     
    }
    if(this.nr == 19){
      //R
      set(2,0);
      set(4,0);
      set(4,1);
      set(2,1);
      set(2,2);
      set(4,4);
      set(4,5);
      set(3,6);
      set(1,6);
      set(1,5);
      set(3,5);
      set(3,4);
      set(1,2);
      set(1,1);
  }
    if(this.nr == 20){
      //T
      set(1,0);
      set(4,0);
      set(4,1);
      set(3,1);
      set(3,6);
      set(2,6);
      set(2,1);
      set(1,1);
    }
     if(this.nr == 21){
      
    }
    endShape(CLOSE);
  }
}

  