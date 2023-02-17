import 'package:flutter/material.dart';

class ThemeColours {
  static const MaterialColor primaryColour = Colors.purple;

  static const List<Color> headerGradient = [
    Color.fromRGBO(103, 100, 234, 1),
    Color.fromRGBO(155, 105, 254, 1),
    Color.fromRGBO(195, 107, 254, 1),
  ];

  static const divider = Color.fromRGBO(166, 166, 166, 1.0);

  static const recentActivity = {
    'outcome': Color.fromRGBO(255, 175, 29, 1.0),
    'income': Color.fromRGBO(191, 69, 198, 1.0),
  };

  static const accountPoints = {
    'free_shipping': Color.fromRGBO(250, 0, 112, 1.0),
    'free_streaming': Color.fromRGBO(75, 89, 191, 1.0),
  };
}