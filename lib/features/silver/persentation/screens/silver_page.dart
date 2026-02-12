import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/costants/app_color.dart';
import 'package:goldy/features/silver/persentation/cubit/silver_cubit.dart';

class SilverPage extends StatelessWidget {
  const SilverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit()..fetchSilverPrice(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: const Text(
              'Silver tracker',
              style: TextStyle(color: AppColors.sliverColor),
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverError) {
              return Center(child: Text(state.message));
            }
            if (state is SilverSuccess) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.network(
                      'https://media.istockphoto.com/id/468068368/photo/stack-of-shiny-silver-bars-inside-a-bank-vault.jpg?s=2048x2048&w=is&k=20&c=Iszr5PG7JI-VCTLx_z-eV52mcTgcUWHMgq2S2RAjV4o=',
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      '${state.model.price} USD',
                      style: TextStyle(
                        color: AppColors.sliverColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              );
            }
            return Center(child: Text('Loading...'));
          },
        ),
      ),
    );
  }
}
