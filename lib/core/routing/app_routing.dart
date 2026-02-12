import 'package:flutter/material.dart';
import 'package:goldy/core/presntation/home_screen.dart';
import 'package:goldy/core/routing/routs.dart';
import 'package:goldy/features/gold/persentation/screens/gold_page.dart';
import 'package:goldy/features/silver/persentation/screens/silver_page.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routs.gold:
        return MaterialPageRoute(builder: (_) => const GoldPage());
      case Routs.silver:
        return MaterialPageRoute(builder: (_) => const SilverPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
