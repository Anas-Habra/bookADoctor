import 'package:book_a_doctor/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:book_a_doctor/features/home/ui/widgets/doctors_list_view.dart';
import 'package:book_a_doctor/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:book_a_doctor/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:book_a_doctor/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
