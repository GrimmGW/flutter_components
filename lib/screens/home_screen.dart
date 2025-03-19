import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {

  final juegos = const ['Metal Gear', 'Mario', 'Megaman'];
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu principal"),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(AppRoutes.menuOptions[i].name),
            leading: Icon(AppRoutes.menuOptions[i].icon),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[i].route);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}