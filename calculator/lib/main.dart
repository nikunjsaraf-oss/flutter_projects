import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF22252D),
        buttonColor: Color(0xFF272B33),
      ),
      title: 'Calculator',
    );
  }
}
