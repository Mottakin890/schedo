import 'package:api_prep_dio/presentation/view_model/page_router_vm.dart';
import 'package:get/get.dart';

class SplashVm extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _tempTimmer();
  }

  void _tempTimmer() async {
    await Future.delayed(Duration(seconds: 2));
    Get.find<PageRouterVm>().toRegistration();
  }
}
