import 'theme_colours.dart';
import 'package:flutter/material.dart';


ThemeData purpleTheme = ThemeData(
  primaryColor: ThemeColours.primaryColour,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: ThemeColours.primaryColour,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  ),
  fontFamily: 'Raleway',
);
