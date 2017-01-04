class Row{
  PVector pos;
  PVector last;
  float rwidth;
  float rheight;
  int sign;
  int maxstitches;
  int row;
  Stitch[] stitches;
  boolean lastrow;
  String rowtype;
  
  
   Row(PVector pos, float pwidth, float pheight, int maxstitches){
     this.pos = pos.copy();
     this.maxstitches = maxstitches;
     this.rwidth = pwidth;
     this.rheight = pheight;
     this.stitches = new Stitch[maxstitches];
     this.last = this.pos.copy() ;
    }
   void createSetup(){
     
     float ws = this.rwidth/this.maxstitches;
     float hs = this.rheight;
     println(this.last);
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek van de opzet
         this.stitches[i] = new Stitch(this.last, "firstrsetup", ws , hs);
         this.last = this.stitches[i].last;
         
       }
       else if ( i < this.stitches.length-1){// opzetsteken
         this.stitches[i] = new Stitch(this.last, "rsetup", ws , hs);
         this.last = this.stitches[i].last;
       }
       else{                                // laatste steek van de opzet
         this.stitches[i] = new Stitch(this.last, "lastrsetup", ws , hs);
         this.last = this.stitches[i].last;
       }
     }
      
   }
   void createLRrecht(){
     //van links naar rechts
     float ws = this.rwidth/this.maxstitches;
     float hs = this.rheight;
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek van de regel
         
         this.stitches[i] = new Stitch(this.last, "firstrrecht", ws , hs);
         this.last = this.stitches[i].last;
       }
       else if ( i < this.stitches.length-1){// steken
         this.stitches[i] = new Stitch(this.last, "rrecht", ws , hs);
         this.last = this.stitches[i].last;
       }
       else{                                // laatste steek van de regel
         this.stitches[i] = new Stitch(this.last, "lastrrecht", ws , hs);
         this.last = this.stitches[i].last;
       }
     }
   }
    void createRLrecht(){
     //van rechts naar links
     float ws = this.rwidth/this.maxstitches;  //MINUS
     float hs = this.rheight;
     for(int i = 0; i < this.stitches.length; i++){
      
       if(i == 0){                           // eerste steek van de regel
         this.stitches[i] = new Stitch(this.last, "firstlrecht",-ws , hs);
         this.last = this.stitches[i].last;
       }
       else if ( i < this.stitches.length-1){// steken
         this.stitches[i] = new Stitch(this.last, "lrecht", -ws , hs);
         this.last = this.stitches[i].last;
       }
       else{                                // laatste steek van de regel
         this.stitches[i] = new Stitch(this.last, "lastlrecht", -ws , hs);
         this.last = this.stitches[i].last;
         
       }
     }
   }
   
   void createFinish(){
     
     float ws = this.rwidth/this.maxstitches;
     float hs = this.rheight;
     println(this.last);
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek afhechten
         
         this.stitches[i] = new Stitch(this.last, "firstrfinish", ws , hs);
         this.last = this.stitches[i].last;
         
       }
       else if ( i < this.stitches.length-1){// afhechten
         this.stitches[i] = new Stitch(this.last, "rfinish", ws , -hs);
         this.last = this.stitches[i].last;
       }
       else{                                // laatste steek afhechten
         this.stitches[i] = new Stitch(this.last, "lastrfinish", ws , -hs);
         this.last = this.stitches[i].last;
       }
     }
      
   }
       
     
  
   String[] gcode(float layerheight, float thickness ){
     String[] stitches = {};
     stitches = append(stitches, ";row");
     for(int stitch = 0; stitch < this.maxstitches; stitch++){
      stitches = concat(stitches, this.stitches[stitch].gcode(layerheight,thickness));
     }
    
     return stitches;
   }
   
   void draw(){
     
      beginShape();
      
      for(int i = 0; i < this.stitches.length; i++){
        this.stitches[i].draw();
      }
      endShape();
  
   }
}