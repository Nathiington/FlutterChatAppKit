
import 'package:flutter/material.dart';

class Constants {
  static OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: Colors.transparent),
  );

  static const TextStyle titleStyle = TextStyle(
    color: Color(0xffA5CDCC),
    fontFamily: 'SansitaSwashed',
    fontSize: 28.0,
    letterSpacing: 1.5,
    fontWeight: FontWeight.bold,
  );

  static const Color darkPrimary = Color(0xff23243a);
  static const Color darkAccent = Color(0xff293e6a);
  static const Color darkBG = Color(0xff1e2d51);

  static const Color lightPrimary = Color(0xff93d8e7);
  static const Color lightAccent = Color(0xff293e6a);
  static const Color lightBG = Color(0xFFbfeef4);

  Color w = Colors.grey[200];
  static const List<Color> darkBGColors = [darkBG, darkBG];

  static const List<Color> lightBGColors = [
    Color(0xff0D5F64),
    Color(0xff219077),
    Color(0xffA5CDCC)
  ];

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'SourceSansPro',
    brightness: Brightness.light,
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'SourceSansPro',
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
}