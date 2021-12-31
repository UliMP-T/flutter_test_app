import 'package:flutter/material.dart';
import 'place.dart';
import '../../models/place.dart';

class PlacesList extends StatelessWidget {
  InfoPlace info = new InfoPlace(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  InfoPlace info2 = new InfoPlace(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Place('assets/img/beach.jpeg', info),
          Place('assets/img/river.jpeg', info2),
          Place('assets/img/mountain.jpeg', info2),
          Place('assets/img/sunset.jpeg', info2),
          Place('assets/img/mountain_stars.jpeg', info2),
          Place('assets/img/beach_palm.jpeg', info2),
        ],
      ),
    );
  }
}
