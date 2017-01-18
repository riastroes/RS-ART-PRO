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
       case 'b': {                         //averecht naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(0,5,3);
        this.stitch[4] = new PVector(1,6,1);
        this.stitch[5] = new PVector(3,6,1);
        this.stitch[6] = new PVector(4,5,1);
        this.stitch[7] = new PVector(2,1,3);
        this.stitch[8] = new PVector(3,0,1);
        this.stitch[9] = new PVector(4,0,1);
        break;
       }
        case 'c': {                         //averecht laatste rechts 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,1);
        this.stitch[2] = new PVector(2,1,1);
        this.stitch[3] = new PVector(0,5,3);
        this.stitch[4] = new PVector(1,6,1);
        this.stitch[5] = new PVector(3,6,1);
        this.stitch[6] = new PVector(4,5,1);
        this.stitch[7] = new PVector(2,1,3);
        this.stitch[8] = new PVector(3,0,1);
        this.stitch[9] = new PVector(4,0,1);
        this.stitch[10] = new PVector(4,3,2);
        break;
       }
       case 'r': {                         //recht naar rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,5,1);
        this.stitch[4] = new PVector(1,6,3);
        this.stitch[5] = new PVector(3,6,3);
        this.stitch[6] = new PVector(4,5,3);
        this.stitch[7] = new PVector(2,1,1);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        break;
       }
       case 's': {                         //recht laatste rechts 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,5,1);
        this.stitch[4] = new PVector(1,6,3);
        this.stitch[5] = new PVector(3,6,3);
        this.stitch[6] = new PVector(4,5,3);
        this.stitch[7] = new PVector(2,1,1);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        this.stitch[10] = new PVector(4,3,2);
        break;
       }
        case 'l': {                         //recht naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,5,1);
        this.stitch[4] = new PVector(-1,6,3);
        this.stitch[5] = new PVector(-3,6,3);
        this.stitch[6] = new PVector(-4,5,3);
        this.stitch[7] = new PVector(-2,1,1);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        break;
       }
       case 'k': {                         //recht laatste links 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,5,1);
        this.stitch[4] = new PVector(-1,6,3);
        this.stitch[5] = new PVector(-3,6,3);
        this.stitch[6] = new PVector(-4,5,3);
        this.stitch[7] = new PVector(-2,1,1);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        this.stitch[10] = new PVector(-4,3,2);
        break;
       }
         case 'n': {                         //averecht naar links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,1);
        this.stitch[2] = new PVector(-2,1,1);
        this.stitch[3] = new PVector(0,5,3);
        this.stitch[4] = new PVector(-1,6,1);
        this.stitch[5] = new PVector(-3,6,1);
        this.stitch[6] = new PVector(-4,5,1);
        this.stitch[7] = new PVector(-2,1,3);
        this.stitch[8] = new PVector(-3,0,1);
        this.stitch[9] = new PVector(-4,0,1);
        break;
       }
       case 'o': {                         //averecht laatste links 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,0);
        this.stitch[1] = new PVector(-1,0,1);
        this.stitch[2] = new PVector(-2,1,1);
        this.stitch[3] = new PVector(0,5,3);
        this.stitch[4] = new PVector(-1,6,1);
        this.stitch[5] = new PVector(-3,6,1);
        this.stitch[6] = new PVector(-4,5,1);
        this.stitch[7] = new PVector(-2,1,3);
        this.stitch[8] = new PVector(-3,0,1);
        this.stitch[9] = new PVector(-4,0,1);
        this.stitch[10] = new PVector(-4,3,2);
        break;
       }
     }
  }
}