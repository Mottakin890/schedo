import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardAppBar extends StatelessWidget {
  const OnboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 0),
      child: Expanded(
        child: Text(
          'Schedo',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.c000000,
          ),
        ),
      ),
    );
  }
}
