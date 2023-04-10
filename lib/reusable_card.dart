import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.color,
      this.cardChild,
      this.onPress}); // we create a constructor..

  final Color color;
  final Widget cardChild; // assign the child,which is used in line no-87,
  final Function onPress; //assign  the press function which is used in line-14

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // its all is used by to click one thing and the other is unclick
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
