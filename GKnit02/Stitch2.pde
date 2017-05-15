class Stitch2{
  char type;
  PVector[] stitch;
  int max;
  
  Stitch2( char type){
    this.type = type;
    this.create(this.type);
  }
  
  void create(char type){
     switch(type){
        case 'A': {                         //R opzetten naar rechts, eerste steek
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,3);
        this.stitch[4] = new PVector(3,3,1);
        this.stitch[5] = new PVector(1,3,1);
        this.stitch[6] = new PVector(0,2,1);
        this.stitch[7] = new PVector(1,1,3);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        
        break;
       }
       case 'B': {                         //R opzetten naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,3);
        this.stitch[4] = new PVector(3,3,1);
        this.stitch[5] = new PVector(1,3,1);
        this.stitch[6] = new PVector(0,2,1);
        this.stitch[7] = new PVector(1,1,3);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
       }
       case 'C': {                         //R opzetten naar rechts, laatste steek
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,3);
        this.stitch[4] = new PVector(3,3,1);
        this.stitch[5] = new PVector(1,3,1);
        this.stitch[6] = new PVector(0,2,1);
        this.stitch[7] = new PVector(1,1,3);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        this.stitch[10] = new PVector(4,1,2);
        break;
       }
      
       case 'R': {                         //R naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(0,3,3);
        this.stitch[4] = new PVector(1,4,1);
        this.stitch[5] = new PVector(3,4,1);
        this.stitch[6] = new PVector(4,3,1);
        this.stitch[7] = new PVector(2,1,3);
        this.stitch[8] = new PVector(3,0,1);
        this.stitch[9] = new PVector(4,0,1);
        break;
       }
       case 'S': {                         //R laatste rechts 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(0,3,3);
        this.stitch[4] = new PVector(1,4,1);
        this.stitch[5] = new PVector(3,4,1);
        this.stitch[6] = new PVector(4,3,1);
        this.stitch[7] = new PVector(2,1,3);
        this.stitch[8] = new PVector(3,0,1);
        this.stitch[9] = new PVector(4,0,1);
        this.stitch[10] = new PVector(4,2,2);
        break;
       }
        case 'L': {                         //R naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,1);
        this.stitch[2] = new PVector(-2,1,1);
        this.stitch[3] = new PVector(0,3,3);
        this.stitch[4] = new PVector(-1,4,1);
        this.stitch[5] = new PVector(-3,4,1);
        this.stitch[6] = new PVector(-4,3,1);
        this.stitch[7] = new PVector(-2,1,3);
        this.stitch[8] = new PVector(-3,0,1);
        this.stitch[9] = new PVector(-4,0,1);
        break;
       }
       case 'K': {                         //R laatste links 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,1);
        this.stitch[2] = new PVector(-2,1,1);
        this.stitch[3] = new PVector(0,3,3);
        this.stitch[4] = new PVector(-1,4,1);
        this.stitch[5] = new PVector(-3,4,1);
        this.stitch[6] = new PVector(-4,3,1);
        this.stitch[7] = new PVector(-2,1,3);
        this.stitch[8] = new PVector(-3,0,1);
        this.stitch[9] = new PVector(-4,0,1);
        this.stitch[10] = new PVector(-4,2,2);
        break;
       }
        case 'U': {                         //R afhechten, laatste steek links
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-2,-1,2);
        this.stitch[3] = new PVector(-2,-3,2);
        this.stitch[4] = new PVector(-1,-3,1);
        this.stitch[5] = new PVector(0,-2,1);
        this.stitch[6] = new PVector(-2,0,3);
        break;
       }
        
       case 'V': {                         //R afhechten naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-3,-1,2);
        this.stitch[3] = new PVector(-4,-2,3);
        this.stitch[4] = new PVector(-3,-3,1);
        this.stitch[5] = new PVector(-1,-3,1);
        this.stitch[6] = new PVector(0,-2,1);
        this.stitch[7] = new PVector(-1,-1,3);
        this.stitch[8] = new PVector(-3,0,2);
        this.stitch[9] = new PVector(-4,0,2);
        break;
       }
      case 'W': {                         //R afhechten, eerste steek naar links
        this.max = 4;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(-1,0,1);
        this.stitch[1] = new PVector(-2,1,1);
        this.stitch[2] = new PVector(0,3,3);
        this.stitch[3] = new PVector(-2,3,2);
       
        break;
       }
       case 'X': {                         //R afhechten, eerste steek
        this.max = 4;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(1,0,1);
        this.stitch[1] = new PVector(2,1,1);
        this.stitch[2] = new PVector(0,3,3);
        this.stitch[3] = new PVector(2,3,2);
       
        break;
       }
       case 'Y': {                         //R afhechten naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-1,2);
        this.stitch[3] = new PVector(4,-2,3);
        this.stitch[4] = new PVector(3,-3,1);
        this.stitch[5] = new PVector(1,-3,1);
        this.stitch[6] = new PVector(0,-2,1);
        this.stitch[7] = new PVector(1,-1,3);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
       }
       case 'Z': {                         //R afhechten, laatste steek
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(2,-1,2);
        this.stitch[3] = new PVector(2,-3,2);
        this.stitch[4] = new PVector(1,-3,1);
        this.stitch[5] = new PVector(0,-2,1);
        this.stitch[6] = new PVector(2,0,3);
        break;
       }
         case 'a': {                         //A opzetten naar rechts, eerste steek
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,1);
        this.stitch[4] = new PVector(3,3,3);
        this.stitch[5] = new PVector(1,3,3);
        this.stitch[6] = new PVector(0,2,3);
        this.stitch[7] = new PVector(1,1,1);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        
        break;
       }
       case 'b': {                         //A opzetten naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,1);
        this.stitch[4] = new PVector(3,3,3);
        this.stitch[5] = new PVector(1,3,3);
        this.stitch[6] = new PVector(0,2,3);
        this.stitch[7] = new PVector(1,1,1);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
       }
       case 'c': {                         //A opzetten naar rechts, laatste steek
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,1,2);
        this.stitch[3] = new PVector(4,2,1);
        this.stitch[4] = new PVector(3,3,3);
        this.stitch[5] = new PVector(1,3,3);
        this.stitch[6] = new PVector(0,2,3);
        this.stitch[7] = new PVector(1,1,1);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        this.stitch[10] = new PVector(4,1,2);
        break;
       }
      
       case 'r': {                         //A naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,3,1);
        this.stitch[4] = new PVector(1,4,3);
        this.stitch[5] = new PVector(3,4,3);
        this.stitch[6] = new PVector(4,3,3);
        this.stitch[7] = new PVector(2,1,1);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        break;
       }
       case 's': {                         //A laatste rechts 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,3,1);
        this.stitch[4] = new PVector(1,4,3);
        this.stitch[5] = new PVector(3,4,3);
        this.stitch[6] = new PVector(4,3,3);
        this.stitch[7] = new PVector(2,1,1);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        this.stitch[10] = new PVector(4,2,2);
        break;
       }
        case 'l': {                         //A naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,3,1);
        this.stitch[4] = new PVector(-1,4,3);
        this.stitch[5] = new PVector(-3,4,3);
        this.stitch[6] = new PVector(-4,3,3);
        this.stitch[7] = new PVector(-2,1,1);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        break;
       }
       case 'k': {                         //A laatste links 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,3,1);
        this.stitch[4] = new PVector(-1,4,3);
        this.stitch[5] = new PVector(-3,4,3);
        this.stitch[6] = new PVector(-4,3,3);
        this.stitch[7] = new PVector(-2,1,1);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        this.stitch[10] = new PVector(-4,2,2);
        break;
       }
        case 'u': {                         //A afhechten, laatste steek links
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-2,-1,2);
        this.stitch[3] = new PVector(-2,-3,2);
        this.stitch[4] = new PVector(-1,-3,3);
        this.stitch[5] = new PVector(0,-2,3);
        this.stitch[6] = new PVector(-2,0,1);
        break;
       }
        
       case 'v': {                         //A afhechten naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,2);
        this.stitch[2] = new PVector(-3,-1,2);
        this.stitch[3] = new PVector(-4,-2,1);
        this.stitch[4] = new PVector(-3,-3,3);
        this.stitch[5] = new PVector(-1,-3,3);
        this.stitch[6] = new PVector(0,-2,3);
        this.stitch[7] = new PVector(-1,-1,1);
        this.stitch[8] = new PVector(-3,0,2);
        this.stitch[9] = new PVector(-4,0,2);
        break;
       }
      case 'w': {                         //A afhechten, eerste steek naar links
        this.max = 4;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(-1,0,3);
        this.stitch[1] = new PVector(-2,1,3);
        this.stitch[2] = new PVector(0,3,1);
        this.stitch[3] = new PVector(-2,3,2);
       
        break;
       }
       
       case 'x': {                         //A afhechten, eerste steek
        this.max = 4;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(1,0,1);
        this.stitch[1] = new PVector(2,1,3);
        this.stitch[2] = new PVector(0,3,1);
        this.stitch[3] = new PVector(2,3,2);
            
        break;
       }
       case 'y': {                         //A afhechten naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(3,-1,2);
        this.stitch[3] = new PVector(4,-2,1);
        this.stitch[4] = new PVector(3,-3,3);
        this.stitch[5] = new PVector(1,-3,3);
        this.stitch[6] = new PVector(0,-2,3);
        this.stitch[7] = new PVector(1,-1,1);
        this.stitch[8] = new PVector(3,0,2);
        this.stitch[9] = new PVector(4,0,2);
        break;
       }
       case 'z': {                         //A afhechten, laatste steek
        this.max = 7;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,2);
        this.stitch[2] = new PVector(2,-1,2);
        this.stitch[3] = new PVector(2,-3,2);
        this.stitch[4] = new PVector(1,-3,3);
        this.stitch[5] = new PVector(0,-2,3);
        this.stitch[6] = new PVector(2,0,1);
        break;
       }
     }
  }
}