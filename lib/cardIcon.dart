import 'style.dart';
import 'package:flutter/material.dart';

const double iconSize = 90.0;
const sizedBoxHeight = 15.0;

class CardIcon extends StatelessWidget {
  final IconData? icon;
  final String label;

  CardIcon({@required this.icon, this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
        ),
        SizedBox(height: sizedBoxHeight),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
