import 'package:flutter/material.dart';

class UsableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  UsableCard({@required this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10.0),
      child: cardChild,
    );
  }
}
