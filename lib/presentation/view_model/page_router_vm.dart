import 'package:api_prep_dio/common/resources/routes/app_pages.dart';
import 'package:get/get.dart';

class PageRouterVm extends GetxController {
  void toLogin() => Get.toNamed(AppPages.loginScreen);
  void toRegistration() => Get.toNamed(AppPages.registration);
}
