import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0XFFf2C611),
      ),
    );

    final half_star = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0XFFf2C611),
      ),
    );

    final empty_star = Container(
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0XFFf2C611),
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
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
          children: [star, star, star, half_star, empty_star],
        )
      ],
    );

    final container_text = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Text(
            descriptionPlace,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF56575a)),
            textAlign: TextAlign.justify,
          ),
        ),
        ButtonPurple('Navigate')
      ],
    );
    return container_text;
  }
}
