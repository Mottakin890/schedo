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
      body: Center(
        child: Column(
          mainAxisAlignment: .center,

          children: [
            SvgPicture.asset(AppAssets.taskWhite, height: 200.h, width: 150.w),
            Text(
              'Schedo',
              style: TextStyle(
                color: AppColors.cFFFFFF,
                fontFamily: 'Poppins',
                fontWeight: .bold,
                fontSize: 42.sp,
              ),
            ),
            Spacing.vertical(15),
            Text(
              'A comprehensive mini CRM for \nteams collaborations.',
              textAlign: .center,
              style: TextStyle(
                color: AppColors.cFFFFFF,
                fontFamily: 'Poppins',
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(AppPages.onboarding);
        },
        backgroundColor: AppColors.cF5F5F5,
        shape: RoundedRectangleBorder(borderRadius: .circular(66.r)),
        child: SvgPicture.asset(AppAssets.arrow, height: 16.h, width: 10.w),
      ),
    );
  }
}
