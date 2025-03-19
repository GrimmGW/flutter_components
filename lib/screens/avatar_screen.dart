import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.wixstatic.com/media/449abe_7b15686b2118476da4a733a7861dd772~mv2.jpg/v1/fill/w_764,h_764,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/sn-color.jpg'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage('https://static.wixstatic.com/media/449abe_7b15686b2118476da4a733a7861dd772~mv2.jpg/v1/fill/w_764,h_764,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/sn-color.jpg'),
          ),
      ),
    );
  }
}