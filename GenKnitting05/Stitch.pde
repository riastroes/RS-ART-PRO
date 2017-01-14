class Stitch{
  char type;
  PVector[] stitch;
  int max;
  
  Stitch( char type){
    this.type = type;
    this.create(this.type);
   }
  
  void create(char type){
     switch(type){
      
       case 'a': {                         //"rsetup" opzetsteek naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,0,2);
        this.stitch[2] = new PVector(4,2,2);
        this.stitch[3] = new PVector(4,3,2);
        this.stitch[4] = new PVector(3,4,1);   
        this.stitch[5] = new PVector(2,4,1);
        this.stitch[6] = new PVector(1,3,1);
        this.stitch[7] = new PVector(1,2,2);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
      }
      case 'b':    {                      //"lastrsetup":{          //laatste opzetsteek naar rechts
        this.max = 12;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,0,2);
        this.stitch[2] = new PVector(4,2,2);
        this.stitch[3] = new PVector(4,3,2);
        this.stitch[4] = new PVector(3,4,1);   
        this.stitch[5] = new PVector(2,4,1);
        this.stitch[6] = new PVector(1,3,1);
        this.stitch[7] = new PVector(1,2,2);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(5,0,2);
        this.stitch[10] = new PVector(5,1,2);
        this.stitch[11] = new PVector(4,1,2);
         break;
      }
      case 'c':    {                      //links
        
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,1);
        this.stitch[1] = new PVector(-1,1,1);
        this.stitch[2] = new PVector(-1,3,3);
        this.stitch[3] = new PVector(0,4,3);
        this.stitch[4] = new PVector(0,6,3);
        this.stitch[5] = new PVector(-1,7,1);
        this.stitch[6] = new PVector(-2,7,1);
        this.stitch[7] = new PVector(-3,6,1);
        this.stitch[8] = new PVector(-3,4,3);
        this.stitch[9] = new PVector(-2,3,3);
        this.stitch[10] = new PVector(-2,1,3);
        this.stitch[11] = new PVector(-3,0,1);
        this.stitch[12] = new PVector(-4,0,1);
        
        break;
      
      }
       case 'd':    {                      //eerste links
        this.max = 14;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,1);
        this.stitch[1] = new PVector(-1,1,1);
        this.stitch[2] = new PVector(-1,3,3);
        this.stitch[3] = new PVector(0,4,3);
        this.stitch[4] = new PVector(0,6,3);
        this.stitch[5] = new PVector(-1,7,1);
        this.stitch[6] = new PVector(-2,7,1);
        this.stitch[7] = new PVector(-3,6,1);
        this.stitch[8] = new PVector(-3,4,3);
        this.stitch[9] = new PVector(-2,3,3);
        this.stitch[10] = new PVector(-2,1,3);
        this.stitch[11] = new PVector(-3,0,1);  
        this.stitch[12] = new PVector(-4,0,1);  
        this.stitch[13] = new PVector(-4,4,2);
        //this.stitch[14] = new PVector(-4,4,2);
         break;
      }
      case 'e':      {                    //recht
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,1);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(2,3,3);
        this.stitch[4] = new PVector(1,4,3);
        this.stitch[5] = new PVector(1,6,3);
        this.stitch[6] = new PVector(2,7,1);
        this.stitch[7] = new PVector(3,7,1);
        this.stitch[8] = new PVector(4,6,1);
        this.stitch[9] = new PVector(4,4,3);
        this.stitch[10] = new PVector(3,3,3);
        this.stitch[11] = new PVector(3,1,3);
        this.stitch[12] = new PVector(4,0,1);
       
        break;
      }
      case 'f':      {                    //recht
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,1);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(2,3,3);
        this.stitch[4] = new PVector(1,4,3);
        this.stitch[5] = new PVector(1,6,3);
        this.stitch[6] = new PVector(2,7,1);
        this.stitch[7] = new PVector(3,7,1);
        this.stitch[8] = new PVector(4,6,1);
        this.stitch[9] = new PVector(4,4,3);
        this.stitch[10] = new PVector(3,3,3);
        this.stitch[11] = new PVector(3,1,3);
        this.stitch[12] = new PVector(4,0,1);
       
        break;
      }
      
      case 'g':     {                     //laatste rechts
        this.max = 16;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,1);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(2,3,3);
        this.stitch[4] = new PVector(1,4,3);
        this.stitch[5] = new PVector(1,6,3);
        this.stitch[6] = new PVector(2,7,1);
        this.stitch[7] = new PVector(3,7,1);
        this.stitch[8] = new PVector(4,6,1);
        this.stitch[9] = new PVector(4,4,3);
        this.stitch[10] = new PVector(3,3,3);
        this.stitch[11] = new PVector(3,1,3);
        this.stitch[12] = new PVector(4,0,1);
        this.stitch[13] = new PVector(5,0,1);
        this.stitch[14] = new PVector(5,4,2);
        this.stitch[15] = new PVector(4,4,2);
        break;
      }
      
       case 'h':     {                     //eerste afhechting  
        this.max = 8;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(2,2,2);
        this.stitch[4] = new PVector(1,3,2);
        this.stitch[5] = new PVector(0,3,2);
        this.stitch[6] = new PVector(0,4,2);
        this.stitch[7] = new PVector(3,4,2);
     
        
         break;
      }
      case '9':       {                  //afhechten
      this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-2,2);
        this.stitch[3] = new PVector(3,-3,2);
        this.stitch[4] = new PVector(2,-4,1);
        this.stitch[5] = new PVector(1,-4,1);
        this.stitch[6] = new PVector(0,-3,1);
        this.stitch[7] = new PVector(0,-2,2);
        this.stitch[8] = new PVector(2,0,2);
        this.stitch[9] = new PVector(4,0,2);
       
         break;
      }
      case '0':       {  
        this.max = 17;                       //laatste afhechting
       this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-2,2);
        this.stitch[3] = new PVector(3,-3,2);
        this.stitch[4] = new PVector(2,-4,1);
        this.stitch[5] = new PVector(1,-4,1);
        this.stitch[6] = new PVector(0,-3,1);
        this.stitch[7] = new PVector(0,-2,2);
        this.stitch[8] = new PVector(2,0,2);
        this.stitch[9] = new PVector(5,0,2);
        this.stitch[10] = new PVector(6,-1,2);
        this.stitch[11] = new PVector(6,-4,2);
        this.stitch[12] = new PVector(5,-4,1);
        this.stitch[13] = new PVector(4,-3,1);
        this.stitch[14] = new PVector(4,-2,2);
        this.stitch[15] = new PVector(6,0,2);
        this.stitch[16] = new PVector(6,0,2);
       
         break;
      }
      
      case '-':         {                 //"lastlfinish":{          //laatste afhechting naar links
        this.max = 1;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(4,0,0);
         break;
      }
      
      
      
    }
  }

  
}