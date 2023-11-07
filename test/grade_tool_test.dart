import 'package:test/test.dart';
import 'package:grade_tool_redo/grade_tool.dart';

void main(){
  Set<String> letters = {'A','B','C','No letter applicable for grade'};
  Set<double> percentsAsDecimals = {1.12,0.86,0.7657687,-2.6};
  for(int i = 0;i<letters.length;i++){
    test(('${percentsAsDecimals.elementAt(i)} is a ${letters.elementAt(i)}'), (){
      final converter = GradeConverter();
      final letter = converter.changePercentToLetter(percentsAsDecimals.elementAt(i));
      expect(letter,letters.elementAt(i));
    });
  }
}

