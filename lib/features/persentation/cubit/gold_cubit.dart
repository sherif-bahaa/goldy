import 'package:bloc/bloc.dart';
import 'package:goldy/features/data/models/gold_model.dart';
import 'package:goldy/features/data/repos/gold_repo.dart';
import 'package:meta/meta.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit() : super(GoldInitial());
  final GoldRepo goldRepo = GoldRepo();
  Future<void> fetchGoldPrice() async {
    emit(GoldLoading());
    final res = await goldRepo.getGoldPrice();
    res.fold(
      (error) {
        emit(GoldError(error));
      },
      (model) {
        emit(GoldSuccess(model));
      },
    );
  }
}
