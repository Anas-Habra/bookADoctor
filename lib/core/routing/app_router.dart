import 'package:book_a_doctor/core/di/dependency_injection.dart';
import 'package:book_a_doctor/core/routing/routes.dart';
import 'package:book_a_doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:book_a_doctor/features/login/ui/login_screen.dart';
import 'package:book_a_doctor/features/onboarding/onboarding_screen.dart';
import 'package:book_a_doctor/features/search/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/doctor_details/ui/doctor_details_screen.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/layout/bloc/bottom_navigation_bar_cubit.dart';
import '../../features/layout/layout_screen.dart';
import '../../features/map_find_nearby/ui/map_find_nearby_screen.dart';
import '../../features/notifications/ui/notifications_screen.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';
import '../../features/specializations/ui/specializations_see_all_grid_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder:
              (_) => MultiBlocProvider(
                providers: [
                  BlocProvider<BottomNavigationBarCubit>(
                    create: (context) => BottomNavigationBarCubit(),
                  ),
                  BlocProvider<HomeCubit>(
                    create:
                        (context) => HomeCubit(getIt())..getSpecializations(),
                  ),
                ],
                child: LayoutScreen(),
              ),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.notificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.mapFindNearbyScreen:
        return MaterialPageRoute(builder: (_) => const MapFindNearbyScreen());
      case Routes.specializationsSeeAllGridScreen:
        return MaterialPageRoute(
          builder: (_) => const SpecializationsSeeAllGridScreen(),
        );
      case Routes.doctorDetailsScreen:
        return MaterialPageRoute(builder: (_) => const DoctorDetailsScreen());
      default:
        return null;
    }
  }
}
