
import 'package:get/get.dart';
import 'package:swd/views/setting_page/controller/setting_page_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingPageController());
  }
}
