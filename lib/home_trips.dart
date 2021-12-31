import 'package:flutter/material.dart';
import '../../review_list.dart';
import '../../description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Vivamus sit amet luctus dui, sed feugiat tellus. Suspendisse vitae tortor vitae quam fermentum fringilla ac nec nunc. Nullam quis magna nec risus molestie porttitor. Fusce eleifend sit amet mauris quis sodales. Mauris nibh orci, pulvinar at tincidunt sit amet, cursus vel odio. Mauris efficitur aliquet nisi, in euismod tortor interdum vestibulum. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie lectus vel rhoncus varius.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace('Hawai', 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
