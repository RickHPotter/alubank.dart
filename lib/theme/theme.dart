import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color> {
       50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x4DFFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xE6FFE200),
    }),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color> {
       50: Color(0x1AFF3200),
      100: Color(0x33FF3200),
      200: Color(0x4DFF3200),
      300: Color(0x66FF3200),
      400: Color(0x80FF3200),
      500: Color(0xFFFF3200),
      600: Color(0x99FF3200),
      700: Color(0xB3FF3200),
      800: Color(0xCCFF3200),
      900: Color(0xE6F23200),

    }),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserrat(
        color: Colors.red,
      )
    )
  );

  static TextStyle gFonts(String name, double size, FontWeight weight) {
    return
      GoogleFonts.getFont(name, fontSize: size, fontWeight: weight);
  }
}