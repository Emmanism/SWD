import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:swd/views/create_account/controller/create_controller.dart';
import 'package:swd/views/verfiy_account.dart/verify_account.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_button.dart';
import 'package:swd/widget/custom_image_view.dart';
import 'package:swd/widget/custom_textform_field.dart';
import 'package:swd/widget/image_constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  CreateController controller = Get.put(CreateController());

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
                      SizedBox(width: 180),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(VerifyAccount());
                            },
                            child: Text(
                              'Sign in instead',
                              style: TextStyle(
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    colors: <Color>[
                                      ColorConstant.gradientOne,
                                      ColorConstant.gradientTwo,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ).createShader(
                                    const Rect.fromLTWH(
                                        200.0, 0.0, 150.0, 10.0),
                                  ),
                                fontSize: 16,
                                fontFamily: 'Aeonik-Air',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            width: 110,
                            child: Divider(
                              color: ColorConstant.gradientTwo,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Create an account',
                      style: AppStyle.txtAeonikLight600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 29),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "First name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAeonikRegular400,
                                      ),
                                      CustomTextFormField(
                                        width: 159,
                                        height: 48,
                                        focusNode: FocusNode(),
                                        autofocus: false,
                                        hintText: "First name",
                                        margin: EdgeInsets.only(top: 7),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                // Use Flexible instead of Expanded
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Last name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAeonikRegular400,
                                      ),
                                      CustomTextFormField(
                                        width: 159,
                                        height: 48,
                                        focusNode: FocusNode(),
                                        autofocus: false,
                                        hintText: "Last name",
                                        margin: EdgeInsets.only(top: 7),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 29, left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone number',
                        style: AppStyle.txtAeonikRegular400,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                        height: 48,
                        width: double.maxFinite,
                        maxLines: 4,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        focusNode: FocusNode(),
                        autofocus: false,
                        hintText: 'Enter phone number',
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: TextFormFieldPadding.PaddingT14),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 29, left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email address',
                        style: AppStyle.txtAeonikRegular400,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                        height: 48,
                        width: double.maxFinite,
                        maxLines: 4,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        focusNode: FocusNode(),
                        autofocus: false,
                        hintText: 'Enter Email address',
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: TextFormFieldPadding.PaddingT14),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 29, left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: AppStyle.txtAeonikRegular400,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                        height: 48,
                        width: double.maxFinite,
                        maxLines: 4,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        focusNode: FocusNode(),
                        autofocus: false,
                        hintText: 'Enter Password',
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                        suffix: Container(
                          margin: EdgeInsets.only(
                              left: 30, top: 14, right: 20, bottom: 14),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgFrameEye,
                            color: ColorConstant.whiteColor,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(maxHeight: 48)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 29, left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Referral Code (Optional)',
                        style: AppStyle.txtAeonikRegular400,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                        height: 48,
                        width: double.maxFinite,
                        maxLines: 4,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        focusNode: FocusNode(),
                        autofocus: false,
                        hintText: 'Enter Referral Code',
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: TextFormFieldPadding.PaddingT14),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(VerifyAccount());
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 29, left: 10, right: 10),
                      child: CustomButton(
                        height: 48,
                        text: 'Sign in',
                        variant: ButtonVariant.FillCyan300,
                      ),
                    ),
                  ),
                  /*  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Obx(() => Container(
                        height: 10,
                        margin: EdgeInsets.only(top: 19),
                        child: AnimatedSmoothIndicator(
                            activeIndex: controller.sliderIndex.value,
                            count: controller.sliderIndex.value,
                            axisDirection: Axis.horizontal,
                            effect: ExpandingDotsEffect(
                                spacing: 9,
                                activeDotColor: ColorConstant.whiteColor,
                                dotColor: ColorConstant.indicatorColor,
                                expansionFactor: 3,
                                dotHeight: 8,
                                dotWidth: 159
                              ),))),
                  ), */

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
                          svgPath: ImageConstant.imgFrameDotIndicator,
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
                      child: Text('Account information',
                          style: AppStyle.txtAeonikLight800),
                    ),
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
