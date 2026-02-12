import 'package:dartz/dartz.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/features/gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGoldPrice() async {
   try {
  final response = await DioHelper.getData(endpoint: ApiConstants.goldEndpoint);
  return Right(GoldModel.fromJson(response.data));
} on Exception catch (e) {
  return Left('Failed to fetch gold price: ${e.toString()}');
}
  }
}