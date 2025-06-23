import 'package:book_a_doctor/features/login/data/models/login_request_body.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result.dart' as api_result;
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    switch (response) {
      case api_result.Success(data: final loginResponse):
        emit(LoginState.success(loginResponse));
      case api_result.Failure(errorHandler: final error):
        emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    }
  }
}
