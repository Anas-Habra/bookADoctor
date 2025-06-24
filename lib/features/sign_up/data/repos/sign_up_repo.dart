import 'package:book_a_doctor/core/networking/api_error_handler.dart';
import 'package:book_a_doctor/core/networking/api_result.dart';
import 'package:book_a_doctor/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:book_a_doctor/features/sign_up/data/models/sign_up_response.dart';

import '../../../../core/networking/api_service.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
