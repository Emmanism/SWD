import 'package:get/get.dart';
import 'package:swd/views/welcome_screen/controller/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
