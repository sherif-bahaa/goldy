import 'package:flutter/material.dart';
import 'package:goldy/core/costants/app_color.dart';
import 'package:goldy/features/gold/persentation/screens/widgets/custom_text.dart';

class SilverPage extends StatelessWidget {
  const SilverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Silver tracker',
          style: TextStyle(color: AppColors.sliverColor),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/468068368/photo/stack-of-shiny-silver-bars-inside-a-bank-vault.jpg?s=2048x2048&w=is&k=20&c=Iszr5PG7JI-VCTLx_z-eV52mcTgcUWHMgq2S2RAjV4o=',
            width: 100,
            height: 100,
          ),
          CustomText(text: '100 USD'),
        ],
      ),
    );
  }
}
