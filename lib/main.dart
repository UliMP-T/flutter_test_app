// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'cupertino_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String imagePath = 'assets/img/beach.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CupertinoNavBar());
  }
}
