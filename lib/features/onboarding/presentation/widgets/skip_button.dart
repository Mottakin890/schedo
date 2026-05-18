import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(AppPages.welcome),
      child: Text(
        'Skip',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.c000000.withOpacity(0.5),
        ),
      ),
    );
  }
}
