import 'package:book_a_doctor/core/di/dependency_injection.dart';
import 'package:book_a_doctor/core/helpers/constants.dart';
import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/helpers/shared_pref_helper.dart';
import 'package:book_a_doctor/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfFirstOpen();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

Future<void> checkIfFirstOpen() async {
  final alreadyLaunched = await SharedPrefHelper.getBool('alreadyLaunched');
  if (alreadyLaunched == true) {
    isFirstOpen = false;
  } else {
    isFirstOpen = true;
    await SharedPrefHelper.setData('alreadyLaunched', true);
  }
}
