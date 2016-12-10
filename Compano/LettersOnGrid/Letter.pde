class Letter{
  PVector pos;
  int nr;
  Grid grid;
  Letter(PVector pos, float gridWidth, float gridHeight, int nr){
    this.pos = pos;
    this.grid = new Grid(gridWidth, gridHeight, 5, 11);
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
    if(this.nr == 97){
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
    if(this.nr == 98){
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
    if(this.nr == 66){
      //B
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,2);
      set(3,3);
      set(4,4);
      set(4,7);
      set(3,8);
      set(1,8);
      beginContour();
      set(2,1);
      set(2,2);
      set(3,2);
      set(3,1);
      endContour();
      beginContour();
      set(2,4);
      set(2,7);
      set(3,7);
      set(3,4);
      endContour();
    }
    if(this.nr == 99){
      //C
      set(1,4);
      set(2,3);
      set(4,3);
      set(4,4);
      set(2,4);
      set(2,7);
      set(4,7);
      set(4,8);
      set(2,8);
      set(1,7);
      
    }
    if(this.nr == 100){
      //D
      set(1,4);
      set(2,3);
      set(3,3);
      set(3,0);
      set(4,0);
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
    if(this.nr == 101){
      //e
      set(1,4);
      set(2,3);
      set(3,3);
      set(4,4);
      set(4,6);
      set(2,6);
      set(2,7);
      set(4,7);
      set(4,8);
      set(2,8);
      set(1,7);
      beginContour();
      set(2,4);
      set(2,5);
      set(3,5);
      set(3,4);
      endContour();
      
    }
    if(this.nr == 69){
      //E
      set(1,0);
      set(4,0);
      set(4,1);
      set(2,1);
      set(2,3);
      set(4,3);
      set(4,4);
      set(2,4);
      set(2,7);
      set(4,7);
      set(4,8);
      set(1,8);
      
     }
    if(this.nr == 102){
      //f
      set(2,1);
      set(3,0);
      set(4,0);
      set(4,1);
      set(3,1);
      set(3,2);
      set(3,3);
      set(4,3);
      set(4,4);
      set(3,4);
      set(3,9);
      set(2,10);
      set(1,10);
      set(2,8);
     }
     if(this.nr == 70){
      //F
      set(1,0);
      set(4,0);
      set(4,1);
      set(2,1);
      set(2,3);
      set(4,3);
      set(4,4);
      set(2,4);
      set(2,8);
      set(1,8);
      
     }
      if(this.nr == 71){
      //G 
      set(0,1);
      set(1,0);
      set(2,0);
      set(3,1);
      set(3,3);
      set(2,3);
      set(2,1);
      set(1,1);
      set(1,7);
      set(2,7);
      set(2,5);
      set(4,5);
      set(4,6);
      set(3,6);
      set(3,7);
      set(2,8);
      set(1,8);
      set(0,7);
     }
     if(this.nr == 104){
      //H
      set(1,0);
      set(2,0);
      set(2,3);
      set(3,3);
      set(4,4);
      set(4,8);
      set(3,8);
      set(3,4);
      set(2,4);
      set(2,8);
      set(1,8);
     
    }
     if(this.nr == 105){
      //i
      set(2,1);
      set(3,1);
      set(3,2);
      set(2,2);
      endShape(CLOSE);
      beginShape();
      set(2,3);
      set(3,3);
      set(3,8);
      set(2,8);
   }
   if(this.nr == 73){
      //I
       fill(255,191,0);
      set(1,0);
      set(4,0);
      set(4,1);
      set(3,1);
      set(3,7);
      set(4,7);
      set(4,8);
      set(1,8);
      set(1,7);
      set(2,7);
      set(2,1);
      set(1,1);
   }
    if(this.nr == 106){
      //J
      set(2,1);
      set(3,1);
      set(3,2);
      set(2,2);
      endShape(CLOSE);
      beginShape();
      set(2,3);
      set(3,3);
      set(3,9);
      set(2,10);
      set(1,10);
      set(2,9);
    }
    if(this.nr == 107){
      //k
      set(1,0);
      set(2,0);
      set(2,4);
      set(4,3);
      
      set(4,4);
      set(3,5);
      set(4,8);
      set(3,8);
      set(2,6);
      set(2,8);
      set(1,8);
    }
    if(this.nr == 108){
      //l
      set(2,0);
      set(3,0);
      set(3,7);
      set(4,7);
      set(4,8);
      set(3,8);
      set(2,7);
     }
     if(this.nr == 109){
      //m
      set(1,3);
      set(2,4);
      set(3,4);
      set(4,3);
      set(4,8);
      set(3,8);
      set(3,6);
      set(2,6);
      set(2,8);
      set(1,8);
     }
     if(this.nr == 110){
      //n
      set(1,3);
      set(3,3);
      set(4,4);
      set(4,8);
      set(3,8);
      set(3,4);
      set(2,4);
      set(2,8);
      set(1,8);
     }
     if(this.nr == 111){
      //o
      set(1,4);
      set(2,3);
      set(3,3);
      set(4,4);
      set(4,7);
      set(3,8);
      set(2,8);
      set(1,7);
      beginContour();
      set(2,4);
      set(2,7);
      set(3,7);
      set(3,4);
      endContour();
     }
     if(this.nr == 112){
      //p
      set(1,3);
      set(3,3);
      set(4,4);
      set(4,7);
      set(3,8);
      set(2,8);
      set(2,10);
      set(1,10);
      
     }
     if(this.nr == 113){
      //q
      set(1,4);
      set(2,3);
      set(4,3);
      set(4,9);
      set(5,9);
      set(5,10);
      set(3,10);
      set(3,8);
      set(2,8);
      set(1,7);
      beginContour();
      set(2,4);
      set(2,7);
      set(3,7);
      set(3,4);
      endContour();
      
     }
      if(this.nr == 114){
      //r
      set(1,3);
      set(4,3);
      set(4,5);
      set(3,5);
      set(3,4);
      set(2,4);
      set(2,8);
      set(1,8);
     }
     if(this.nr == 115){
      //s
      set(1,4);
      set(2,3);
      set(4,3);
      set(4,4);
      set(2,4);
      set(2,5);
      set(4,7);
      set(3,8);
      set(1,8);
      set(1,7);
      set(2,7);
      set(2,6);
      set(1,5);
      
     }
     if(this.nr == 83){
      //S
      set(0,1);
      set(1,0);
      set(3,0);
      set(4,1);
      set(4,2);
      set(3,2);
      set(3,1);
      set(1,1);
      set(1,2);
      set(4,5);
      set(4,7);
      set(3,8);
      set(1,8);
      set(0,7);
      set(0,6);
      set(1,6);
      set(1,7);
      set(3,7);
      set(3,7);
      set(0,3);
     }
     if(this.nr == 116){
      //t
      set(1,0);
      set(2,0);
      set(2,3);
      set(3,3);
      set(3,4);
      set(2,4);
      set(2,7);
      set(4,7);
      set(4,8);
      set(2,8);
      set(1,7);
      
     }
     if(this.nr == 117){
      //u
      set(1,3);
      set(2,3);
      set(2,7);
      set(3,7);
      set(3,3);
      set(4,3);
      set(4,7);
      set(3,8);
      set(2,8);
      set(1,7);
      
      
     }
     if(this.nr == 118){
      //v
      set(1,3);
      set(2,3);
      set(2,5);
      set(3,5);
      set(3,3);
      set(4,3);
      set(4,4);
      set(3,8);
      set(2,8);
      set(1,4);
      
      
     }
      if(this.nr == 120){
       
      //x
      set(1,3);
      set(2,3);
      set(2,4);
      set(3,4);
      set(3,3);
      set(4,3);
      set(4,4);
      set(3,5);
      set(3,6);
      set(4,7);
      set(4,8);
      set(3,8);
      set(3,7);
      set(2,7);
      set(2,8);
      set(1,8);
      set(1,7);
      set(2,6);
      set(2,5);
      set(1,4);
      
     }
     if(this.nr == 40){
      //(
      set(1,1);
      set(2,0);
      set(3,0);
      set(3,1);
      set(2,2);
      set(2,6);
      set(3,7);
      set(3,8);
      set(2,8);
      set(1,7);
     }
     if(this.nr == 41){
      //)
      set(1,0);
      set(2,0);
      set(3,1);
      set(3,7);
      set(2,8);
      set(1,8);
      set(1,7);
      set(2,6);
      set(2,2);
      set(1,1);
     }
     if(this.nr == 123){
      //{
      set(1,1);
      set(2,0);
      set(3,0);
      set(3,1);
      set(2,2);
     
      set(2,6);
      set(3,7);
      set(3,8);
      set(2,8);
      set(1,7);
      set(1,4);
      set(0,4);
      set(0,3);
      set(1,3);
      
     }
     if(this.nr == 125){
      //}
      set(1,0);
      set(2,0);
      set(3,1);
      set(3,3);
      set(4,3);
      set(4,4);
      set(3,4);
      set(3,7);
      set(2,8);
      set(1,8);
      set(1,7);
      set(2,6);
      set(2,2);
     
     }
     if(this.nr == 38){
      //&
      set(1,3);
      set(2,2);
      set(3,2);
      set(4,3);
      set(4,4);
      set(3,5);
      set(3,6);
      set(4,6);
      set(4,8);
      set(3,7);
      set(2,8);
      set(1,8);
      set(0,7);
      set(0,6);
      set(1,5);
      
      beginContour();
      set(2,3);
      set(2,5);
      set(3,4);
      set(3,3);
      endContour();
      beginContour();
      set(2,6);
      set(1,7);
      set(2,7);
     
      endContour();
     
     }
     if(this.nr == 43){
      //+
      
      set(2,4);
      set(3,4);
      set(3,5);
      set(4,5);
      set(4,6);
      set(3,6);
      set(3,7);
      set(2,7);
      set(2,6);
      set(1,6);
      set(1,5);
      set(2,5);
      
     
     }
     if(this.nr == 44){
      //,
      
      set(2,7);
      set(3,7);
      set(3,8);
      set(2,9);
      set(1,9);
      set(1,8);
      set(2,7);
     
     }
      if(this.nr == 46){
      //.
      set(2,7);
      set(3,7);
      set(3,8);
      set(2,8);
     
     
     }
     if(this.nr == 48){
      //0
      set(0,4);
      set(1,3);
      set(2,3);
      set(3,4);
      set(3,7);
      set(2,8);
      set(1,8);
      set(0,7);
      beginContour();
      set(1,4);
      set(1,7);
      set(2,7);
      set(2,4);
      endContour();
      
     
     
     }
     if(this.nr == 49){
      //1
      set(0,4);
      set(1,3);
      set(2,3);
      set(2,7);
      set(3,7);
      set(3,8);
      set(0,8);
      set(0,7);
    
      set(1,7);
      set(1,4);
      
     
     
     }
     if(this.nr == 51){
      //3
      set(0,3);
      set(2,3);
      set(3,4);
      set(3,7);
      set(2,8);
      set(0,8);
      set(0,7);
    
      set(1,7);
      set(2,7);
      set(2,6);
      set(1,6);
      set(1,5);
      set(2,5);
      set(2,4);
      set(1,4);
      set(0,4);
     
     
     }
     if(this.nr == 58){
      //:
      set(2,4);
      set(3,4);
      set(3,5);
      set(2,5);
      endShape(CLOSE);
      beginShape();
      set(2,6);
      set(3,6);
      set(3,7);
      set(2,7);
     
     }
     if(this.nr == 59){
      //;
      set(2,4);
      set(3,4);
      set(3,5);
      set(2,5);
      endShape(CLOSE);
      beginShape();
      set(2,7);
      set(3,7);
      set(3,8);
      set(2,9);
      set(1,9);
      set(1,8);
      set(2,7);
     
     }
     if(this.nr == 61){
      //=
      set(1,4);
      set(4,4);
      set(4,5);
      set(1,5);
      endShape(CLOSE);
      beginShape();
      set(1,6);
      set(4,6);
      set(4,7);
      set(1,7);
     
     }
     if(this.nr == 62){
      //>
      set(1,4);
      set(2,3);
      set(4,5);
      set(2,8);   
      set(1,7);
      set(3,5);
      
     
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

  