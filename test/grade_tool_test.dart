import 'package:test/test.dart';
import 'package:grade_tool_redo/grade_tool.dart';

void main() {
  test(('10000.00 is an A'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(0.93);
    expect(result, 'A');
  });
  test(('0.83456 is an B'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(0.83456);
    expect(result, 'B');
  });
  test(('90.67 is an A'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(90.67);
    expect(result, 'A');
  });
  test(('-5.0 is not a grade'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(-5.1);
    expect(result, 'No letter applicable for grade');
  });
  test(('70.00009 is an D'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(70.00009);
    expect(result, 'D');
  });
  test(('67 is an D'), () {
    final converter = GradeConverter();
    String result = converter.changePercentToLetter(67);
    expect(result, 'D');
  });
}
