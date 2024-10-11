import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swd/routes/app_routes.dart';
import 'package:swd/views/home_container_screen.dart/controller/home_container_controller.dart';
import 'package:swd/views/homepage/home.dart';
import 'package:swd/views/referral/referral_page.dart';
import 'package:swd/views/services_page/services_page.dart';
import 'package:swd/views/setting_page/setting_page.dart';
import 'package:swd/views/statistics/statistics.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_bottom_bar.dart';

class HomeCreatorContainerScreen extends GetWidget<HomeCreatorContainerController> {
  HomeCreatorContainerScreen({Key? key}) : super(key: key);

  final HomeCreatorContainerController controller = Get.put(HomeCreatorContainerController());


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Obx(() {
        return Navigator(
          key: Get.nestedKey(1),
          initialRoute: controller.currentRoute.value,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(controller.currentRoute.value),
            transition: Transition.fadeIn,
          ),
        );
      }),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          final newRoute = getCurrentRoute(type);
          controller.currentRoute.value = newRoute;
          Get.toNamed(newRoute, id: 1);
        },
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Services:
        return AppRoutes.servicesPage;
      case BottomBarEnum.Statistics:
        return AppRoutes.statisticsPage;
      case BottomBarEnum.Referrals:
        return AppRoutes.referralPage;
      case BottomBarEnum.Settings:
        return AppRoutes.settingPage;
      default:
        return AppRoutes.homePage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return Home();
      case AppRoutes.servicesPage:
        return Services();
      case AppRoutes.statisticsPage:
        return StatisticsPage();
      case AppRoutes.referralPage:
        return ReferralPage();
      case AppRoutes.settingPage:
        return SettingPage();
      default:
        return Home();
    }
  }
}
