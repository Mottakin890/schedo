import 'package:api_prep_dio/common/resources/routes/app_pages.dart';
import 'package:api_prep_dio/presentation/view/email_verification/email_verification.dart';
import 'package:api_prep_dio/presentation/view/forgot_password/forgot_password_view.dart';
import 'package:api_prep_dio/presentation/view/login/login_v.dart';
import 'package:api_prep_dio/presentation/view/registration/register_with_email.dart';
import 'package:api_prep_dio/presentation/view/registration/registration_v.dart';
import 'package:api_prep_dio/presentation/view/splash/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppPages.loginScreen, page: () => LoginView()),
    GetPage(name: AppPages.registration, page: () => const RegistrationView()),
    GetPage(name: AppPages.splash, page: () => const SplashView()),
    GetPage(name: AppPages.registrationWithEmail, page: () => RegisterWithEmail()),
    GetPage(name: AppPages.forgotPassword, page: () => ForgotPasswordView()),
    GetPage(name: AppPages.verifyCode, page: () => EmailVerification()),
  ];
}
