import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/route_manager.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_image_view.dart';
import 'package:swd/widget/image_constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<Map<String, String>> data = [
  {'svg': ImageConstant.imgFrameData, 'text': "Data"},
  {'svg': ImageConstant.imgFrameAirtime, 'text': "Airtime"},
  {'svg': ImageConstant.imgFrameShowmax, 'text': "Showmax"},
  {'svg': ImageConstant.imgFrameGiftcard, 'text': "GiftCards"},
  {'svg': ImageConstant.imgFrameBetting, 'text': "Betting"},
  {'svg': ImageConstant.imgFrameElectricity, 'text': "Electricity"},
  {'svg': ImageConstant.imgFrameTv, 'text': "TV/Cable"},
  {'svg': ImageConstant.imgFramePin, 'text': "E-Pin"},
];

final images = [
  {'img': ImageConstant.imgFrameSlider},
  {'img': ImageConstant.imgFrameSlider},
  {'img': ImageConstant.imgFrameSlider},
  {'img': ImageConstant.imgFrameSlider},
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              height: 334,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Column(
                  children: [
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ColorConstant.hintColor, width: 1)),
                            child: Center(
                              child: CustomImageView(
                                height: 16,
                                width: 16,
                                color: ColorConstant.backgroundColor,
                                svgPath: ImageConstant.imgFrameUser,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Welcome, Sam 👋🏾',
                              style: AppStyle.txtAeonikLight850,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ColorConstant.hintColor, width: 1)),
                            child: Center(
                              child: CustomImageView(
                                height: 16,
                                width: 16,
                                color: ColorConstant.backgroundColor,
                                svgPath: ImageConstant.imgFrameBell,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        height: 101,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ColorConstant.gradientTwo,
                              ColorConstant.gradientOne
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'WALLET BALANCE',
                                  style: AppStyle.txtAeonikLight1350,
                                  textAlign: TextAlign.left,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'NGN 50,000',
                                      style: AppStyle.txtAeonikRegular900,
                                    ),
                                    SizedBox(width: 5),
                                    CustomImageView(
                                      height: 12,
                                      width: 12,
                                      svgPath: ImageConstant.imgFrameClose,
                                    )
                                  ],
                                ),
                                CustomImageView(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 20,
                                  width: 101,
                                  svgPath: ImageConstant.imgFrameCash_svg,
                                  // imagePath: ImageConstant.imgFrameCashback,
                                )
                              ],
                            ),
                            SizedBox(width: 40),
                            CustomImageView(
                              height: 69,
                              svgPath: ImageConstant.imgFrameDivider,
                              color: ColorConstant.dividerColor,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgFrameMoniepoint_svg,
                                  //  imagePath: ImageConstant.imgFrameMoniepoint,
                                  width: 137,
                                  height: 67,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CustomImageView(
                                height: 16.50,
                                width: 16.50,
                                svgPath: ImageConstant.imgFramePius,
                                color: ColorConstant.greyColor,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Top up',
                                style: AppStyle.txtAeonikLight550,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CustomImageView(
                              height: 17,
                              svgPath: ImageConstant.imgFrameDashSmall,
                              color: ColorConstant.greyColor,
                            ),
                          ),
                          Column(
                            children: [
                              CustomImageView(
                                height: 16.50,
                                width: 16.50,
                                svgPath: ImageConstant.imgFrameSend,
                                color: ColorConstant.greyColor,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Transfer',
                                style: AppStyle.txtAeonikLight550,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CustomImageView(
                              height: 17,
                              svgPath: ImageConstant.imgFrameDashSmall,
                              color: ColorConstant.greyColor,
                            ),
                          ),
                          Column(
                            children: [
                              CustomImageView(
                                height: 16.50,
                                width: 16.50,
                                svgPath: ImageConstant.imgFrameClock,
                                color: ColorConstant.greyColor,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'History',
                                style: AppStyle.txtAeonikLight550,
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                height: 298,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4, right: 9, top: 9),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Quick Actions',
                          style: AppStyle.txtAeonikRegular1000,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                       padding: EdgeInsets.only(
                        top: 20
                       ), 
                        crossAxisSpacing: 10,
                        children: data.map((item) {
                          return Container(
                            width: 78,
                            height: 75,
                            decoration:
                                BoxDecoration(color: ColorConstant.gridColor),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: item['svg'],
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 2),
                                Text(
                                  item['text']!,
                                  style: AppStyle.txtAeonikLight800.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'News & Update',
                          style: AppStyle.txtAeonikRegular1000,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'View all',
                          style: AppStyle.txtAeonikRegular000,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(
                      bottom: 30,
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return CustomImageView(
                            margin: EdgeInsets.only(
                                right: index == images.length - 1 ? 0 : 15),
                            imagePath: images[index]['img']!,
                            fit: BoxFit.cover,
                            height: 120,
                            width: 285,
                            radius: BorderRadius.circular(12),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SafeArea(
        child:FloatingActionButton(
            onPressed: () {},
            child: CustomImageView(
              svgPath: ImageConstant.imgFrameChats,
              height: 57,
              width: 57,
              fit: BoxFit.cover,
            ),
            shape: CircleBorder(side: BorderSide.none),
          )
              .animate(
                delay: Duration(seconds: 1),
                onPlay: (controller) =>
                    controller.repeat(period: Duration(seconds: 3)),
              )
              .shakeY(delay: Duration(seconds: 1))
      ),
    );
  }
}
