import 'package:get/get.dart';
import 'package:swd/views/statistics/controller/statistics_controller.dart';

class StatisticsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticsController());
  }
}
