class Stitch{
  char type;
  PVector[] p;
  PVector gpos;
  int max;
  
  
  Stitch( char type){
    
    this.max = 14;
    this.p = new PVector[this.max];
    this.type = type;
    create();
   }
  
  void create(){
    println(this.type);
    switch(this.type){
       case '0': {                         //"firstrsetup" eerste opzetsteek naar rechts
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(2,0,0).copy();
        this.p[2] = grid.get(3,1,1).copy();
        this.p[3] = grid.get(4,2,1).copy();
        this.p[4] = grid.get(4,3,1).copy();
        this.p[5] = grid.get(3,4,0).copy();
        this.p[6] = grid.get(2,4,0).copy();
        this.p[7] = grid.get(1,3,0).copy();
        this.p[8] = grid.get(1,2,1).copy();
        this.p[9] = grid.get(4,0,1).copy();
        this.p[10] = grid.get(4,0,1).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
         break;
      }
       case '1': {                         //"rsetup":{              //pzetsteek naar rechts
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(2,0,0).copy();
        this.p[2] = grid.get(3,1,1).copy();
        this.p[3] = grid.get(4,2,1).copy();
        this.p[4] = grid.get(4,3,1).copy();
        this.p[5] = grid.get(3,4,0).copy();
        this.p[6] = grid.get(2,4,0).copy();
        this.p[7] = grid.get(1,3,0).copy();
        this.p[8] = grid.get(1,2,1).copy();
        this.p[9] = grid.get(4,0,1).copy();
        this.p[10] = grid.get(4,0,1).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
         break;
      }
      case '2':    {                      //"lastrsetup":{          //laatste opzetsteek naar rechts
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(2,0,0).copy();
        this.p[2] = grid.get(3,1,1).copy();
        this.p[3] = grid.get(4,2,1).copy();
        this.p[4] = grid.get(4,3,1).copy();
        this.p[5] = grid.get(3,4,0).copy();
        this.p[6] = grid.get(2,4,0).copy();
        this.p[7] = grid.get(1,3,0).copy();
        this.p[8] = grid.get(1,2,1).copy();
        this.p[9] = grid.get(4,0,1).copy();
        this.p[10] = grid.get(4,0,1).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,1,1).copy();
        this.p[13] = grid.get(4,1,0).copy();
         break;
      }
      case '3':    {                      //"firstrrecht":{
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,1,0).copy();
        this.p[2] = grid.get(1,3,1).copy();
        this.p[3] = grid.get(0,4,1).copy();
        this.p[4] = grid.get(0,6,1).copy();
        this.p[5] = grid.get(1,7,0).copy();
        this.p[6] = grid.get(2,7,0).copy();
        this.p[7] = grid.get(3,6,0).copy();
        this.p[8] = grid.get(3,4,1).copy();
        this.p[9] = grid.get(2,3,1).copy();
        this.p[10] = grid.get(2,1,1).copy();
        this.p[11] = grid.get(3,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
        break;
        
      }
      case '4':    {                      //"rrecht":{
        this.p[0] = grid.get(1,1,0).copy();
        this.p[1] = grid.get(1,3,1).copy();
        this.p[2] = grid.get(0,4,1).copy();
        this.p[3] = grid.get(0,6,1).copy();
        this.p[4] = grid.get(1,7,0).copy();
        this.p[5] = grid.get(2,7,0).copy();
        this.p[6] = grid.get(3,6,0).copy();
        this.p[7] = grid.get(3,4,1).copy();
        this.p[8] = grid.get(2,3,1).copy();
        this.p[9] = grid.get(2,1,1).copy();
        this.p[10] = grid.get(3,0,0).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
        break;
      }
      case '5':    {                      //"lastrrecht":{
        
        this.p[0] = grid.get(1,1,0).copy();
        this.p[1] = grid.get(1,3,1).copy();
        this.p[2] = grid.get(0,4,1).copy();
        this.p[3] = grid.get(0,6,1).copy();
        this.p[4] = grid.get(1,7,0).copy();
        this.p[5] = grid.get(2,7,0).copy();
        this.p[6] = grid.get(3,6,0).copy();
        this.p[7] = grid.get(3,4,1).copy();
        this.p[8] = grid.get(2,3,1).copy();
        this.p[9] = grid.get(2,1,1).copy();
        this.p[10] = grid.get(3,0,0).copy();  
        this.p[11] = grid.get(4,0,0).copy();  
        this.p[12] = grid.get(4,4,1).copy();
        this.p[13] = grid.get(4,4,0).copy();
         break;
      }
      case '6':      {                    //"firstlrecht":{           //eerste rechte steek naar links
         this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,0,0).copy();
        this.p[2] = grid.get(2,1,0).copy();
        this.p[3] = grid.get(2,3,1).copy();
        this.p[4] = grid.get(1,4,1).copy();
        this.p[5] = grid.get(1,6,1).copy();
        this.p[6] = grid.get(2,7,0).copy();
        this.p[7] = grid.get(3,7,0).copy();
        this.p[8] = grid.get(4,6,0).copy();
        this.p[9] = grid.get(4,4,1).copy();
        this.p[10] = grid.get(3,3,1).copy();
        this.p[11] = grid.get(3,1,1).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
        break;
      }
      case '7':     {                     //"lrecht":{              //rechte steek naar links
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,0,0).copy();
        this.p[2] = grid.get(2,1,0).copy();
        this.p[3] = grid.get(2,3,1).copy();
        this.p[4] = grid.get(1,4,1).copy();
        this.p[5] = grid.get(1,6,1).copy();
        this.p[6] = grid.get(2,7,0).copy();
        this.p[7] = grid.get(3,7,0).copy();
        this.p[8] = grid.get(4,6,0).copy();
        this.p[9] = grid.get(4,4,1).copy();
        this.p[10] = grid.get(3,3,1).copy();
        this.p[11] = grid.get(3,1,1).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
        break;
      }
      case '8':     {                     //"lastlrecht":{          //laatste rechte steek naar links
        
        this.p[0] = grid.get(1,0,0).copy();
        this.p[1] = grid.get(2,1,0).copy();
        this.p[2] = grid.get(2,3,1).copy();
        this.p[3] = grid.get(1,4,1).copy();
        this.p[4] = grid.get(1,6,1).copy();
        this.p[5] = grid.get(2,7,0).copy();
        this.p[6] = grid.get(3,7,0).copy();
        this.p[7] = grid.get(4,6,0).copy();
        this.p[8] = grid.get(4,4,1).copy();
        this.p[9] = grid.get(3,3,1).copy();
        this.p[10] = grid.get(3,1,1).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,4,1).copy();
        this.p[13] = grid.get(4,4,0).copy();
        break;
      }
      
     
       case '9':   {                       //"firstrfinish":{        //eerste afhechting naar rechts
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,0,0).copy();
        this.p[2] = grid.get(2,1,0).copy();
        this.p[3] = grid.get(2,2,1).copy();
        this.p[4] = grid.get(0,4,1).copy();
        this.p[5] = grid.get(3,4,0).copy();
        this.p[6] = grid.get(3,4,0).copy();
        this.p[7] = grid.get(3,4,0).copy();
        this.p[8] = grid.get(3,4,0).copy();
        this.p[9] = grid.get(3,4,0).copy();
        this.p[10] = grid.get(3,4,0).copy();
        this.p[11] = grid.get(3,4,0).copy();
        this.p[12] = grid.get(3,4,0).copy();
        this.p[13] = grid.get(3,4,0).copy();
         break;
      }
       case 'a':     {                     //"rfinish":{            //afhechting naar rechts  
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,0,0).copy();
        this.p[2] = grid.get(3,2,1).copy();
        this.p[3] = grid.get(3,3,1).copy();
        this.p[4] = grid.get(2,4,0).copy();
        this.p[5] = grid.get(1,4,0).copy();
        this.p[6] = grid.get(0,3,0).copy();
        this.p[7] = grid.get(0,2,1).copy();
        this.p[8] = grid.get(3,0,1).copy();
        this.p[9] = grid.get(4,0,0).copy();
        this.p[10] = grid.get(4,0,0).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
         break;
      }
      case 'b':       {                   //"lastrfinish":{          //laatste afhechting naar rechts  
       this.p[0] = grid.get(1,0,0).copy();
        this.p[1] = grid.get(3,2,1).copy();
        this.p[2] = grid.get(3,3,1).copy();
        this.p[3] = grid.get(2,4,0).copy();
        this.p[4] = grid.get(1,4,0).copy();
        this.p[5] = grid.get(0,3,0).copy();
        this.p[6] = grid.get(0,2,1).copy();
        this.p[7] = grid.get(3,0,1).copy();
        this.p[8] = grid.get(5,0,0).copy();
        this.p[9] = grid.get(5,1,1).copy();
        this.p[10] = grid.get(4,2,1).copy();
        this.p[11] = grid.get(4,3,1).copy();
        this.p[12] = grid.get(5,4,0).copy();
        this.p[13] = grid.get(5,4,0).copy();
        
         break;
      }
      case 'c':       {                   //"firstlfinish":{          //eerste afhechting naar links
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,1,0).copy();
        this.p[2] = grid.get(1,2,1).copy();
        this.p[3] = grid.get(0,3,1).copy();
        this.p[4] = grid.get(0,4,1).copy();
        this.p[5] = grid.get(2,4,0).copy();
        this.p[6] = grid.get(2,4,0).copy();
        this.p[7] = grid.get(2,4,0).copy();
        this.p[8] = grid.get(2,4,0).copy();
        this.p[9] = grid.get(2,4,0).copy();
        this.p[10] = grid.get(2,4,0).copy();
        this.p[11] = grid.get(2,4,0).copy();
        this.p[12] = grid.get(2,4,0).copy();
        this.p[13] = grid.get(2,4,0).copy();
         break;
      }
       case 'd':       {                   //"lfinish":{            //afhechting naar links
        this.p[0] = grid.get(0,0,0).copy();
        this.p[1] = grid.get(1,0,0).copy();
        this.p[2] = grid.get(3,2,1).copy();
        this.p[3] = grid.get(3,3,1).copy();
        this.p[4] = grid.get(2,4,0).copy();
        this.p[5] = grid.get(1,4,0).copy();
        this.p[6] = grid.get(0,3,0).copy();
        this.p[7] = grid.get(0,2,1).copy();
        this.p[8] = grid.get(3,0,1).copy();
        this.p[9] = grid.get(4,0,0).copy();
        this.p[10] = grid.get(4,0,0).copy();
        this.p[11] = grid.get(4,0,0).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
       
         break;
      }
      case 'e':         {                 //"lastlfinish":{          //laatste afhechting naar links
        
        this.p[0] = grid.get(1,0,0).copy();
        this.p[1] = grid.get(3,2,1).copy();
        this.p[2] = grid.get(3,3,1).copy();
        this.p[3] = grid.get(2,4,0).copy();
        this.p[4] = grid.get(1,4,0).copy();
        this.p[5] = grid.get(0,3,0).copy();
        this.p[6] = grid.get(0,2,1).copy();
        this.p[7] = grid.get(3,0,1).copy();
        this.p[8] = grid.get(5,0,0).copy();
        this.p[9] = grid.get(5,1,1).copy();
        this.p[10] = grid.get(4,2,1).copy();
        this.p[11] = grid.get(4,3,1).copy();
        this.p[12] = grid.get(5,4,0).copy();
        this.p[13] = grid.get(5,4,0).copy();
       
         break;
      }
      case 'f':    {                      //"raverecht":{
         this.p[0] = grid.get(1,1,1).copy();
        this.p[1] = grid.get(1,3,0).copy();
        this.p[2] = grid.get(0,4,0).copy();
        this.p[3] = grid.get(0,6,0).copy();
        this.p[4] = grid.get(1,7,1).copy();
        this.p[5] = grid.get(2,7,1).copy();
        this.p[6] = grid.get(3,6,1).copy();
        this.p[7] = grid.get(3,4,0).copy();
        this.p[8] = grid.get(2,3,0).copy();
        this.p[9] = grid.get(2,1,0).copy();
        this.p[10] = grid.get(3,0,1).copy();
        this.p[11] = grid.get(4,0,1).copy();
        this.p[12] = grid.get(4,0,0).copy();
        this.p[13] = grid.get(4,0,0).copy();
        
        break;
      }
     
    }
    
    
  }
  String[] gcode(float layerheight, float thickness){
    String[] stitch = {};
    for(int i = 1; i < this.p.length; i++){
      PVector v = PVector.sub(this.p[i-1], this.p[i]);
      gcode.extrude += v.mag() * layerheight * thickness;
      
      stitch = append(stitch, "G1 X" + this.p[i].x + " Y" + this.p[i].y  + " E" + gcode.extrude);
    }
    return stitch;
  }
  void draw(){
     
      for(int i = 0; i < this.p.length; i++){
        vertex( this.p[i].x, this.p[i].y);
      }
      
      
  }
}