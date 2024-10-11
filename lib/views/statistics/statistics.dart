import 'package:flutter/material.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body:Center(
      child:Text(
        'Statistics Page',
        style: AppStyle.txtAeonikRegular400,
      )
      )
    );
  }
}