class Row{
  
  int maxstitches;
  Stitch[] stitches;
  int maxp;
  
  
   Row(String types){
    this.maxstitches = types.length();
    this.stitches = new Stitch[this.maxstitches];
    this.maxp = this.createStitches(types);
    
    }
   
   int createStitches(String types){
     int max = 0;
     for(int i = 0; i < types.length(); i++){
       this.stitches[i] = new Stitch(types.charAt(i));
       max += this.stitches[i].max;
     }
     return max;
  }
   
}