import 'package:book_a_doctor/core/helpers/spacing.dart';
import 'package:book_a_doctor/core/theming/colors.dart';
import 'package:book_a_doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
          "At least 1 special character",
          hasSpecialCharacters,
        ),
        verticalSpace(2),
        buildValidationRow("At least 1 number", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 character long", hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5.r, backgroundColor: ColorsManager.gray),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
