import 'package:flutter/material.dart';

class MultiuseCard extends StatelessWidget {
  final Color? colour;
  final Widget? cardChild;

  MultiuseCard({
    @required this.colour,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: this.colour,
      ),
    );
  }
}
