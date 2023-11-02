import 'package:flutter/material.dart';
import 'package:grade_tool_redo/grade_tool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor:Colors.green),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _messege = 'Enter Grade Percent As Decimal';
  TextEditingController gradeAsDecimalInput = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TextField(controller: gradeAsDecimalInput,),
        ElevatedButton(
            onPressed: _onButtonPressed,
            child: const Text(
                'Convert')),
        Text(_messege),
      ],
    );
  }
  void _onButtonPressed(){
    setState((){
      double gradeInput = double.parse(gradeAsDecimalInput.text);
      final converter = GradeConverter();
      String letterGrade = converter.changePercentToLetter
        (gradeInput);
      _messege = letterGrade;
      gradeAsDecimalInput.clear();
    });
  }
}