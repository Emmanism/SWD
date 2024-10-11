import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swd/views/home_container_screen.dart/home_conatainer_screen.dart';
import 'package:swd/views/homepage/home.dart';
import 'package:swd/views/verfiy_account.dart/controller/verify_controller.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_button.dart';
import 'package:swd/widget/custom_image_view.dart';
import 'package:swd/widget/custom_textform_field.dart';
import 'package:swd/widget/image_constant.dart';

class VerifyAccount extends StatelessWidget {
  VerifyAccount({super.key});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  VerifyController controller = Get.put(VerifyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameImage,
              width: 289,
              height: 222,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back button
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFrameArrow,
                                height: 14,
                                width: 14,
                                color: ColorConstant.hintColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Back',
                                style: AppStyle.txtAeonikLight400.copyWith(
                                  fontSize: 16,
                                  color: ColorConstant.createAccount,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Verify your email',
                            style: AppStyle.txtAeonikLight600,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Please enter the OTP sent to',
                            style: AppStyle.txtAeonikLight800,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'tolu.ab19@gmail.com',
                            style: AppStyle.txtAeonikLight800
                                .copyWith(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                          left: 10,
                          right: 10,
                        ),
                        child: Expanded(
                          child: Container(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      autofocus: false,
                                      height: 52,
                                      width: 46,
                                      hintText: '',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      autofocus: false,
                                      height: 52,
                                      width: 46,
                                      hintText: '',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      autofocus: false,
                                      height: 52,
                                      width: 46,
                                      hintText: '',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      width: 11,
                                      height: 29,
                                      child: Text(
                                        '-',
                                        style: AppStyle.txtAeonikDash700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      autofocus: false,
                                      height: 52,
                                      width: 46,
                                      hintText: '',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      autofocus: false,
                                      height: 52,
                                      width: 46,
                                      hintText: '',
                                    ),
                                  ),
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: false,
                                    height: 52,
                                    width: 46,
                                    hintText: '',
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 400),
                      InkWell(
                        onTap: () {
                          Get.to(
                            HomeCreatorContainerScreen()
                          );
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 29, left: 10, right: 10),
                          child: CustomButton(
                            height: 48,
                            text: 'Verify email',
                            variant: ButtonVariant.FillCyan300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 29, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFrameActiveIndicator,
                              width: 160,
                              height: 3,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 5),
                            CustomImageView(
                              svgPath: ImageConstant.imgFrameActiveIndicator,
                              width: 160,
                              height: 3,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Email verification',
                              style: AppStyle.txtAeonikLight800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
