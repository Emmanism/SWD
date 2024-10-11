import 'package:get/get.dart';
import 'package:swd/views/referral/binding/referral_binding.dart';
import 'package:swd/views/referral/referral_page.dart';
import 'package:swd/views/services_page/binding/services_binding.dart';
import 'package:swd/views/services_page/services_page.dart';
import 'package:swd/views/setting_page/binding/setting_binding.dart';
import 'package:swd/views/setting_page/setting_page.dart';
import 'package:swd/views/statistics/binding/statistics_binding.dart';
import 'package:swd/views/statistics/statistics.dart';
import 'package:swd/views/welcome_screen/binding/welcome_binding.dart';
import 'package:swd/views/welcome_screen/welcome_screen.dart';

class AppRoutes {

  static const String initialRoute = '/initialRoute';
    static const String homePage = '/home_page';
    static const String servicesPage = '/services_page';
    static const String statisticsPage = '/statistics_page';
    static const String referralPage = '/referral_page';
    static const String settingPage = '/setting_page';

   static List<GetPage> pages = [
   GetPage(
      name: servicesPage,
     page: () => Services(),
     bindings: [
       ServicesBinding(),
      ],
   ),
     
   GetPage(
      name: statisticsPage,
     page: () => StatisticsPage(),
     bindings: [
       StatisticsBinding(),
      ],
   ),
   GetPage(
      name: referralPage,
     page: () => ReferralPage(),
     bindings: [
       ReferralBinding(),
      ],
   ),
  
   GetPage(
      name: settingPage,
     page: () => SettingPage(),
     bindings: [
       SettingBinding(),
      ],
   ),
     
   GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
     ],
    )
  ];
}
