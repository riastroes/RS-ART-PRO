class Pattern{
  float pwidth;
  float pheight;
  Grid grid;
  
  Pattern(float pwidth, float pheight,int wcol, int hrow){
    this.pwidth = pwidth;
    this.pheight = pheight;
    
    this.grid = new Grid(pwidth, pheight, wcol, hrow);
  }
  void drawPattern1(){
    beginShape();
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ;  
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ; 
        curveVertex(this.grid.get(22).x, this.grid.get(22).y) ; 
        curveVertex(this.grid.get(20).x, this.grid.get(20).y) ;    
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ;    
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        curveVertex(this.grid.get(22).x, this.grid.get(22).y) ; 
      endShape();
  }
  void drawPattern2(){
    beginShape();
        curveVertex(this.grid.get(13).x, this.grid.get(13).y) ;  
        curveVertex(this.grid.get(15).x, this.grid.get(15).y) ; 
        curveVertex(this.grid.get(24).x, this.grid.get(24).y) ; 
        curveVertex(this.grid.get(44).x, this.grid.get(44).y) ;    
        curveVertex(this.grid.get(43).x, this.grid.get(43).y) ;    
        curveVertex(this.grid.get(23).x, this.grid.get(23).y) ;    
        curveVertex(this.grid.get(13).x, this.grid.get(13).y) ;  
        curveVertex(this.grid.get(15).x, this.grid.get(15).y) ; 
        curveVertex(this.grid.get(24).x, this.grid.get(24).y) ; 
      endShape();
  }
  void drawPattern3(){
    beginShape();
        curveVertex(this.grid.get(6).x, this.grid.get(6).y) ;  
        curveVertex(this.grid.get(8).x, this.grid.get(8).y) ; 
        curveVertex(this.grid.get(28).x, this.grid.get(28).y) ; 
        curveVertex(this.grid.get(27).x, this.grid.get(27).y) ;    
        curveVertex(this.grid.get(35).x, this.grid.get(35).y) ;    
        curveVertex(this.grid.get(6).x, this.grid.get(6).y) ;  
        curveVertex(this.grid.get(8).x, this.grid.get(8).y) ; 
        curveVertex(this.grid.get(28).x, this.grid.get(28).y) ; 
      endShape();
  }
  void drawPattern4(){
    beginShape();
        curveVertex(this.grid.get(38).x, this.grid.get(38).y) ;  
        curveVertex(this.grid.get(54).x, this.grid.get(54).y) ; 
        curveVertex(this.grid.get(55).x, this.grid.get(55).y) ; 
        curveVertex(this.grid.get(36).x, this.grid.get(36).y) ;    
        curveVertex(this.grid.get(38).x, this.grid.get(38).y) ;  
        curveVertex(this.grid.get(54).x, this.grid.get(54).y) ; 
        curveVertex(this.grid.get(55).x, this.grid.get(55).y) ; 
      endShape();
  }
  void drawPattern5(){
    beginShape();
        curveVertex(this.grid.get(50).x, this.grid.get(50).y) ;  
        curveVertex(this.grid.get(30).x, this.grid.get(30).y) ; 
        curveVertex(this.grid.get(32).x, this.grid.get(32).y) ; 
        curveVertex(this.grid.get(42).x, this.grid.get(42).y) ;    
        curveVertex(this.grid.get(54).x, this.grid.get(54).y) ;  
        curveVertex(this.grid.get(50).x, this.grid.get(50).y) ;  
        curveVertex(this.grid.get(30).x, this.grid.get(30).y) ; 
        curveVertex(this.grid.get(32).x, this.grid.get(32).y) ; 
      endShape();
  }
  void draw(){
     //this.grid.show();
     
    
    pushMatrix();
      //angle += 0.01;
     //  scale(angle);
      //rotate(angle);
      stroke(pal2.colors[0]);
      fill(pal1.colors[0]);
      drawPattern1();
      
     
      stroke(pal2.colors[1]);
      fill(pal1.colors[1]);
      drawPattern2();
      
      stroke(pal2.colors[2]);
      fill(pal1.colors[2]);
      drawPattern3();
      
      stroke(pal2.colors[3]);
      fill(pal1.colors[3]);
<<<<<<< HEAD
      drawPattern4();
      
      stroke(pal2.colors[4]);
      fill(pal1.colors[4]);
      drawPattern5();
      
      
=======
      strokeWeight(1);
      beginShape();
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ; 
        curveVertex(this.grid.get(19).x, this.grid.get(19).y) ; 
        curveVertex(this.grid.get(24).x, this.grid.get(24).y) ;    
        curveVertex(this.grid.get(21).x, this.grid.get(21).y) ;    
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ; 
        curveVertex(this.grid.get(19).x, this.grid.get(19).y) ; 
      endShape();
      
       fill(pal2.colors[0]);
       stroke(pal2.colors[0]);
       strokeWeight(1);
       beginShape();
        vertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        vertex(this.grid.get(0).x, this.grid.get(0).y) ; 
        vertex(this.grid.get(12).x, this.grid.get(12).y) ;    
        vertex(this.grid.get(14).x, this.grid.get(31).y) ;    
        vertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        vertex(this.grid.get(0).x, this.grid.get(0).y) ; 
       endShape();
       
       fill(pal2.colors[1]);
       stroke(pal1.colors[3]);
       strokeWeight(1);
       beginShape();
        curveVertex(this.grid.get(35).x, this.grid.get(35).y) ;  
        curveVertex(this.grid.get(57).x, this.grid.get(57).y) ; 
        curveVertex(this.grid.get(20).x, this.grid.get(20).y) ;    
        curveVertex(this.grid.get(35).x, this.grid.get(35).y) ;    
        curveVertex(this.grid.get(57).x, this.grid.get(57).y) ;  
        curveVertex(this.grid.get(20).x, this.grid.get(20).y) ; 
       endShape();
       
>>>>>>> origin/master
    popMatrix();
  }
    

}