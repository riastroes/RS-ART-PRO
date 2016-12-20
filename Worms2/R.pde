class R{
  int max;
  int maxvalue;
  int[] table;
 R(int max, int maxvalue){
   this.max = max;
   this.maxvalue = maxvalue;
   table = new int[max];
   for(int i = 0; i < max; i++){
     table[i] = floor(random(this.maxvalue));
   }
   
 }
 int get(){
   return table[floor(random(this.max))];
 }
}