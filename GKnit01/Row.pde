class Row{
  
  int maxstitches;
  Stitch2[] stitches;
  int maxp;
  
  
   Row(String types){
    this.maxstitches = types.length();
    this.stitches = new Stitch2[this.maxstitches];
    this.createStitches(types);
    
    }
   
   void createStitches(String types){
     //int max = 0;
     for(int i = 0; i < types.length(); i++){
       this.stitches[i] = new Stitch2(types.charAt(i));
       //max += this.stitches[i].max;
     }
     //return max;
  }
   
}