class Pattern{
  float pwidth;
  float pheight;
  Grid grid;
  
  Pattern(float pwidth, float pheight,int wcol, int hrow){
    this.pwidth = pwidth;
    this.pheight = pheight;
    
    this.grid = new Grid(pwidth, pheight, wcol, hrow);
  }
  void drawPattern(){
   
  }
  void draw(){
     //this.grid.show();
     
    
    pushMatrix();
      
      rotate(angle);
      fill(pal1.colors[3]);
      beginShape();
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ; 
        curveVertex(this.grid.get(19).x, this.grid.get(19).y+50) ; 
        curveVertex(this.grid.get(24).x, this.grid.get(24).y) ;    
        curveVertex(this.grid.get(21).x, this.grid.get(21).y) ;    
        curveVertex(this.grid.get(2).x, this.grid.get(2).y) ;  
        curveVertex(this.grid.get(0).x, this.grid.get(0).y) ; 
        curveVertex(this.grid.get(19).x, this.grid.get(19).y+50) ; 
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
        ellipse(this.grid.get(4).x, this.grid.get(4).y, 30,30);
    popMatrix();
  }
    

}