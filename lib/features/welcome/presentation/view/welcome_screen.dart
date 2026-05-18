import 'package:api_prep_dio/core/dimentions/spacings.dart';
import 'package:api_prep_dio/core/resourses/app_assets.dart';
import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c7FA6FF,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.vertical(50),
              SvgPicture.asset(
                AppAssets.taskWhite,
                height: 170.h,
                width: 140.w,
              ),
              Spacing.vertical(20),
              Text(
                'Welcome to Schedo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 36.sp,
                ),
              ),
              Spacing.vertical(18),
              Text(
                'A comprehensive mini CRM for teams collaboration and productivity.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.cFFFFFF.withOpacity(0.92),
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  height: 1.5,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 58.h,
                child: ElevatedButton(
                  onPressed: () {
                    context.go(AppPages.onboarding);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.cF5F5F5,
                    foregroundColor: AppColors.c000000,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Spacing.vertical(40),
            ],
          ),
        ),
      ),
    );
  }
}
