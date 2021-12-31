import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('assets/img/anna.jpg', 'Anna', 'comment', '2 reviews 2 photos'),
        Review('assets/img/bia.jpg', 'Bia', 'comment', '2 reviews 2 photos'),
        Review('assets/img/olya.jpg', 'Olya', 'comment', '2 reviews 2 photos'),
        Review('assets/img/eka.jpg', 'Eka', 'comment', '2 reviews 2 photos')
      ],
    );
  }
}
