//class Dropzone{
//  IntList zone;
//  IntList zonecolor;
  
//  Dropzone(){
//   zone = new IntList();
//   zonecolor = new IntList();
//  }
  
//  boolean drop(int i, color c){
//    boolean ok = condition(i);
//    if(ok){
//      zone.append(i);
//      zonecolor.append(c);
//    }
//    return ok;
//  }
//  boolean condition(int i){
//    boolean ok = false;
//     if(i > 0 && i < resource.pg.pixels.length){
//       int x = i % width;
//       int y = i / width;
       
//          if(dist(x,y, width/2, height/2) < height/2){ 
//            if(resource.pg.pixels[i] == color(0)){
//              ok = true;
//            }
//        // }
//       }
//     }
//     return ok;
//  }
//  void display(){
//    for(int z = 0; z < zone.size(); z++){
//      resource.pg.pixels[zone.get(z)] = zonecolor.get(z);
//    }
//    zone = new IntList();
//    zonecolor = new IntList();
//  }
//}