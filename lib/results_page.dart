import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  // @require is used for the show all the required value in the page(bmi result,resultext,interpretation,
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult; //this is used in calculate brain file
  final String resultText; //this is used in calculate brain file
  final String interpretation; //this is used in calculate brain file

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, // space evenly give even space to all the area,
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // to stretch the screen tto take all the free space(width),
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTittleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kAllInOne,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText
                        .toUpperCase(), // assign the result area which is created in calculator_brain page
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult
                        .toLowerCase(), // assign the result area which is created in calculator_brain page
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation, // assign the result area which is created in calculator_brain page
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ), //'flex' is used for give the space(height) in which its make the space from above text to below text,
          ),
          BottomButton(
            buttontittle: 'RE-CALCULATE',
            onTab: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
