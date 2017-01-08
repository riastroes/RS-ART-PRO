class Row{
  PVector pos;
  PVector first;
  
  float rwidth;
  float rheight;
  int sign;
  int maxstitches;
  int row;
  Stitch[] stitches;
  boolean lastrow;
  String rowtype;
  
  
   Row(PVector first, int maxstitches){
    this.maxstitches = maxstitches;
    this.stitches = new Stitch[this.maxstitches];
    this.first = first.copy();
    grid.last = this.first.copy();
    }
   
   void createStitches(String types){
     
      
      for(int i = 0; i < types.length(); i++){
       
          this.stitches[i] = new Stitch(types.charAt(i));
        
      }
  }
   
   void createSetup(){
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek van de opzet
         this.stitches[i] = new Stitch('0');
       }
       else if ( i < this.stitches.length-1){// opzetsteken
         this.stitches[i] = new Stitch('1');
       }
       else{                                // laatste steek van de opzet
         this.stitches[i] = new Stitch('2');
       }
     }
   }
   void createLRrecht(){
     //van links naar rechts
     
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek van de regel
         this.stitches[i] = new Stitch('3');
       }
       else if ( i < this.stitches.length-1){// steken
         this.stitches[i] = new Stitch( '4');
       }
       else{                                // laatste steek van de regel
         this.stitches[i] = new Stitch('5');
      }
     }
   }
    void createRLrecht(){
     //van rechts naar links
     
     for(int i = 0; i < this.stitches.length; i++){
      
       if(i == 0){                           // eerste steek van de regel
         this.stitches[i] = new Stitch('6');
       }
       else if ( i < this.stitches.length-1){// steken
         this.stitches[i] = new Stitch('7');
       }
       else{                                // laatste steek van de regel
         this.stitches[i] = new Stitch('8');
       }
     }
   }
   
   void createRLFinish(){
      for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek afhechten van links naar rechts
          this.stitches[i] = new Stitch('9');
       }
       else if ( i < this.stitches.length-1){// afhechten van links naar rechts
         this.stitches[i] = new Stitch('a');
       }
       else{                                // laatste steek afhechten van links naar rechts
         this.stitches[i] = new Stitch('b');
       }
     }
      
   }
   
    void createLRFinish(){
     for(int i = 0; i < this.stitches.length; i++){
       if(i == 0){                           // eerste steek afhechten van rechts naar links
         this.stitches[i] = new Stitch('c');
        }
       else if ( i < this.stitches.length-1){// afhechten van rechts naar links
         this.stitches[i] = new Stitch('d');
       }
       else{                                // laatste steek afhechten van rechts naar links
         this.stitches[i] = new Stitch('e');
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
     
        for(int i = 0; i < this.stitches.length; i++){
          this.stitches[i].draw();
        }
      
   }
}