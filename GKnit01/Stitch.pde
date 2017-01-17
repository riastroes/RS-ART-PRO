class Stitch{
  char type;
  PVector[] p;
  int max;
  
  Stitch( char type){
    this.type = type;
    this.create(this.type);
   }
  
  void create(char type){
     switch(type){
       case '0': {                         //"firstrsetup" eerste opzetsteek naar rechts
        this.max = 9;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(0,0,1);
        this.p[1] = new PVector(2,0,1);
        this.p[2] = new PVector(4,2,1);
        this.p[3] = new PVector(4,3,3);
        this.p[4] = new PVector(3,4,1);
        this.p[5] = new PVector(2,4,1);
        this.p[6] = new PVector(1,3,1);
        this.p[7] = new PVector(1,2,3);
        this.p[8] = new PVector(4,0,1);
        break;
      }
       case '1': {                         //"rsetup" opzetsteek naar rechts
        this.max = 8;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(2,0,1);
        this.p[1] = new PVector(4,2,1);
        this.p[2] = new PVector(4,3,3);
        this.p[3] = new PVector(3,4,1);   
        this.p[4] = new PVector(2,4,1);
        this.p[5] = new PVector(1,3,1);
        this.p[6] = new PVector(1,2,3);
        this.p[7] = new PVector(4,0,1);
        break;
      }
      case '2':    {                      //"lastrsetup":{          //laatste opzetsteek naar rechts
        this.max = 9;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(2,0,1);
        this.p[1] = new PVector(4,2,1);
        this.p[2] = new PVector(4,3,3);
        this.p[3] = new PVector(3,4,1);
        this.p[4] = new PVector(2,4,1);
        this.p[5] = new PVector(1,3,1);
        this.p[6] = new PVector(1,2,3);
        this.p[7] = new PVector(4,0,1);
        this.p[8] = new PVector(4,1,3);
         break;
      }
      case '3':    {                      //"firstrrecht":{
        this.max = 12;
        this.p = new PVector[this.max];
        
        this.p[0] = new PVector(1,1,1);
        this.p[1] = new PVector(1,3,3);
        this.p[2] = new PVector(0,4,3);
        this.p[3] = new PVector(0,6,3);
        this.p[4] = new PVector(1,7,1);
        this.p[5] = new PVector(2,7,1);
        this.p[6] = new PVector(3,6,1);
        this.p[7] = new PVector(3,4,3);
        this.p[8] = new PVector(2,3,3);
        this.p[9] = new PVector(2,1,3);
        this.p[10] = new PVector(3,0,1);
        this.p[11] = new PVector(4,0,1);
        
        break;
        
      }
      case '4':    {                      //"rrecht":{
        this.max = 13;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(1,1,1);
        this.p[1] = new PVector(1,3,3);
        this.p[2] = new PVector(2,3,3);
        this.p[3] = new PVector(3,4,3);
        this.p[4] = new PVector(3,6,1);
        this.p[5] = new PVector(2,7,1);
        this.p[6] = new PVector(1,7,1);
        this.p[7] = new PVector(0,6,3);
        this.p[8] = new PVector(0,4,3);
        this.p[9] = new PVector(1,3,3);
        this.p[10] = new PVector(2,1,3);
        this.p[11] = new PVector(3,0,1);
        this.p[12] = new PVector(4,0,1);
        
        break;
      }
      case '5':    {                      //"lastrrecht":{
        this.max = 13;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(1,1,1);
        this.p[1] = new PVector(1,3,3);
        this.p[2] = new PVector(0,4,3);
        this.p[3] = new PVector(0,6,3);
        this.p[4] = new PVector(1,7,1);
        this.p[5] = new PVector(2,7,1);
        this.p[6] = new PVector(3,6,1);
        this.p[7] = new PVector(3,4,3);
        this.p[8] = new PVector(2,3,3);
        this.p[9] = new PVector(2,1,3);
        this.p[10] = new PVector(3,0,1);  
        this.p[11] = new PVector(4,0,1);  
        this.p[12] = new PVector(4,4,3);
        
         break;
      }
      case '6':      {                    //"firstlrecht":{           //eerste rechte steek naar links
        this.max = 12;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(2,1,1);
        this.p[2] = new PVector(2,3,3);
        this.p[3] = new PVector(1,4,3);
        this.p[4] = new PVector(1,6,3);
        this.p[5] = new PVector(2,7,1);
        this.p[6] = new PVector(3,7,1);
        this.p[7] = new PVector(4,6,1);
        this.p[8] = new PVector(4,4,3);
        this.p[9] = new PVector(3,3,3);
        this.p[10] = new PVector(3,1,3);
        this.p[11] = new PVector(4,0,1);
       
        break;
      }
      case '7':     {                     //"lrecht":{              //rechte steek naar links
        this.max = 12;
        this.p = new PVector[this.max];
        
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(2,1,1);
        this.p[2] = new PVector(3,3,3);
        this.p[3] = new PVector(4,4,3);
        this.p[4] = new PVector(4,6,3);
        this.p[5] = new PVector(3,7,1);
        this.p[6] = new PVector(2,7,1);
        this.p[7] = new PVector(1,6,1);
        this.p[8] = new PVector(1,4,3);
        this.p[9] = new PVector(2,3,3);
        this.p[10] = new PVector(3,1,3);
        this.p[11] = new PVector(4,0,1);
       
        break;
      }
      case '8':     {                     //"lastlrecht":{          //laatste rechte steek naar links
        this.max = 13;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(2,1,1);
        this.p[2] = new PVector(2,3,3);
        this.p[3] = new PVector(1,4,3);
        this.p[4] = new PVector(1,6,3);
        this.p[5] = new PVector(2,7,1);
        this.p[6] = new PVector(3,7,1);
        this.p[7] = new PVector(4,6,1);
        this.p[8] = new PVector(4,4,3);
        this.p[9] = new PVector(3,3,3);
        this.p[10] = new PVector(3,1,3);
        this.p[11] = new PVector(4,0,1);
        this.p[12] = new PVector(4,4,3);
        break;
      }
      
     
       case '9':   {                       //"firstrfinish":{        //eerste afhechting naar rechts
        this.max = 6;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(0,0,3);
        this.p[1] = new PVector(1,0,1);
        this.p[2] = new PVector(2,1,1);
        this.p[3] = new PVector(2,2,3);
        this.p[4] = new PVector(0,4,1);
        this.p[5] = new PVector(3,4,1);
        
         break;
      }
       case 'a':     {                     //"rfinish":{            //afhechting naar rechts  
        this.max = 9;
        this.p = new PVector[this.max];
        
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(3,2,1);
        this.p[2] = new PVector(3,3,3);
        this.p[3] = new PVector(2,4,1);
        this.p[4] = new PVector(1,4,1);
        this.p[5] = new PVector(0,3,1);
        this.p[6] = new PVector(0,2,3);
        this.p[7] = new PVector(3,0,1);
        this.p[8] = new PVector(4,0,1);
        
         break;
      }
      case 'b':       {                   //"lastrfinish":{          //laatste afhechting naar rechts  
      this.max = 13;
        this.p = new PVector[this.max];
       this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(3,2,1);
        this.p[2] = new PVector(3,3,3);
        this.p[3] = new PVector(2,4,1);
        this.p[4] = new PVector(1,4,1);
        this.p[5] = new PVector(0,3,1);
        this.p[6] = new PVector(0,2,1);
        this.p[7] = new PVector(3,0,1);
        this.p[8] = new PVector(5,0,1);
        this.p[9] = new PVector(5,1,3);
        this.p[10] = new PVector(4,2,1);
        this.p[11] = new PVector(4,3,1);
        this.p[12] = new PVector(5,4,1);
        
        
         break;
      }
      case 'c':       {                   //"firstlfinish":{          //eerste afhechting naar links
        this.max = 5;
        this.p = new PVector[this.max];
        
        this.p[0] = new PVector(1,1,1);
        this.p[1] = new PVector(1,2,3);
        this.p[2] = new PVector(0,3,3);
        this.p[3] = new PVector(0,4,3);
        this.p[4] = new PVector(2,4,1);
       
         break;
      }
       case 'd':       {                   //"lfinish":{            //afhechting naar links
        this.max = 9;
        this.p = new PVector[this.max];
       
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(3,2,3);
        this.p[2] = new PVector(3,3,3);
        this.p[3] = new PVector(2,4,1);
        this.p[4] = new PVector(1,4,1);
        this.p[5] = new PVector(0,3,1);
        this.p[6] = new PVector(0,2,3);
        this.p[7] = new PVector(3,0,3);
        this.p[8] = new PVector(4,0,1);
       
       
         break;
      }
      case 'e':         {                 //"lastlfinish":{          //laatste afhechting naar links
        this.max = 13;
        this.p = new PVector[this.max];
        this.p[0] = new PVector(1,0,1);
        this.p[1] = new PVector(3,2,3);
        this.p[2] = new PVector(3,3,3);
        this.p[3] = new PVector(2,4,1);
        this.p[4] = new PVector(1,4,1);
        this.p[5] = new PVector(0,3,1);
        this.p[6] = new PVector(0,2,3);
        this.p[7] = new PVector(3,0,3);
        this.p[8] = new PVector(5,0,1);
        this.p[9] = new PVector(5,1,3);
        this.p[10] = new PVector(4,2,3);
        this.p[11] = new PVector(4,3,3);
        this.p[12] = new PVector(5,4,1);
        
       
         break;
      }
      case '-':         {                 //"lastlfinish":{          //laatste afhechting naar links
        this.max = 1;
        this.p = new PVector[this.max];
        
        this.p[0] = new PVector(4,0,0);
       
         break;
      }
    }
  }

  void draw(char type){
      //this function is used for testing
      this.create(type);
      stroke(0);
      strokeWeight(1);
      for(int i = 1; i < this.p.length; i++){
        line( this.p[i-1].x, this.p[i-1].y,  this.p[i].x, this.p[i].y);
      }
      
      
  }
}