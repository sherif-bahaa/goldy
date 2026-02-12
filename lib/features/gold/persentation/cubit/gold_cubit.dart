import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:goldy/features/gold/data/models/gold_model.dart';
import 'package:goldy/features/gold/data/repos/gold_repo.dart';
import 'package:meta/meta.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit() : super(GoldInitial());
  final GoldRepo goldRepo = GoldRepo();
  Future<void> fetchGoldPrice() async {
    emit(GoldLoading());
    try {
      final res = await goldRepo.getGoldPrice();
      res.fold(
        (error) {
          emit(GoldError(error));
        },
        (model) {
          emit(GoldSuccess(model));
        },
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 429) {
        await Future.delayed(const Duration(seconds: 10));
        return fetchGoldPrice(); // retry
      }
    }
  }
}
