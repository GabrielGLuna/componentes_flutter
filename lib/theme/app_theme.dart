import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(235, 26, 7, 95);
  static const backColor = Color.fromARGB(235, 78, 186, 236);
  static const coloricon = Color.fromARGB(220, 105, 96, 96);

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
            //decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 3.0,
            fontStyle: FontStyle.italic

          ),
        
        bodySmall: GoogleFonts.aBeeZee(
          color:const Color.fromARGB(228, 9, 5, 70),
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            
            decorationThickness: 3.0,
            fontStyle: FontStyle.italic
        )
        )
 );
}