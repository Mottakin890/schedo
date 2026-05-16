import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/features/onboarding/presentation/route/onboarding_route.dart';
import 'package:api_prep_dio/features/welcome/presentation/route/welcome_route.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppPages.welcome,
    routes: [...OnboardingRoute.routes, ...WelcomeRoute.routes],
  );
}
