import 'package:flutter/material.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body:Center(
      child:Text(
        'Service Page',
        style: AppStyle.txtAeonikRegular400,
      )
      )
    );
  }
}