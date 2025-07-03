import 'package:book_a_doctor/features/login/data/models/login_request_body.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/api_result.dart' as api_result;
import '../../../../core/networking/dio_factory.dart';
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    switch (response) {
      case api_result.Success(data: final loginResponse):
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      case api_result.Failure(apiErrorModel: final apiErrorModel):
        emit(LoginState.loginError(apiErrorModel));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
