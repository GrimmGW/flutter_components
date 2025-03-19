import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: '/home', icon: Icons.home, name: 'Menu principal', screen: const HomeScreen()),
    MenuOption(route: '/alert', icon: Icons.add_alert, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: '/card', icon: Icons.card_giftcard, name: 'Tarjetas', screen: const CardScreen()),
    MenuOption(route: '/avatar', icon: Icons.person, name: 'Avatar', screen: const AvatarScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

      for (final option in menuOptions) {
        appRoutes.addAll({
          option.route : ( BuildContext context ) => option.screen
        });
      }

    return appRoutes;
  }


}