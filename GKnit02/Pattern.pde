class Pattern{
  String name;
  Knitting pattern;
  Pattern(Knitting pknitting, String name, int rows, int stitches){
    this.pattern = pknitting;
    switch(name){
      case "Knit":{
        this.patternKnit(rows, stitches);
        break;
      }
      case "Purl":{
        this.patternPurl(rows, stitches);
        break;
      }
    }
  }
  
  void patternKnit(int rows, int stitches){
    this.pattern.createStitches(0, startR(stitches));
    for(int r = 1 ; r < rows-1; r++){
      this.pattern.createStitches(r, rowR(r, stitches));
    }
    this.pattern.createStitches(rows-1, endR(rows, stitches));
  }
  
  void patternPurl(int rows, int stitches){
    this.pattern.createStitches(0, startA(stitches));
    for(int r = 1 ; r < rows-1; r++){
      this.pattern.createStitches(r, rowA(r, stitches));
    }
    this.pattern.createStitches(rows-1, endA(rows, stitches));
  }
  
  String startR(int stitches){
    String opzet ="A";
    for(int i = 1; i < stitches-1; i++){
      opzet = opzet.concat("B");
    }
    opzet = opzet.concat("C");
    println(opzet);
    return opzet;
  }
  
  String rowR(int row, int stitches){
    String knit ="";
    if(row % 2 == 1){
      knit =knit.concat("K");
      for(int i = 1; i < stitches; i++){
        knit = knit.concat("L");
      }      
    }
    else{
      for(int i = 0; i < stitches-1; i++){
        knit = knit.concat("R");
      }
      knit =knit.concat("S");
    }
    println(knit);
    return knit;
  }
  
  String endR(int row, int stitches){
    String af ="";
    if(row % 2 == 1){
      af =af.concat("X");
      for(int i = 0; i < stitches-1; i++){
        af = af.concat("Y");
      }
      af = af.concat("Z");
    }
    else{
      
      af =af.concat("U");
      for(int i = 0; i < stitches-1; i++){
        af = af.concat("V");
      }
      af = af.concat("W");
    }
    
    println(af);
    return af;
  }
  
  
  
  String startA(int stitches){
    String opzet ="a";
    for(int i = 1; i < stitches-1; i++){
      opzet = opzet.concat("b");
    }
    opzet = opzet.concat("c");
    println(opzet);
    return opzet;
  }
  
  String rowA(int row, int stitches){
    String knit ="";
    if(row % 2 == 1){
      knit =knit.concat("k");
      for(int i = 1; i < stitches; i++){
        knit = knit.concat("l");
      }      
    }
    else{
      for(int i = 0; i < stitches-1; i++){
        knit = knit.concat("r");
      }
      knit =knit.concat("s");
    }
    println(knit);
    return knit;
  }
  
  String endA(int row, int stitches){
    String af ="";
    if(row % 2 == 1){
      af =af.concat("x");
      for(int i = 0; i < stitches-1; i++){
        af = af.concat("y");
      }
      af = af.concat("z");
    }
    else{
      
      af =af.concat("u");
      for(int i = 0; i < stitches-1; i++){
        af = af.concat("v");
      }
      af = af.concat("w");
    }
    
    println(af);
    return af;
  }
}