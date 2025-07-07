import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:book_a_doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, U!", style: TextStyles.font18DarkBlueBold),
            Text("How Are you Today?", style: TextStyles.font12GrayRegular),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.notificationsScreen);
          },
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: ColorsManager.moreLighterGray,
            child: SvgPicture.asset("assets/svgs/notifications.svg"),
          ),
        ),
      ],
    );
  }
}
