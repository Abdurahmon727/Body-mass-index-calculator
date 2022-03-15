import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'ResaltPage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      //initialRoute: '/inputPage',
      routes: {
        '/inputPage': (context) => InputPage(),
        '/resultPage': (context) => ResultPage(),
      },
    );
  }
}
