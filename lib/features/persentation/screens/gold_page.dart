import 'package:flutter/material.dart';
import 'package:goldy/core/costants/app_color.dart';

class GoldPage extends StatelessWidget {
  const GoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gold tracker',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.goldColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/616/616408.png',
            width: 100,
            height: 100,
          ),

          const SizedBox(height: 20),
          const Text(
            'Gold Price',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.goldColor,
            ),
          ),
        ],
      ),
    );
  }
}
