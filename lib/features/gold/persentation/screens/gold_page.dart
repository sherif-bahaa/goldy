import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/gold/persentation/cubit/gold_cubit.dart';
import 'package:goldy/features/gold/persentation/screens/widgets/custom_text.dart';

class GoldPage extends StatelessWidget {
  const GoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit()..fetchGoldPrice(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Center(child: CustomText(text: 'Gold tracker')),
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GoldError) {
              print(state.message);
              return Center(
                child: Text(
                  state.message,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              );
            } else if (state is GoldSuccess) {
              return Column(
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
                      children: [CustomText(text: '${state.model.price} USD')],
                    ),
                  ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
