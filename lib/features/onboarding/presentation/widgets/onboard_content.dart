import 'package:api_prep_dio/core/dimentions/spacings.dart';
import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardContent extends StatelessWidget {
  final String image;
  final String contentText;

  const OnboardContent({
    super.key,
    required this.image,
    required this.contentText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.cF5F5F5,
              borderRadius: BorderRadius.circular(28.r),
            ),
            padding: EdgeInsets.all(24.w),
            child: Image.asset(image, height: 280.h, fit: BoxFit.contain),
          ),
          Spacing.vertical(20),
          const OnboardingPageIndicator(),
          Spacing.vertical(30),
          Text(
            contentText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.c000000,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
