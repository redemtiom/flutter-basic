import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi2/review.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    Widget starHalf() {
      return Container(
          margin: EdgeInsets.only(top: 320.0, right: 3.0),
          child: Icon(
            Icons.star_half,
            color: Color(0xFFf2C611),
          ));
    }

    Widget starBorder() {
      return Container(
          margin: EdgeInsets.only(top: 320.0, right: 3.0),
          child: Icon(
            Icons.star_border,
            color: Color(0xFFf2C611),
          ));
    }

    Widget star() {
      return Container(
          margin: EdgeInsets.only(top: 320.0, right: 3.0),
          child: Icon(
            Icons.star,
            color: Color(0xFFf2C611),
          ));
    }

    Widget tittleStars() {
      Widget numStars(double a) {
        if (a >= 1) {
          return star();
        }
        if (a > 0) {
          return starHalf();
        } else {
          return starBorder();
        }
      }

      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
            child: Text(
              namePlace,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 5; i++) numStars(stars - i),
            ],
          ),
        ],
      );
    }

    Widget bodyPlace() {
      return Column(
        children: [
          tittleStars(),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            width: double.infinity,
            child: Text(
              descriptionPlace,
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF56575a)),
              textAlign: TextAlign.justify,
            ),
          ),
          Review('assets/people.jpg', 'Varuna Yasas', '1 review',
              'This is an amazing place in Sri Lanka')
        ],
      );
    }

    return bodyPlace();
  }
}
