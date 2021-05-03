import 'package:flutter/material.dart';
import 'constants.dart';
import 'usable_card.dart';
import 'big_button.dart';

class ResultScreen extends StatelessWidget {
  final String value, range, bmiMeaning;

  ResultScreen({this.value, this.range, this.bmiMeaning});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UsableCard(
            color: kScaffoldColor,
            cardChild: Text(
              'Your Result',
              style: kNumberStyle,
            ),
          ),
          Expanded(
              child: UsableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  range,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: kNumberStyle.copyWith(fontSize: 100.0),
                ),
                Text(
                  bmiMeaning,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                )
              ],
            ),
          )),
          BigButton(
            label: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
