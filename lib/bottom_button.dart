import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// the below method come after we make the gesture widget to wrap to new widget and rename it to bottom button
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTab, @required this.buttontittle});
  final Function onTab;
  final String buttontittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // first change container to (alt + Enter)wrap to new widget,after that change the name to gesture detector,
      onTap: onTab,
      child: Container(
        child: Center(
            //First we wrap to Container(alt+enter) and next we rename to Center which help to make the text to center,
            child: Text(
          buttontittle,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        // we only assign the value to he top(Check its out)
        padding: EdgeInsets.only(bottom: 20.0),
        // its work to make the text to go above(its help to iphone which has full screen so that its able to click and not get cancel due to full screen ratio)

        width: double
            .infinity, // its take all the cree space of the screen(whether its phone or tab screen ration)
        height:
            kBottomContainerHeight, // assign the value in the top of the code 2line,
      ),
    );
  }
}
