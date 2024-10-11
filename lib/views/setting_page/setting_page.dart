import 'package:flutter/material.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body:Center(
      child:Text(
        'Settings Page',
        style: AppStyle.txtAeonikRegular400,
      )
      )
    );
  }
}