import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female
} //its works as the select operation  like male or female,(**********IMP:Enum**********)

class InputPage extends StatefulWidget {
  // in this thing cant change.
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180; // we make a int for height purpose,
  int weight =
      50; // we define the weight which help in widget function(check it out),
  int age =
      10; // we define the age which help in widget function(check it out),

  ///// this below all code is return in just a single line only using ternary operator,,,,,,,,,,,
  // Color maleCardColor = AllInOneFalse;
  //Color femaleCardColor = AllInOneFalse;

  //1 for male, 2 for Female
  //void updateColor(Gender selectedGender) {
  //male card pressed
  //if (selectedGender == Gender.male) {
  //  if (maleCardColor == AllInOneFalse) {
  //   maleCardColor = AllInOne;
  //   femaleCardColor = AllInOneFalse;
  // } else {
  //   maleCardColor = AllInOneFalse;
  //  }
  //}
  //female card pressed
  // if (selectedGender == Gender.female) {
  //   if (femaleCardColor == AllInOneFalse) {
  //    femaleCardColor = AllInOne;
  //    maleCardColor = AllInOneFalse;
  //  } else {
  //   femaleCardColor = AllInOneFalse;
  //  }
  //}
  //}

  //// above the hole line is related about color ,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, //its stretch to last available space of app(In each size device)
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? kAllInOne
                      : kAllInOneFalse, // its all related to ternary operator(if or else statement)
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // the value is assign for goes in center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons
                            .male, // its mean graphical (male) icon,
                        size: 80.0,
                      ),
                      SizedBox(
                        // given the space between the icon and Text,
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
                ), // see this thing in video,
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kAllInOne
                      : kAllInOneFalse, //// its all related to ternary operator(if or else statement)
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // the value is assign for goes in center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons
                            .female, // its mean graphical (male) icon,
                        size: 80.0,
                      ),
                      SizedBox(
                        // given the space between the icon and Text,
                        height: 15.0,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            // its make the middle row long (check it out)
            child: ReusableCard(
              color: kAllInOne,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //*****its is very important thing to make center*****
                children: <Widget>[
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //// *****its is very important thing to make center*****
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline
                        .alphabetic, // its is very imp also its make the text to come center,
                    children: <Widget>[
                      Text(
                        height
                            .toString(), // we have to apply string because, in string we change any value of height at any time,
                        style:
                            kNumberTextStyle, // its is use in constants.dart,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle, // its is use in constants.dart,
                      ),
                    ],
                  ),
                  SliderTheme(
                    // if we have more slider just cut to constant and make a constant which apply on every slider at once,
                    data: SliderTheme.of(context).copyWith(
                      //context is mean they copy to line-50, build method,
                      activeTrackColor:
                          Color(0xFFEB1555), // color is given on slider
                      overlayColor: Color(
                          0x29EB1555), // its gives little bit low or transparent color(activeTrackColor),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ), // thumb shape is circle icon in which we scroll the slider
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(
                          0xFFEB1555), // its is left side which is active in slider to slide
                      inactiveColor: Color(
                          0xFF8D8E98), // its is right side which is now cover to slider,
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue
                                .round(); //its change the value of the height
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kAllInOne,
                    cardChild: Column(
                      // column is need to add the more data or detail, check its out later,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // we also add the widget so that all thing come true in screen,
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight
                              .toString(), // first of all we have to define the weight value at int function(same like height)
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                // very imp********
                                setState(() {
                                  // very imp********
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kAllInOne,
                    cardChild: Column(
                      // column is need to add the more data or detail, check its out later,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // we also add the widget so that all thing come true in screen,
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(), // first of all we have to define the weight value at int function(same like height)
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                // very imp********
                                setState(() {
                                  // very imp********
                                  age++;
                                });
                              },
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
          //we wrap to Geshture widget to new widget and name it to bottomButton,(Check in the 2nd last viedo(12.15time)
          BottomButton(
            buttontittle: 'CALCULATE',
            onTab: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// imp search that on google
