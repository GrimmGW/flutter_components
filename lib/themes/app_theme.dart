import 'package:flutter/material.dart';

class AppTheme {

  static Color? primary = Colors.green[900];
  static Color? primaryLight = Colors.green[500];
  static Color? primarySuperLight = Colors.green[50];

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    primaryColor: primary,

        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          centerTitle: true
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryLight
        )
      );

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          centerTitle: true,
          foregroundColor: Colors.white
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryLight,
          foregroundColor: Colors.white,
        ),

      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor:  WidgetStateProperty.all(primarySuperLight),
          foregroundColor: WidgetStateProperty.all(primaryLight)
        )
      )
        
      );

}