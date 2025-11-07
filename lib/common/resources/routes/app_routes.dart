import 'package:api_prep_dio/common/resources/routes/app_pages.dart';
import 'package:api_prep_dio/presentation/view/login/login_v.dart';
import 'package:api_prep_dio/presentation/view/registration/registration_v.dart';
import 'package:api_prep_dio/presentation/view/splash/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppPages.loginScreen, page: () => LoginView()),
    GetPage(name: AppPages.registration, page: () => const RegistrationView()),
    GetPage(name: AppPages.splash, page: () => const SplashView()),
  ];
}
