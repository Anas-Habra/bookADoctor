import 'package:book_a_doctor/core/networking/api_result.dart';
import 'package:book_a_doctor/features/home/data/apis/home_api_service.dart';
import 'package:book_a_doctor/features/home/data/models/specializations_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
