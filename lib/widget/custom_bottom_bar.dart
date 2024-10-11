import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_image_view.dart';
import 'package:swd/widget/image_constant.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;
  final BottomBarController controller = Get.put(BottomBarController());
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFrameHome,
      title: "Home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameServices,
      title: "Services".tr,
      type: BottomBarEnum.Services,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameStatistics,
      title: "Statistics".tr,
      type: BottomBarEnum.Statistics,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameReferrals,
      title: "Referrals".tr,
      type: BottomBarEnum.Referrals,
    ),
     BottomMenuModel(
    icon: ImageConstant.imgFrameSettings,
    title: "Settings".tr,
     type: BottomBarEnum.Settings,
     )
  ];

  Function(BottomBarEnum)? onChanged;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.backgroundColor,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 24,
                    width: 24,
                    color: ColorConstant.fadeColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 9,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular300
                    )
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height:  24,
                    width: 24,
                    color: ColorConstant.whiteColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAeonikRegular300
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            controller.selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Services,
  Statistics,
  Referrals,
  Settings,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
  });

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarController extends GetxController {
  RxInt selectedIndex = 0.obs;
}