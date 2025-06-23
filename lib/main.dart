import 'package:book_a_doctor/core/di/dependency_injection.dart';
import 'package:book_a_doctor/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
