import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/theming/styles.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        switch (state) {
          case Loading():
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
          case Success(data: final loginResponse):
            context.pop();
            context.pushNamed(Routes.homeScreen);
            break;
          case Error(error: final error):
            setupErrorState(context, error);
            break;
          default:
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error, style: TextStyles.font15DarkBlueMedium),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text("Got it", style: TextStyles.font14BlueSemiBold),
              ),
            ],
          ),
    );
  }
}
