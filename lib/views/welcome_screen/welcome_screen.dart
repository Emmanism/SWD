import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swd/views/create_account/create_account.dart';
import 'package:swd/widget/app_style.dart';
import 'package:swd/widget/color_constant.dart';
import 'package:swd/widget/custom_button.dart';
import 'package:swd/widget/custom_image_view.dart';
import 'package:swd/widget/custom_textform_field.dart';
import 'package:swd/widget/image_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final space = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: Stack(children: [
          Positioned(
              top: 0,
              right: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameImage,
                width: 289,
                height: 222,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: SizedBox(
                          height: 168,
                          //  width: 275,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: ColorConstant.logoColor,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Welcome back 👋🏾',
                                  style: AppStyle.txtAeonikLight400,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 340,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email address',
                                style: AppStyle.txtAeonikRegular400,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            CustomTextFormField(
                              height: 48,
                              width: double.maxFinite,
                              maxLines: 4,
                              focusNode: FocusNode(),
                              autofocus: false,
                              hintText: 'Enter Email address',
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: TextFormFieldPadding.PaddingT14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 29),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: AppStyle.txtAeonikRegular400,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            CustomTextFormField(
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
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 48)),
                            Padding(
                                padding: EdgeInsets.only(top: 9),
                                child: Text('Forgot password?',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAeonikThin400)),
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: CustomButton(
                                onTap: () {
                                  Get.to(CreateAccount());
                                },
                                height: 48,
                                text: 'Sign in',
                                variant: ButtonVariant.FillCyan300,
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 17),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "I don’t have an account,",
                                              style: TextStyle(
                                                  color: ColorConstant
                                                      .createAccount,
                                                  fontSize: 14,
                                                  fontFamily: 'Aeonik-Regular',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(text: ''),
                                          TextSpan(
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  Get.to(CreateAccount());
                                                },
                                              text: " Create account",
                                              style: TextStyle(
                                                  foreground: Paint()
                                                    ..shader = LinearGradient(
                                                      colors: <Color>[
                                                        ColorConstant
                                                            .gradientTwo,
                                                        ColorConstant
                                                            .gradientOne,
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                    ).createShader(
                                                        const Rect.fromLTWH(
                                                            200.0,
                                                            0.0,
                                                            150.0,
                                                            10.0),
                                                        textDirection:
                                                            TextDirection.ltr),
                                                  fontSize: 14,
                                                  fontFamily: 'Aeonik-Regular',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left))),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
