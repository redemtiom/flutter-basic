import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi2/stars.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;
  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name),
    );

    final userReviewDetails = Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 5.0),
          child: Text(
            details,
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
        ),
        Center(
            child: Icon(
          Icons.circle,
          size: 5.0,
          color: Colors.grey,
        )),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          child: Text(
            '5 photos',
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Stars(5),
        )
      ],
    );

    final userReviewDescription = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userReviewDetails, userReviewDescription],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
