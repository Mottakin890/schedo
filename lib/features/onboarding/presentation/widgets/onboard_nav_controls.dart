import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/lets_digin_button.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/next_arrow_button.dart';
import 'package:api_prep_dio/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardNavControls extends StatelessWidget {
  const OnboardNavControls({super.key});

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<OnboardingBloc, OnboardingState, bool>(
            selector: (state) => state.isLastPage,
            builder: (_, isLastPage) => Visibility(
              visible: !isLastPage,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: const SkipButton(),
            ),
          ),
          BlocSelector<OnboardingBloc, OnboardingState, bool>(
            selector: (state) => state.isLastPage,
            builder: (_, isLastPage) =>
                isLastPage ? const LetsDig() : const NextArrowButton(),
          ),
        ],
      ),
    );
  }
}
