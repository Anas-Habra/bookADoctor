import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../data/models/specializations_response_model.dart';
import '../../logic/home_cubit.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctor Speciality", style: TextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        TextButton(
          onPressed: () {
            final specializationsList =
                context
                    .read<HomeCubit>()
                    .specializationsList
                    ?.whereType<SpecializationsData>()
                    .toList() ??
                [];

            context.pushNamed(
              Routes.specializationsSeeAllGridScreen,
              arguments: specializationsList,
            );
          },
          child: Text("See All", style: TextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
