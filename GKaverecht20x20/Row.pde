class Row{
  
  int maxstitches;
  Stitch[] stitches;
  ArrayList<PVector> row;
  
  Row(int arow, String types){
    row = new ArrayList<PVector>();
    if(arow % 2 == 1){
      types= new StringBuilder(types).reverse().toString();
    }
    this.maxstitches = types.length();
    this.stitches = new Stitch[this.maxstitches];
    
    for(int s = 0; s < types.length(); s++){
       this.stitches[s] = new Stitch(types.charAt(s));
       for(int i = 0; i < this.stitches[s].max; i++){
         row.add(this.stitches[s].stitch[i].add(grid.last));
       }
       grid.last = row.get(this.row.size()-1);
       grid.last.z = 0;
     }
     
  }
}