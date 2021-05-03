import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final cardIcon;
  final cardText;
  final contentColor;
  CardContent({this.cardIcon, this.cardText, this.contentColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 90.0,
          color: contentColor,
        ),
        SizedBox(height: 20.0),
        Text(cardText, style: TextStyle(fontSize: 18.0, color: contentColor)),
      ],
    );
  }
}
