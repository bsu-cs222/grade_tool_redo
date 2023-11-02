class GradeConverter {
  String changePercentToLetter(double percentGrade){
    String letter = '';
    if(percentGrade>=0.91){
      letter = 'A';
    }else if(percentGrade<=0.90 && percentGrade>0.81){
      letter = 'B';
    }else if(percentGrade<=0.80 && percentGrade>0.71){
      letter = 'C';
    }else if(percentGrade<=0.70 && percentGrade>0.61){
      letter = 'D';
    }else if(percentGrade<=0.60){
      letter =  'F';
    }
    return letter;
  }
}