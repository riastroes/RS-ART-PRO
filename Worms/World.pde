class World{
 int max;
 int[] voorraad;
 World(int max){
   this.max = max;
   voorraad = new int[this.max];
   
 }
 void init(){
   for(int i =0; i< this.max; i++){
     this.voorraad[i] = 2;
   }
   
}