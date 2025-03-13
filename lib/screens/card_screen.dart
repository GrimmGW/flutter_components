import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estas en Card"),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Center(
         child: Text('CardScreen'),
      ),
    );
  }
}