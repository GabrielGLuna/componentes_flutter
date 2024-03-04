import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //declaracion de color 
  static const mainColor = Color.fromARGB(255, 42, 11, 100);
  static const backColor = Color.fromARGB(255, 143, 178, 216);
  static const accent = Color.fromARGB(255, 11, 74, 137);
  

  static final ThemeData lightTheme =  ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme:AppBarTheme( 
          color: mainColor,
          titleTextStyle: GoogleFonts.aBeeZee(
            color: backColor,
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
          ),
          ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 17, 32, 100),
          size: 35.0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(accent,),
            foregroundColor: MaterialStateProperty.all(backColor),
            textStyle: MaterialStateProperty.all(GoogleFonts.pacifico(fontSize: 25.2)),
          ),
        ),
        textTheme:TextTheme(
          headlineLarge: GoogleFonts.aDLaMDisplay(
            color: const Color.fromARGB(255, 245, 244, 245),
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: const Color.fromARGB(255, 158, 191, 160),
            decorationStyle: TextDecorationStyle.dotted,
            decorationThickness: 3.0,
           
            ),  headlineMedium: GoogleFonts.alatsi(
            color: Color.fromARGB(255, 90, 38, 185),
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: const Color.fromARGB(255, 158, 191, 160),
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 1.5
            ),
            bodySmall: GoogleFonts.albertSans(
              color: const Color.fromARGB(255, 30, 38, 92),
              fontSize: 20.0,
              fontWeight: FontWeight.w200,
              decoration: TextDecoration.underline,
            ),
            bodyMedium: GoogleFonts.albertSans(
              color: backColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w200,
              decoration: TextDecoration.underline,
            )
        )
  );
}