import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double stars;
  Stars(this.stars);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
        margin: EdgeInsets.only(right: 3.0),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611),
          size: 15.0,
        ));

    final starBorder = Container(
        margin: EdgeInsets.only(right: 3.0),
        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611),
          size: 15.0,
        ));

    final starFull = Container(
        margin: EdgeInsets.only(right: 3.0),
        child: Icon(
          Icons.star,
          color: Color(0xFFf2C611),
          size: 15.0,
        ));

    Widget numStars(double a) {
      if (a >= 1) {
        return starFull;
      }
      if (a > 0) {
        return starHalf;
      } else {
        return starBorder;
      }
    }

    return Row(
      children: [
        for (int i = 0; i < 5; i++) numStars(stars - i),
      ],
    );
  }
}
