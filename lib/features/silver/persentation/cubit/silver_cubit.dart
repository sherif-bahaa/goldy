import 'package:bloc/bloc.dart';
import 'package:goldy/features/silver/data/models/silver_model.dart';
import 'package:goldy/features/silver/data/repos/silver_repo.dart';
import 'package:meta/meta.dart';

part 'silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  SilverCubit() : super(SilverInitial());
  final SilverRepo silverRepo = SilverRepo();

  Future<void> fetchSilverPrice() async {
    emit(SilverLoading());
    final result = await silverRepo.getSilverPrice();
    result.fold(
      (error) => emit(SilverError(error)),
      (model) => emit(SilverSuccess(model)),
    );
  }
}
