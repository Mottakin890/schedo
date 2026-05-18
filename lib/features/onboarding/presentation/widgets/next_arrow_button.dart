import 'package:api_prep_dio/core/themes/app_colors.dart';
import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextArrowButton extends StatelessWidget {
  const NextArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<OnboardingBloc>().add(
        const OnboardingNextPageRequested(),
      ),

      child: Icon(Icons.arrow_forward_ios, size: 18.sp),
    );
  }
}
