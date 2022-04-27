import 'calculateButton.dart';
import 'calculator.dart';
import 'cardIcon.dart';
import 'style.dart';
import 'firstPage.dart';
import 'multiusecard.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  //const ResultPage({ Key? key }) : super(key: key);
  SecondPage(this.resultText, this.interpretation, this.bmiResult);
  String resultText;
  String interpretation;
  String bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Your Result",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Expanded(
              child: MultiuseCard(
            colour: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  resultText.toUpperCase(),
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                Text(
                  bmiResult,
                  style: TextStyle(fontSize: 36),
                ),
                Text(interpretation, style: TextStyle(fontSize: 16)),
              ],
            ),
          )),
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: CalculateButton(
              text: 'RE-CALCULATE YOUR BMI',
            ),
          )
        ],
      ),
    );
  }
}
