import 'package:alubank/theme/theme_typography.dart';
import 'package:flutter/material.dart';
import 'package:alubank/theme/theme_colours.dart';


ThemeData myTheme = ThemeData(
  brightness: Brightness.dark,

  // COLOURS
  primarySwatch: ThemeColours.primaryColour,
  primaryColor: ThemeColours.primaryColour,

  cardColor: const Color.fromRGBO(75, 75, 75, 1),

  // TYPOGRAPHY
  textTheme: TextTheme(
    bodyMedium: ThemeTypography.gFonts('Raleway', 16, FontWeight.w400), // Text
    bodyLarge: ThemeTypography.gFonts('Raleway', 28, FontWeight.w700),

    titleMedium: ThemeTypography.gFonts('Raleway', 20, FontWeight.w400),
  )
);