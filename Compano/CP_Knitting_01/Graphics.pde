class Graphics{
  float gwidth;
  float gheight;
  PVector pos;
  PVector[] p;
  int points;
  
  
  Graphics(PVector pos, float gwidth, float gheight, int points){
    this.pos = pos;
    this.gwidth = gwidth;
    this.gheight = gheight;
    this.points = points;
    this.p = new PVector[points];
    
  }
  
  Graphics(PVector pos, PVector pos1, PVector pos2, PVector pos3, int dim){
    
    this.pos = pos;
    this.p = new PVector[dim];
    
    for (int i = 0; i < this.p.length; i++) {
      this.p[i] = new PVector();
    }
    
    if(dim == 9){
    this.p[0].x = pos.x;
    this.p[0].y = pos.y;
    this.p[1].x = (pos.x + pos1.x)/2;
    this.p[1].y = (pos.y + pos1.y)/2;
    this.p[2].x = pos1.x;
    this.p[2].y = pos1.y;
    this.p[3].x = (pos.x + pos2.x)/2;
    this.p[3].y = (pos.y + pos2.y)/2;
    this.p[4].x = (pos1.x + pos2.x)/2;
    this.p[4].y = (pos1.y + pos2.y)/2;
    this.p[5].x = (pos1.x + pos3.x)/2;
    this.p[5].y = (pos1.y + pos3.y)/2;
    this.p[6].x = pos2.x;
    this.p[6].y = pos2.y;
    this.p[7].x = (pos2.x + pos3.x)/2;
    this.p[7].y = (pos2.y + pos3.y)/2;
    this.p[8].x = pos3.x;
    this.p[8].y = pos3.y;
    }
    else if(dim == 20){
    this.p[0].x = pos.x;
    this.p[0].y = pos.y;
    this.p[1].x = pos.x + ((pos1.x - pos.x)/3);
    this.p[1].y = pos.y;
    this.p[2].x = pos.x + ((pos1.x - pos.x)/3*2);
    this.p[2].y = pos1.y;
    this.p[3].x = pos1.x;
    this.p[3].y = pos1.y;
    
    this.p[4].x = pos.x;
    this.p[4].y = pos.y + ((pos2.y - pos.y)/4);
    this.p[5].x = pos.x + ((pos1.x - pos.x)/3);
    this.p[5].y = pos.y + ((pos2.y - pos.y)/4);
    this.p[6].x = pos.x + ((pos1.x - pos.x)/3*2);
    this.p[6].y = pos1.y + ((pos3.y - pos1.y)/4);
    this.p[7].x = pos1.x;
    this.p[7].y = pos1.y + ((pos3.y - pos1.y)/4);
    
    this.p[8].x = pos.x;
    this.p[8].y = pos.y + ((pos2.y - pos.y)/2);
    this.p[9].x = pos.x + ((pos1.x - pos.x)/3);
    this.p[9].y = pos.y + ((pos2.y - pos.y)/2);
    this.p[10].x = pos.x + ((pos1.x - pos.x)/3*2);
    this.p[10].y = pos1.y + ((pos3.y - pos1.y)/2);
    this.p[11].x = pos1.x;
    this.p[11].y = pos1.y + ((pos3.y - pos1.y)/2);
    
    this.p[12].x = pos2.x;
    this.p[12].y = pos.y + ((pos2.y - pos.y)/4*3);
    this.p[13].x = pos2.x + ((pos3.x - pos2.x)/3);
    this.p[13].y = pos.y + ((pos2.y - pos.y)/4*3);
    this.p[14].x = pos2.x + ((pos3.x - pos2.x)/3*2);
    this.p[14].y = pos1.y + ((pos3.y - pos1.y)/4*3);
    this.p[15].x = pos3.x;
    this.p[15].y = pos1.y + ((pos3.y - pos1.y)/4*3);
    
    this.p[16].x = pos2.x;
    this.p[16].y = pos2.y;
    this.p[17].x = pos2.x + ((pos3.x - pos2.x)/3);
    this.p[17].y = pos2.y;
    this.p[18].x = pos2.x + ((pos3.x - pos2.x)/3*2);
    this.p[18].y = pos3.y;
    this.p[19].x = pos3.x;
    this.p[19].y = pos3.y;
    }
    
  }
  
  
  //public void texture9(String code){
  //   int[] icode = int(split(code," "));    
     
  //     for(int i = 0; i < icode.length; i++)
  //     {
  //         curveVertex(this.p[icode[i]].x, this.p[icode[i]].y);
  //     }
      
     
  //}   
  
   public void texture20(String code){
     int[] icode = int(split(code," "));    
     
       for(int i = 0; i < icode.length; i++)
       {   
         
           curveVertex(this.p[icode[i]].x, this.p[icode[i]].y);
       }
      
     
  }   
  
  
}