import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../resources/assets/app_colors.dart';


class PinPutStyle {
  static PinTheme getDefaultPinPutStyle(BuildContext context) {
    return PinTheme(
      width: 46.r,
      height: 46.r,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  static PinTheme getSubmittedPinStyle(BuildContext context) {
    return PinTheme(
      width: 46.r,
      height: 46.r,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.cPrimary),
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  static PinTheme getFocusedPinStyle(BuildContext context) {
    return getSubmittedPinStyle(context);
  }
}
