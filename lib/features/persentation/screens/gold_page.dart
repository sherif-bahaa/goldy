import 'package:flutter/material.dart';
import 'package:goldy/features/persentation/screens/widgets/custom_text.dart';

class GoldPage extends StatelessWidget {
  const GoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: CustomText(text: 'Gold tracker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://media.istockphoto.com/id/490693469/photo/gold-ingots.jpg?s=1024x1024&w=is&k=20&c=huWPPn9mzSRFepCBayhf7DECa1znlQRIuxw037sF_4Y=',
            width: 100,
            height: 100,
          ),

          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomText(text: 'Gold Price'),
                const SizedBox(width: 10),
                const CustomText(text: 'USD'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
