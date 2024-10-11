import 'package:get/get.dart';
import 'package:swd/views/referral/controller/referral_controller.dart';
import 'package:swd/views/services_page/controller/services_controller.dart';

class ReferralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferralController());
  }
}
