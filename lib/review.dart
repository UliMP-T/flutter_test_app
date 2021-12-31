import 'package:flutter/material.dart';
import 'description_place.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name = 'Ulises';
  String details = "1 review 5 photos";
  String comment = 'Idk just living la vida loca';

  Review(this.pathImage, this.name, this.comment, this.details);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      width: 10.0,
      child: Icon(
        Icons.star,
        color: Color(0XFFf2C611),
      ),
    );

    final half_star = Container(
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      width: 10.0,
      child: Icon(
        Icons.star_half,
        color: Color(0XFFf2C611),
      ),
    );

    final empty_star = Container(
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      width: 10.0,
      child: Icon(
        Icons.star_border,
        color: Color(0XFFf2C611),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato', fontSize: 15.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0, right: 10.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato', fontSize: 15.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final starContainer = Row(
      children: [star, star, star, half_star, empty_star],
    );

    final rowStar = Row(
      children: [userInfo, starContainer],
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, rowStar, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 90.0,
      height: 90.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
