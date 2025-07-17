import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/theming/styles.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginError,
      listener: (context, state) {
        switch (state) {
          case LoginLoading():
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  ),
            );

            break;
          case LoginSuccess(data: _):
            context.pop();
            context.pushNamed(Routes.layoutScreen);
            break;
          case LoginError(apiErrorModel: final apiErrorModel):
            setupErrorState(context, apiErrorModel);
            break;
          default:
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.white,
            icon: const Icon(Icons.error, color: Colors.red, size: 40),
            title: Text('Oops!', style: TextStyles.font18DarkBlueSemiBold),
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                apiErrorModel.getAllErrorMessages(),
                style: TextStyles.font15DarkBlueMedium,
                textAlign: TextAlign.center,
              ),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actionsPadding: const EdgeInsets.only(bottom: 12),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => context.pop(),
                child: Text("Got it", style: TextStyles.font16WhiteSemiBold),
              ),
            ],
          ),
    );
  }
}
