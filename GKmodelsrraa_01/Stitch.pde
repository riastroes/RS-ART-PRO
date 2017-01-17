class Stitch{
  char type;
  PVector[] stitch;
  int max;
  
  Stitch( char type, int a, int r){
    this.type = type;
    this.create(this.type,a,r);
   }
  
  void create(char type, int a, int r){
     switch(type){
      
       case 'a': {                         //"rsetup" opzetsteek naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,0,2);
        this.stitch[2] = new PVector(4,2,2);
        this.stitch[3] = new PVector(4,3,r);
        this.stitch[4] = new PVector(3,4,a);   
        this.stitch[5] = new PVector(2,4,a);
        this.stitch[6] = new PVector(1,3,a);
        this.stitch[7] = new PVector(1,2,r);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
      }
      case 'n': {                         //"rsetup" opzetsteek naar rechts
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(1,1,a);
        this.stitch[2] = new PVector(0,3,r);
        this.stitch[3] = new PVector(1,4,a);
        this.stitch[4] = new PVector(2,3,a);   
        this.stitch[5] = new PVector(1,1,r);
        this.stitch[6] = new PVector(2,0,a);
        
        break;
      }
       case 'o': {                         //"rsetup" opzetsteek naar rechts
        this.max = 8;
       this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(1,1,a);
        this.stitch[2] = new PVector(0,3,r);
        this.stitch[3] = new PVector(1,4,a);
        this.stitch[4] = new PVector(2,3,a);   
        this.stitch[5] = new PVector(1,1,r);
        this.stitch[6] = new PVector(2,0,a);
        this.stitch[7] = new PVector(2,2,a);
        break;
      }
       case 'p': {                         //"rsetup" opzetsteek naar rechts
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
        this.stitch[2] = new PVector(0,3,r);
        this.stitch[3] = new PVector(-1,4,a);
        this.stitch[4] = new PVector(-2,3,a);   
        this.stitch[5] = new PVector(-1,1,r);
        this.stitch[6] = new PVector(-2,0,a);
        
        break;
      }
       case 'q': {                         //"rsetup" opzetsteek naar rechts
        this.max = 8;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
        this.stitch[2] = new PVector(0,3,r);
        this.stitch[3] = new PVector(-1,4,a);
        this.stitch[4] = new PVector(-2,3,a);   
        this.stitch[5] = new PVector(-1,1,a);
        this.stitch[6] = new PVector(-2,0,r);
        this.stitch[7] = new PVector(-2,2,a);
        
        break;
      }
       case 'r': {                         //"rsetup" opzetsteek naar rechts
        this.max = 5;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,2,2);
        this.stitch[2] = new PVector(1,3,a);
        this.stitch[3] = new PVector(0,2,a);
        this.stitch[4] = new PVector(2,0,2);   
       
        
        break;
      }
       case 's': {                         //"rsetup" opzetsteek naar rechts
        this.max = 6;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,2,2);
        this.stitch[2] = new PVector(1,3,a);
        this.stitch[3] = new PVector(0,2,a);
        this.stitch[4] = new PVector(2,0,2); 
        this.stitch[5] = new PVector(2,1,2);   
       
        
        break;
      }
       case 't': {                         //"rsetup" opzetsteek naar rechts
        this.max = 5;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(-2,-2,2);
        this.stitch[2] = new PVector(-1,-3,a);
        this.stitch[3] = new PVector(0,-2,a);
        this.stitch[4] = new PVector(-2,0,2);   
       
        
        break;
      }
       case 'u': {                         //"rsetup" opzetsteek naar rechts
        this.max = 9;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
         this.stitch[2] = new PVector(0,3,2);
          this.stitch[3] = new PVector(0,2,2);
        this.stitch[4] = new PVector(-1,3,2);
        this.stitch[5] = new PVector(-3,1,2);
        this.stitch[6] = new PVector(-2,0,a);
        this.stitch[7] = new PVector(-1,1,a);
        this.stitch[8] = new PVector(-3,3,2); 
        //this.stitch[6] = new PVector(-2,2,2);   
       
        
        break;
      }
       case 'v': {                         //"rsetup" opzetsteek naar rechts
        this.max = 5;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(-1,-1,2);
        this.stitch[2] = new PVector(-1,-3,a);
        this.stitch[3] = new PVector(0,-2,a);
        this.stitch[4] = new PVector(-2,0,2);   
       
        
        break;
      }
      case 'b':    {                      //"lastrsetup":{          //laatste opzetsteek naar rechts
        this.max = 12;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(2,0,2);
        this.stitch[2] = new PVector(4,2,2);
        this.stitch[3] = new PVector(4,3,r);
        this.stitch[4] = new PVector(3,4,a);   
        this.stitch[5] = new PVector(2,4,a);
        this.stitch[6] = new PVector(1,3,a);
        this.stitch[7] = new PVector(1,2,r);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(5,0,2);
        this.stitch[10] = new PVector(5,1,2);
        this.stitch[11] = new PVector(4,1,2);
         break;
      }
      case 'c':    {                      //links
        
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
        this.stitch[2] = new PVector(-1,3,r);
        this.stitch[3] = new PVector(0,4,r);
        this.stitch[4] = new PVector(0,6,r);
        this.stitch[5] = new PVector(-1,7,a);
        this.stitch[6] = new PVector(-2,7,a);
        this.stitch[7] = new PVector(-3,6,a);
        this.stitch[8] = new PVector(-3,4,r);
        this.stitch[9] = new PVector(-2,3,r);
        this.stitch[10] = new PVector(-2,1,r);
        this.stitch[11] = new PVector(-3,0,a);
        this.stitch[12] = new PVector(-4,0,a);
        
        break;
      
      }
       case 'd':    {                      //eerste links
        this.max = 14;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
        this.stitch[2] = new PVector(-1,3,r);
        this.stitch[3] = new PVector(0,4,r);
        this.stitch[4] = new PVector(0,6,r);
        this.stitch[5] = new PVector(-1,7,a);
        this.stitch[6] = new PVector(-2,7,a);
        this.stitch[7] = new PVector(-3,6,a);
        this.stitch[8] = new PVector(-3,4,r);
        this.stitch[9] = new PVector(-2,3,r);
        this.stitch[10] = new PVector(-2,1,r);
        this.stitch[11] = new PVector(-3,0,a);  
        this.stitch[12] = new PVector(-4,0,a);  
        this.stitch[13] = new PVector(-4,4,2);
        //this.stitch[14] = new PVector(-4,4,2);
         break;
      }
      case 'e':      {                    //recht
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(1,0,a);
        this.stitch[2] = new PVector(2,1,a);
        this.stitch[3] = new PVector(2,3,r);
        this.stitch[4] = new PVector(1,4,r);
        this.stitch[5] = new PVector(1,6,r);
        this.stitch[6] = new PVector(2,7,a);
        this.stitch[7] = new PVector(3,7,a);
        this.stitch[8] = new PVector(4,6,a);
        this.stitch[9] = new PVector(4,4,r);
        this.stitch[10] = new PVector(3,3,r);
        this.stitch[11] = new PVector(3,1,r);
        this.stitch[12] = new PVector(4,0,a);
       
        break;
      }
      case 'f':      {                    //recht
        this.max = 13;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(1,0,a);
        this.stitch[2] = new PVector(2,1,a);
        this.stitch[3] = new PVector(2,3,r);
        this.stitch[4] = new PVector(1,4,r);
        this.stitch[5] = new PVector(1,6,r);
        this.stitch[6] = new PVector(2,7,a);
        this.stitch[7] = new PVector(3,7,a);
        this.stitch[8] = new PVector(4,6,a);
        this.stitch[9] = new PVector(4,4,r);
        this.stitch[10] = new PVector(3,3,r);
        this.stitch[11] = new PVector(3,1,r);
        this.stitch[12] = new PVector(4,0,a);
       
        break;
      }
      
      case 'g':     {                     //laatste rechts
        this.max = 16;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(1,0,a);
        this.stitch[2] = new PVector(2,1,a);
        this.stitch[3] = new PVector(2,3,r);
        this.stitch[4] = new PVector(1,4,r);
        this.stitch[5] = new PVector(1,6,r);
        this.stitch[6] = new PVector(2,7,a);
        this.stitch[7] = new PVector(3,7,a);
        this.stitch[8] = new PVector(4,6,a);
        this.stitch[9] = new PVector(4,4,r);
        this.stitch[10] = new PVector(3,3,r);
        this.stitch[11] = new PVector(3,1,r);
        this.stitch[12] = new PVector(4,0,a);
        this.stitch[13] = new PVector(5,0,a);
        this.stitch[14] = new PVector(5,4,2);
        this.stitch[15] = new PVector(4,4,2);
        break;
      }
      
       case 'h':     {                     //eerste afhechting  
        this.max = 8;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,2);
        this.stitch[1] = new PVector(1,0,r);
        this.stitch[2] = new PVector(2,1,a);
        this.stitch[3] = new PVector(2,2,a);
        this.stitch[4] = new PVector(1,3,2);
        this.stitch[5] = new PVector(0,3,2);
        this.stitch[6] = new PVector(0,4,2);
        this.stitch[7] = new PVector(3,4,2);
     
        
         break;
      }
      case 'i':       {                  //afhechten
      this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-2,2);
        this.stitch[3] = new PVector(3,-3,r);
        this.stitch[4] = new PVector(2,-4,a);
        this.stitch[5] = new PVector(1,-4,a);
        this.stitch[6] = new PVector(0,-3,a);
        this.stitch[7] = new PVector(0,-2,r);
        this.stitch[8] = new PVector(2,0,2);
        this.stitch[9] = new PVector(4,0,2);
       
         break;
      }
      case 'j':       {  
        this.max = 17;                       //laatste afhechting
       this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-2,2);
        this.stitch[3] = new PVector(3,-3,r);
        this.stitch[4] = new PVector(2,-4,a);
        this.stitch[5] = new PVector(1,-4,a);
        this.stitch[6] = new PVector(0,-3,a);
        this.stitch[7] = new PVector(0,-2,r);
        this.stitch[8] = new PVector(2,0,2);
        this.stitch[9] = new PVector(5,0,2);
        this.stitch[10] = new PVector(6,-1,2);
        this.stitch[11] = new PVector(6,-4,2);
        this.stitch[12] = new PVector(5,-4,a);
        this.stitch[13] = new PVector(4,-3,a);
        this.stitch[14] = new PVector(4,-2,r);
        this.stitch[15] = new PVector(6,0,2);
        this.stitch[16] = new PVector(6,0,2);
       
         break;
      }
       case 'k':     {                     //eerste afhechting  
        this.max = 6;
        //this.stitch = new PVector[this.max];
        //this.stitch[0] = new PVector(0,0,a);
        //this.stitch[1] = new PVector(-1,1,a);
        //this.stitch[2] = new PVector(-1,2,r);
        //this.stitch[3] = new PVector(0,3,a);
        //this.stitch[4] = new PVector(1,3,a);
        //this.stitch[5] = new PVector(1,4,2);
        //this.stitch[6] = new PVector(-2,4,2);
     
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,a);
        this.stitch[1] = new PVector(-1,1,a);
        this.stitch[2] = new PVector(-1,2,r);
        //this.stitch[3] = new PVector(0,3,a);
        this.stitch[3] = new PVector(1,3,2);
        this.stitch[4] = new PVector(0,4,2);
        this.stitch[5] = new PVector(-2,4,2);
         break;
      }
      case 'l':       {                  //afhechten
      this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-3,-2,2);
        this.stitch[3] = new PVector(-3,-3,r);
        this.stitch[4] = new PVector(-2,-4,a);
        this.stitch[5] = new PVector(-1,-4,a);
        this.stitch[6] = new PVector(0,-3,a);
        this.stitch[7] = new PVector(0,-2,r);
        this.stitch[8] = new PVector(-2,0,2);
        this.stitch[9] = new PVector(-4,0,2);
       
         break;
      }
      case 'm':       {  
        this.max = 17;                       //laatste afhechting
       this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-3,-2,2);
        this.stitch[3] = new PVector(-3,-3,r);
        this.stitch[4] = new PVector(-2,-4,a);
        this.stitch[5] = new PVector(-1,-4,a);
        this.stitch[6] = new PVector(0,-3,a);
        this.stitch[7] = new PVector(0,-2,r);
        this.stitch[8] = new PVector(-2,0,2);
        this.stitch[9] = new PVector(-5,0,2);
        this.stitch[10] = new PVector(-6,-1,2);
        this.stitch[11] = new PVector(-6,-4,2);
        this.stitch[12] = new PVector(-5,-4,a);
        this.stitch[13] = new PVector(-4,-3,a);
        this.stitch[14] = new PVector(-4,-2,r);
        this.stitch[15] = new PVector(-6,0,2);
        this.stitch[16] = new PVector(-6,0,2);
       
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