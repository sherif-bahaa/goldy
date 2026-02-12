import 'package:flutter/material.dart';
import 'package:goldy/core/presntation/home_screen.dart';
import 'package:goldy/core/routing/routs.dart';
import 'package:goldy/features/persentation/screens/gold_page.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routs.gold:
        return MaterialPageRoute(builder: (_) => const GoldPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
