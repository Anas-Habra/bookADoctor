import 'package:book_a_doctor/core/networking/api_service.dart';
import 'package:book_a_doctor/core/networking/dio_factory.dart';
import 'package:book_a_doctor/features/login/data/repos/login_repo.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
