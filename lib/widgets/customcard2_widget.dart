import 'package:flutter/material.dart';

class Customcard2 extends StatelessWidget {

  final String imageUlr;
  final String name;

  const Customcard2({
    super.key, 
    required this.imageUlr, 
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      shadowColor: Colors.greenAccent,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUlr),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          if ( name != '' )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name, style: TextStyle(fontSize: 16),)
          ),
        ],
      ),
    );
  }
}