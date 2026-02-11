import 'package:flutter/material.dart';
import 'package:goldy/core/presntation/home_screen.dart';
import 'package:goldy/core/routing/routs.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
