import 'package:flutter/material.dart';

class AppTheme {

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    primaryColor: Colors.green[900],

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[900],
          centerTitle: true
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[700]
        )
      );

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[900],
          centerTitle: true,
          foregroundColor: Colors.white
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[700],
          foregroundColor: Colors.white,
        ),

        
      );

}