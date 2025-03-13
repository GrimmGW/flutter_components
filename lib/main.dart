import 'package:flutter/material.dart';

import 'screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/home',
      routes: {

        '/home' : (BuildContext context) => HomeScreen(),
        '/alert' : (BuildContext context) => AlertScreen(),
        '/card' : (BuildContext context) => CardScreen(),

      },
      theme: ThemeData.dark().copyWith(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[900],
          centerTitle: true
        )

      ),
    );
  }
}