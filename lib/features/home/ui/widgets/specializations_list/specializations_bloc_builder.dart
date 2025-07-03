import 'package:book_a_doctor/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:book_a_doctor/features/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:book_a_doctor/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsError,
      builder: (context, state) {
        return switch (state) {
          SpecializationsLoading() => setupLoading(),
          SpecializationsSuccess(
            specializationDataList: final specializationDataList,
          ) =>
            setupSuccess(specializationDataList),
          SpecializationsError(errorHandler: final errorHandler) => setupError(
            errorHandler,
          ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError(ErrorHandler errorHandler) {
    return const SizedBox.shrink();
  }
}
