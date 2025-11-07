import 'package:api_prep_dio/presentation/view_model/page_router_vm.dart';
import 'package:get/get.dart';

class DependencyInujection extends Bindings {
  @override
  void dependencies() {
    Get.put<PageRouterVm>(PageRouterVm(), permanent: true);
  }
}
