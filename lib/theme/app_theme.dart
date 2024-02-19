import 'package:flutter/material.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(235, 26, 7, 95);
  static const backColor = Color.fromARGB(235, 78, 186, 236);
 static final ThemeData lightTheme = ThemeData.light().copyWith(
   scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 247, 239, 247),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif'

          ),
        )
 );
}