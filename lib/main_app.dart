import 'package:flutter/material.dart';
import 'package:practica_3/home_Screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(204, 99, 171, 235),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(223, 18, 9, 97)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 247, 239, 247),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif'

          ),
        )
      ),
    );
  }
}