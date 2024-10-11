import 'package:get/get.dart';
import 'package:swd/views/services_page/controller/services_controller.dart';

class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceController());
  }
}
