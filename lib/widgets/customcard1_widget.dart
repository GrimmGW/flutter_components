import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  const CustomCard1({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
          )
        ],
      ),
    );
  }
}