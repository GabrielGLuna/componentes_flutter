import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(235, 26, 7, 95);
  static const backColor = Color.fromARGB(235, 78, 186, 236);
 static final ThemeData lightTheme = ThemeData.light().copyWith(
   scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme:  TextTheme(
          headlineLarge: GoogleFonts.aDLaMDisplay(
            color:const Color.fromARGB(255, 247, 239, 247),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            decoration : TextDecoration.underline,
            decorationColor: Colors.blueAccent,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 3.0,
            fontStyle: FontStyle.italic

          ),
        
        //bodySmall: 
        )
 );
}