import 'package:api_prep_dio/core/di/injection_container.dart';
import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:api_prep_dio/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingRoute {
  static final List<GoRoute> routes = [
    GoRoute(
      path: AppPages.onboarding,
      name: AppPages.onboarding,
      builder: (context, state) => BlocProvider(
        create: (_) => sl<OnboardingBloc>(),
        child: const OnboardingView(),
      ),
    ),
  ];
}
