import 'package:api_prep_dio/core/router/app_pages.dart';
import 'package:api_prep_dio/features/welcome/presentation/view/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class WelcomeRoute {
  static final List<GoRoute> routes = [
    GoRoute(
      path: AppPages.welcome,
      name: AppPages.welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
  ];
}
