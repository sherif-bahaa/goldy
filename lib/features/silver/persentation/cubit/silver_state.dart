part of 'silver_cubit.dart';

@immutable
abstract class SilverState {}

class SilverInitial extends SilverState {}
class SilverLoading extends SilverState {}
class SilverSuccess extends SilverState {
  final SilverModel model;
  SilverSuccess(this.model);
}
class SilverError extends SilverState {
  final String message;
  SilverError(this.message);
}


