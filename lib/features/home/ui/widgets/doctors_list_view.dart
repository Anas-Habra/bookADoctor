import 'package:book_a_doctor/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    height: 120.h,
                    width: 110.w,
                    "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        "Degree | 011111551",
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        "Email@gamil.com",
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
