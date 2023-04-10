import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required
          this.icon,
      @required
          this.onPressed}); // we declare the child so that its work on RawMaterialButton,

  final IconData icon;
  //check its out on google search,
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 3.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(), // its make a circle pattern in the age and weight,
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
