import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/helpers/spacing.dart';
import 'package:book_a_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../home/data/models/specializations_response_model.dart';

class SpecializationsSeeAllGridScreen extends StatelessWidget {
  final List<SpecializationsData> specializationsDataList;

  const SpecializationsSeeAllGridScreen({
    super.key,
    required this.specializationsDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, right: 16.w, left: 16.w),
        child: Column(
          children: [
            CustomAppBar(title: "Doctor Speciality"),
            verticalSpace(42),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600
                          ? 4
                          : 3, // count of columns
                  crossAxisSpacing: 32, //  spacing between columns
                  mainAxisSpacing: 36, // spacing between rows
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final specialization = specializationsDataList[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(28.r),
                    onTap: () {
                      final doctorsForSpecialization =
                          specialization.doctorsList
                              ?.whereType<Doctors>()
                              .toList() ??
                          [];

                      context.pushNamed(
                        Routes.doctorsBySpecialtyListScreen,
                        arguments: doctorsForSpecialization,
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                          backgroundColor: ColorsManager.lightBlue,
                          child: SvgPicture.asset(
                            'assets/svgs/general_speciality.svg',
                            height: 40.h,
                            width: 40.w,
                          ),
                        ),
                        verticalSpace(12),
                        Text(
                          specialization.name ?? 'Specialization',
                          style: TextStyles.font14DarkBlueRegular,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: specializationsDataList.length,
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
