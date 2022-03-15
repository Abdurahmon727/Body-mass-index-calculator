import 'package:flutter/material.dart';
import 'reusables.dart';
import 'package:bgmi/InputPage.dart';
import 'Calculation.dart';

String rating = 'Excellent';

String attitude = 'Excellent! Keep going you will get more obesity)';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Scaffold(
          appBar: AppBar(
            title: const Text('BMI CALCULATOR',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            backgroundColor: backgroundColor,
          ),
          backgroundColor: backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: const Text('Your Result',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  color: activatedButton,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(resultB(bmiDouble(weight, height)),
                            style: const TextStyle(
                                color: Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text(
                          bmi(weight, height),
                          style: textNumberStyle,
                        ),
                        Text(
                          feedback(bmiDouble(weight, height)),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: buttonColor,
                  width: 500,
                  height: 80,
                  child: const Center(
                    child: Text('Re-Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
