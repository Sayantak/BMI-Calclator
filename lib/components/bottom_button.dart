import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.buttonLabel});

  final Function onTap;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonLabel, style: kLargeButtonTextStyle),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 5.0),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
      ),
    );
  }
}
