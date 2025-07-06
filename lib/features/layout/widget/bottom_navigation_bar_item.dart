import 'package:book_a_doctor/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

BottomNavigationBarItem bottomNavBarItem({String? icon, String? label}) {
  return BottomNavigationBarItem(
    tooltip: label,
    icon:
        (icon != null && icon.isNotEmpty)
            ? SvgPicture.asset(icon)
            : horizontalSpace(49),
    label: '',
  );
}
