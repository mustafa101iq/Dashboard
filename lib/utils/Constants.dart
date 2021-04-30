

import 'package:flutter/material.dart';

class Constants {

  static String appName = "dashboard app";

  //font size value
  static double fontSizeSmall = 12;
  static double fontSizeNormal = 16;
  static double fontSizeLarge = 24;

  //Colors for theme
  // static Color lightAccent = Color(0xff5563ff);
  static Color lightBG = Colors.white;
  // static Color ratingBG = Colors.yellow[600];
  static Color lightCard =Color(0xfff5f4f9);
  static Color lightTextColorPrimary = Color(0xff686868);
  static Color lightTextColorSecondary = Color(0xffb5b6ba);


  //light theme
  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    cardColor: lightCard,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: fontSizeSmall,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );


}
