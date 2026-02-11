import 'package:flutter/material.dart';
import 'package:goldy/core/routing/app_routing.dart';
import 'package:goldy/core/routing/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: Routs.home,
      onGenerateRoute: AppRouting().generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
