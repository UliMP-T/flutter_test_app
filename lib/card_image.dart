import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String PathImage = 'assets/img/beach.jpeg';
  CardImage(this.PathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 400.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 10.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(PathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    //return card;
    return Stack(
      alignment: Alignment(0.92, 1.15),
      children: [card, FloatingActionButtonGreen()],
    );
  }
}
