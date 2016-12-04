Letter[] letters1, letters2, letters3;
PVector[] pos;
int[] alphabet={1,2,3,4,6,7,8,9,12,14,15,18,19,20,21};
int[] code;
Grid2 grid1;
Grid2 grid2;
Grid2 grid3;

void setup(){
  size(800,800);
  background(0);
  
  grid1 = new Grid2(new PVector(0,0),width, height/4*3, 10, 30);
  grid1.projectOnCylinder(new PVector(width/4,75), 50, 30);
  grid1.disorderRow(5,10);
  grid1.disorderRow(10,20);
  grid1.disorderRow(20,30);
  grid2 = new Grid2(new PVector(0,0),width, height/3*2, 30, 30);
  grid2.projectOnCylinder(new PVector(width/2,50), 100, 50);
  grid2.disorderRow(5,5);
  grid2.disorderRow(7,10);
  grid2.disorderRow(15,30);
  grid2.disorderRow(16,30);
  grid2.disorderRow(17,30);
  grid2.disorderRow(18,30);
  grid3 = new Grid2(new PVector(0,0),width, height/3*2, 20, 30);
  grid3.projectOnCylinder(new PVector(width/4*3,150), 100, 50);
  
  String code1= "ABA";
  String code2 = "STRING";
  String code3= "FLOAT";
   
  letters1 = new Letter[grid1.pos.length];
  for(int i = 0; i < grid1.pos.length; i++){
    letters1[i] = new Letter(grid1.pos[i],12,14, 5,7, (int)code1.charAt(i%3)-64);
  }
  letters2 = new Letter[grid2.pos.length];
  for(int i = 0; i < grid2.pos.length; i++){
    letters2[i] = new Letter(grid2.pos[i],12,14, 5,7, (int)code2.charAt(i%6)-64);
  }
  letters3 = new Letter[grid3.pos.length];
  for(int i = 0; i < grid3.pos.length; i++){
    letters3[i] = new Letter(grid3.pos[i],12,14, 5,7, (int)code3.charAt(i%5)-64);
  }
  fill(255);
  stroke(0,0,55);
  strokeWeight(0.1);
}
void draw(){
  for(int i = 0; i < grid1.pos.length; i++){
    letters1[i].draw();
  }
  for(int i = 0; i < grid2.pos.length; i++){
    letters2[i].draw();
  }
  for(int i = 0; i < grid3.pos.length; i++){
    letters3[i].draw();
  }
}