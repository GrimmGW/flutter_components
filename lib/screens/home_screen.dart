import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final juegos = const ['Metal Gear', 'Mario', 'Megaman'];
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
      ),
      body: ListView.separated(
        itemCount: juegos.length,
        separatorBuilder: (_, __) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(juegos[i]),
            subtitle: Text("Este es un videojuego"),
            leading: Icon(Icons.gamepad_rounded),
            onTap: () {
              Navigator.pushNamed(context, '/card');
            },
          );
        },
      ),
    );
  }
}