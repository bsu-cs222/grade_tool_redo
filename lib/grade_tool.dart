class GradeConverter {
  String changePercentToLetter(double percentGrade) {
    String letter = '';
    if (percentGrade >= 1.00) {
      letter = _convert(percentGrade / 100);
    } else {
      letter = _convert(percentGrade);
    }
    return letter;
  }

  String _convert(double percentGrade) {
    String letter = '';
    double gradeRoundedToHundredths =
        double.parse(percentGrade.toStringAsFixed(2));
    if (gradeRoundedToHundredths > 0.90) {
      letter = 'A';
    } else if (gradeRoundedToHundredths <= 0.90 &&
        gradeRoundedToHundredths > 0.80) {
      letter = 'B';
    } else if (gradeRoundedToHundredths <= 0.80 &&
        gradeRoundedToHundredths > 0.70) {
      letter = 'C';
    } else if (gradeRoundedToHundredths <= 0.70 &&
        gradeRoundedToHundredths > 0.60) {
      letter = 'D';
    } else if (gradeRoundedToHundredths <= 0.60 &&
        gradeRoundedToHundredths >= 0) {
      letter = 'F';
    } else {
      letter = 'No letter applicable for grade';
    }
    return letter;
  }
}
