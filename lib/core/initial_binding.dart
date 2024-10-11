import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:swd/core/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
     Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
