import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../home/data/models/specializations_response_model.dart';
import '../../home/ui/widgets/doctors_list/doctors_list_view_item.dart';

class DoctorsBySpecialtyListScreen extends StatelessWidget {
  final List<Doctors> doctorsList;

  const DoctorsBySpecialtyListScreen({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, right: 16.w, left: 16.w),
        child: Column(
          children: [
            CustomAppBar(title: "Doctor"),
            Expanded(
              child: ListView.builder(
                itemCount: doctorsList.length,
                itemBuilder: (context, index) {
                  return DoctorsListViewItem(doctorsModel: doctorsList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
