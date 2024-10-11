import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:swd/core/initial_binding.dart';
import 'package:swd/routes/app_routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
    SystemUiOverlay.top, 
  ]);



  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, widget) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'SWD',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
            home: widget,
          );
        });
  }
}
