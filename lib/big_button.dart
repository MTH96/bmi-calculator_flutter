import 'constants.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {

  final String label;
  final Function onPress;

  BigButton({this.label ,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: onPress,
            child: Container(
              width: double.infinity,
              height: kBottomButtonHight,
              color: Color(0xAAEB1555),
              child: Center(
                child: Text(
                  label,
                  style: kLargeButtonStyle,
                ),
              ),
            ),
          );
  }
}
