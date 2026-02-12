import 'package:flutter/material.dart';
import 'package:goldy/core/costants/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.goldColor,
            ),);
  }
}