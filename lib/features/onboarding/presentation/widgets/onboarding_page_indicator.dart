import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OnboardingBloc, OnboardingState, int>(
      selector: (state) => state.currentPage,
      builder: (context, currentPage) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(OnboardingState.totalPages, (
            index,
          ) {
            final isActive = index == currentPage;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              width: isActive ? 24.w : 8.w,
              height: 8.h,
              decoration: BoxDecoration(
                color: isActive
                    ? AppColors.c000000
                    : AppColors.c000000.withOpacity(0.16),
                borderRadius: BorderRadius.circular(2.r),
              ),
            );
          }),
        );
      },
    );
  }
}
