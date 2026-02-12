part of 'gold_cubit.dart';

@immutable
abstract class GoldState {}

class GoldInitial extends GoldState {}

class GoldLoading extends GoldState {}

class GoldSuccess extends GoldState {
  final GoldModel model;
  GoldSuccess(this.model);
}

class GoldError extends GoldState {
  final String message;
  GoldError(this.message);
}
