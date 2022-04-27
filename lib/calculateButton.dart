import 'package:flutter/material.dart';
import 'style.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(25)),
      height: 40,
      width: double.infinity,
      child: Center(child: Text('$text')),
    );
  }
}
