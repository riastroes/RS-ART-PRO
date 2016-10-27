class Leg {
  
   char side;
   int direction;
   float speed;
   float legangle1, legangle2, footangle;
   float a;
   color fillcolor, strokecolor;
  
   
   //machine onderdelen
   PVector top;
   PVector[] structure;
   Rod[] rods;
   
   
   Leg(color pfillcolor, color pstrokecolor, char pside){
     
     fillcolor = pfillcolor;
     strokecolor = pstrokecolor;
     side = pside;
     rods = new Rod[3];
     
     structure = new PVector[3];
     structure[0] = new PVector(0,0);
     
     rods[0] = new Rod(80, 20, fillcolor, strokecolor);
     rods[1] = new Rod(70, 20, fillcolor, strokecolor);
     rods[2] = new Rod(50, 20, fillcolor, strokecolor);
     
     legangle1 = 90;
     legangle2 = 90;
     footangle = 0;
     direction = 1;
     speed =0;
     a = 0;
     
    
     
   }
   void buildMachine(){
      
     
      
     rods[0].set(getAbsPos(0), 0, legangle1); 
     nextStructure(1, rods[0].getVector(0,1) , legangle1);
     rods[1].set(getAbsPos(1), 0, legangle2); 
     
     nextStructure(2, rods[1].getVector(0,1) , legangle2);
     if(side == 'l'){
       rods[2].set(getAbsPos(2), 0, footangle);
     }
     else{
       rods[2].set(getAbsPos(2), 0, footangle + 140);
     }
     
     
      
   }
   

   void nextStructure(int i , PVector pv, float pangle){
          
     structure[i] = pv.copy();
     structure[i].rotate(radians(pangle));
     
   }
   
   PVector getAbsPos(int s){
     PVector abspos = structure[0].copy();
    
     for (int i = 1; i < structure.length; i++){
       if(i <= s){
         abspos.add(structure[i]);
       }
     }
     return abspos;
   }
   
 
   void move(PVector abs, float pspeed ){
       speed = pspeed;
       a = a + speed;
       legangle1 =  map(sin(a), -1,1, 110,45);
       legangle2 =  map(sin(a), -1,1,  90,90);
       footangle =  map(sin(a), -1,1, 0, 45);
      
      structure[0] = abs.copy();
      buildMachine();
   }
  
     
};
 class Arm {
  
   
   char side;
   float speed;
   float legangle1, legangle2, footangle;
   float a;
   color fillcolor, strokecolor, paintcolor;
  
  
   
   //machine onderdelen
   PVector top;
   PVector[] structure;
   Rod[] rods;
   Wheel[] wheels;
   Squirt squirt;
   float shoulderangle, upperarmangle, elbowangle, underarmangle, handangle;
   
   
 Arm(color pfillcolor, color pstrokecolor, color ppaintcolor, char pside){
     
     fillcolor = pfillcolor;
     strokecolor = pstrokecolor;
     paintcolor = ppaintcolor;
     side = pside;
     
     
     
     structure = new PVector[6];
     structure[0] = new PVector(0,0);
     
     rods = new Rod[2];
     rods[0] = new Rod(70, 20, fillcolor, strokecolor);
     rods[1] = new Rod(60, 20, fillcolor, strokecolor);
     
     wheels = new Wheel[3];
     wheels[0] = new Wheel(30,30,  fillcolor, strokecolor);
     wheels[1] = new Wheel(20,20,  fillcolor, strokecolor);
    
     
     squirt = new Squirt(60, 20, fillcolor, strokecolor, paintcolor);
     
     
     shoulderangle = 30;
     upperarmangle = 30;
     elbowangle = 30;
     underarmangle = 30;
     handangle = 30;
     
     
     speed =0;
     a = 0;
     
    
     
   }
   void buildArm(){
      
     
     wheels[0].set(getAbsPos(0), 0, shoulderangle); 
     if(side == 'l'){
       //leftside
       nextStructure(1, wheels[0].getVector(0,1) , shoulderangle);
       rods[0].set(getAbsPos(1), 0, upperarmangle); 
     nextStructure(2, rods[0].getVector(0,1) , upperarmangle);
     wheels[1].set(getAbsPos(0), 4, elbowangle); 
     nextStructure(3, wheels[1].getVector(4,2) , elbowangle);
     rods[1].set(getAbsPos(3), 0, underarmangle); 
     nextStructure(4, rods[1].getVector(0,1) , underarmangle); 
     squirt.set(getAbsPos(4), 0, handangle);
     nextStructure(5, squirt.getVector(0,1) , handangle); 
     }
     else{
       //rightside
       nextStructure(1, wheels[0].getVector(0,3) , shoulderangle + 180);
       rods[0].set(getAbsPos(1), 0, upperarmangle + 180); 
     nextStructure(2, rods[0].getVector(0,1) , upperarmangle + 180);
     wheels[1].set(getAbsPos(0), 4, elbowangle + 180); 
     nextStructure(3, wheels[1].getVector(4,2) , elbowangle + 180);
     rods[1].set(getAbsPos(3), 0, underarmangle + 180); 
     nextStructure(4, rods[1].getVector(0,1) , underarmangle + 180); 
     squirt.set(getAbsPos(4), 0, handangle + 180);
     nextStructure(5, squirt.getVector(0,1) , handangle + 180); 
     }
     
     
     
     
   }
   

   void nextStructure(int i , PVector pv, float pangle){
          
     structure[i] = pv.copy();
     structure[i].rotate(radians(pangle));
     
   }
   
   PVector getAbsPos(int s){
     PVector abspos = structure[0].copy();
    
     for (int i = 1; i < structure.length; i++){
       if(i <= s){
         abspos.add(structure[i]);
       }
     }
     return abspos;
   }
   
 
   void move(PVector abs, float pspeed ){
       speed = pspeed;
       a = a + speed;
       shoulderangle =  map(sin(a), -1,1, 70, -110);
       upperarmangle =  map(sin(a), -1,1,  70, -110);
       elbowangle =  map(sin(a), -1,1,  70, -70);
       underarmangle =  map(sin(a), -1,1, 70, -70);
       handangle =  map(sin(a), -1,1, 0,360);
      
      structure[0] = abs.copy();
      buildArm();
      
     
   }
  
     
};


   
   
  