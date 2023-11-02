import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool_redo/grade_tool.dart';

void main(){
  Set<String> letters = {'A','B','C','F'};
  Set<double> percentsAsDecimals = {0.95,0.86,0.72,0.45};
  for(int i = 0;i<letters.length;i++){
    test(('${percentsAsDecimals.elementAt(i)} is a ${letters.elementAt(i)}'), (){
      final converter = GradeConverter();
      final letter = converter.changePercentToLetter(percentsAsDecimals.elementAt(i));
      expect(letter,letters.elementAt(i));
    });
  }
}

