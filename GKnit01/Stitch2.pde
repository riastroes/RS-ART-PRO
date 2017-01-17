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
       case 'r': {                         //rechts
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,3);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,5,2);
        this.stitch[4] = new PVector(1,6,3);
        this.stitch[5] = new PVector(3,6,3);
        this.stitch[6] = new PVector(4,5,3);
        this.stitch[7] = new PVector(2,1,2);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        break;
       }
       case 's': {                         //laatste rechts 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,3);
        this.stitch[1] = new PVector(1,0,3);
        this.stitch[2] = new PVector(2,1,3);
        this.stitch[3] = new PVector(0,5,2);
        this.stitch[4] = new PVector(1,6,3);
        this.stitch[5] = new PVector(3,6,3);
        this.stitch[6] = new PVector(4,5,3);
        this.stitch[7] = new PVector(2,1,2);
        this.stitch[8] = new PVector(3,0,3);
        this.stitch[9] = new PVector(4,0,3);
        this.stitch[10] = new PVector(4,3,2);
        break;
       }
        case 'l': {                         //links
        this.max = 10;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,3);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,5,2);
        this.stitch[4] = new PVector(-1,6,3);
        this.stitch[5] = new PVector(-3,6,3);
        this.stitch[6] = new PVector(-4,5,3);
        this.stitch[7] = new PVector(-2,1,2);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        break;
       }
       case 'k': {                         //laatste links 
        this.max = 11;
        this.stitch = new PVector[this.max];
        this.stitch[0] = new PVector(0,0,3);
        this.stitch[1] = new PVector(-1,0,3);
        this.stitch[2] = new PVector(-2,1,3);
        this.stitch[3] = new PVector(0,5,2);
        this.stitch[4] = new PVector(-1,6,3);
        this.stitch[5] = new PVector(-3,6,3);
        this.stitch[6] = new PVector(-4,5,3);
        this.stitch[7] = new PVector(-2,1,2);
        this.stitch[8] = new PVector(-3,0,3);
        this.stitch[9] = new PVector(-4,0,3);
        this.stitch[10] = new PVector(-4,3,2);
        break;
       }
     }
  }
}