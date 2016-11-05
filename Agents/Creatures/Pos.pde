class Pos{
  float x;
  float y;
 Pos(){
   x = 0;
   y = 0;
 }
 Pos(float a, float b){
   x = a;
   y = b;
 }
 Pos add(Pos p){
   x += p.x;
   y += p.y;
   return this;
 }
 Pos copy(){
   Pos c = new Pos(x, y);
   return c;
 }
}
class Dir{
 int[] x;
 int[] y;
 PVector current;
 int index;
 
 Dir(){
   current = new PVector(0,0);
   index = 0;
   x = new int[9];
   y = new int[9];
   
   
   x[0] = 0;
   y[0] = 0;
   x[1] = 0;
   y[1] = -1;
   x[2] = 1;
   y[2] = -1;
   x[3] = 1;
   y[3] = 0;
   x[4] = 1;
   y[4] = 1;
   x[5] = 0;
   y[5] = 1;
   x[6] = -1;
   y[6] = 1;
   x[7] = -1;
   y[7] = 0;
   x[8] = -1;
   y[8] = -1;
 }
  PVector next(char l, int step){
    if(l == 'l'){
      index = (index - step < 0)? index - step + 9 : index - step;
      index = (index == 0)? 8 : index;
    }
    else{
      index = (index + step > 8)? index + step - 9 : index + step;
      index = (index == 0)? 1 : index;
    }
    current = new PVector(x[index], y[index]);
    return current;
  }
  PVector randomdir(){
  return new PVector(x[ round(random(0,8))], y[ round(random(0,8))]);
  }
}