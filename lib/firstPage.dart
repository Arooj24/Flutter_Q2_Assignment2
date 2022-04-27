import 'calculator.dart';
import 'secondPage.dart';
import 'package:flutter/material.dart';
import 'multiusecard.dart';
import 'cardIcon.dart';
import 'style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculateButton.dart';

enum Gender { Male, Female, none }

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Gender selectedGender = Gender.none;
  int height = 130;
  int weight = 45;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  }),
                  child: MultiuseCard(
                    colour: selectedGender == Gender.Male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: CardIcon(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  }),
                  child: MultiuseCard(
                    colour: selectedGender == Gender.Female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: CardIcon(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MultiuseCard(
                    colour: kInactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontSize: 55,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.pink,
                            activeTrackColor: Colors.pink,
                            inactiveTrackColor: Colors.grey,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 8),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 15),
                            overlayColor: Color.fromARGB(255, 243, 142, 218),
                          ),
                          child: Slider(
                            min: 130,
                            max: 230,
                            value: height.toDouble(),
                            onChanged: (number) {
                              setState(() {
                                height = number.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MultiuseCard(
                    colour: kInactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(fontSize: 55),
                            ),
                            Text(
                              'kg',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 49, 50, 73),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 43, 44, 71),
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MultiuseCard(
                    colour: kInactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(fontSize: 55),
                            ),
                            Text(
                              'yr',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 48, 49, 80),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 54, 55, 82),
                                //radius: 30,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculator calc = Calculator(height, weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(calc.getResult(),
                          calc.getInterpretation(), calc.calculateBMI())));
            },
            child: CalculateButton(
              text: 'CALCULATE YOUR BMI',
            ),
          )
        ],
      ),
    );
  }
}
