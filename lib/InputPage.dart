import 'package:bgmi/ResaltPage.dart';
import 'ResaltPage.dart';
import 'reusables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

const textNumberStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white);

const textStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));
enum Gender { male, female, zero }
Gender selected = Gender.zero;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int height = 180;
int weight = 50;
int age = 25;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCode(
                            colour: selected == Gender.male
                                ? activatedButton
                                : inactivateButton,
                            codeChild: Child(
                              FontAwesomeIcons.mars,
                              'Male',
                            ),
                            onPress: () {
                              setState(() {
                                selected = Gender.male;
                              });
                            }),
                      ),
                      Expanded(
                        child: ReusableCode(
                            colour: selected == Gender.female
                                ? activatedButton
                                : inactivateButton,
                            codeChild: Child(FontAwesomeIcons.venus, 'Female'),
                            onPress: () {
                              setState(() {
                                selected = Gender.female;
                              });
                            }),
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: ReusableCode(
                  colour: activatedButton,
                  codeChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Height',
                        style: textStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: textNumberStyle,
                          ),
                          Text(
                            'cm',
                            style: textStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          thumbColor: buttonColor,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          overlayColor: Color(0x30EB1555),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 50.0,
                          max: 240.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  onPress: () {},
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCode(
                          colour: activatedButton,
                          codeChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('WEIGHT', style: textStyle),
                              Text(weight.toString(), style: textNumberStyle),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 15) {
                                          weight--;
                                        }
                                      });
                                    },
                                    backgroundColor: Color(0xFF4C4F5E),
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                  SizedBox(width: 10),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    backgroundColor: Color(0xFF4C4F5E),
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                ],
                              )
                            ],
                          ),
                          onPress: () {},
                        ),
                      ),
                      Expanded(
                        child: ReusableCode(
                          colour: activatedButton,
                          codeChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('AGE', style: textStyle),
                              Text(age.toString(), style: textNumberStyle),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        if (age > 5) {
                                          age--;
                                        }
                                      });
                                    },
                                    backgroundColor: Color(0xFF4C4F5E),
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                  SizedBox(width: 10),
                                  FloatingActionButton(
                                    backgroundColor: Color(0xFF4C4F5E),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                ],
                              )
                            ],
                          ),
                          onPress: () {},
                        ),
                      ),
                    ],
                  )),
              GestureDetector(
                onTap: () {
                  if (selected != Gender.zero) {
                    Navigator.pushNamed(context, '/resultPage');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Please, select your gender'),
                      duration: Duration(milliseconds: 1500),
                    ));
                  }
                },
                child: Container(
                  color: buttonColor,
                  width: 500,
                  height: 80,
                  child: const Center(
                    child: Text('Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              )
            ]));
  }
}
