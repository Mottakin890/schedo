import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class OnboardingRoute {
  static final List<GoRoute> routes = [
    GoRoute(
      path: AppPages.onboarding,
      name: AppPages.onboarding,
      builder: (context, state) => const OnboardingView(),
    ),
  ];
}
