class Direction{
  PVector[] dir;
  int max = 9;
  
  Direction(){
    dir = new PVector[9];
    dir[0] = new PVector(0,0);
    dir[1] = new PVector(0,-1);
    dir[2] = new PVector(1,-1);
    dir[3] = new PVector(1,0);
    dir[4] = new PVector(1,1);
    dir[5] = new PVector(0,1);
    dir[6] = new PVector(-1,1);
    dir[7] = new PVector(-1,0);
    dir[8] = new PVector(-1,-1);
    
  }
  PVector get(int i){
    return dir[i];
  }
}