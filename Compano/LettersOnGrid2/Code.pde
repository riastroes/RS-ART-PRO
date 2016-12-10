//"internal static int GetFirstIndex(Block block) { var firstIndex = StartIndex; var subElement = Element.GetSubElement(block.GetElement(0), 0); if ((subElement & 1) == 0){firstIndex++}; else {firstIndex += ((subElement + 3) >> 1)}; return firstIndex;}"
class Code{
  String[] code;
  Code(){

  code = new String[10];
  code[0] ="internal static int GetFirstIndex(Block block)";
  code[1] ="{";
  code[2] ="  var firstIndex = StartIndex;";
  code[3] ="  var subElement = Element.GetSubElement(block.GetElement(0), 0);";
  code[4] ="  if ((subElement & 1) == 0)";
  code[5] ="     firstIndex++;";
  code[6] ="  else";
  code[7] ="     firstIndex += ((subElement + 3) >> 1);";
  code[8] ="  return firstIndex;";
  code[9] ="}";
  }

}