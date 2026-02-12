import 'package:flutter/material.dart';
import 'package:goldy/core/costants/app_color.dart';
import 'package:goldy/core/widgets/custome_buttom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gold');
              },
              child: CustomeButtom(
                text: "gold price",
                color: AppColors.goldColor,
              ),
            ),
            SizedBox(height: 20),
            CustomeButtom(text: "silver price", color: AppColors.sliverColor),
          ],
        ),
      ),
    );
  }
}
