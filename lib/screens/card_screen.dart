import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estas en Card"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        children: [
          CustomCard1(title: 'Card nueva', subtitle: 'In occaecat eu ex ullamco.', icon: Icons.new_label,),
          SizedBox(height: 15),
          CustomCard1(title: 'Card 2', subtitle: 'Esto es una card nueva usando la extraccion de widgets', icon: Icons.abc),
          SizedBox(height: 15),
          Customcard2(imageUlr: 'https://d36tnp772eyphs.cloudfront.net/blogs/1/2015/04/Mount-Taranaki-volcano-in-New-Zealand.jpg', name: 'Una agradable vista'),
          SizedBox(height: 15,),
          Customcard2(imageUlr: 'https://www.explore.com/img/gallery/the-50-most-incredible-landscapes-in-the-whole-entire-world/l-intro-1672072042.jpg', name: ''),
          SizedBox(height: 200,)
        ],
      )
    );
  }
}