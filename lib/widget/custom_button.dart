import 'package:flutter/material.dart';
import 'package:swd/widget/color_constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.loading = false,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShapes? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;
  
  bool loading;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
     return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
  bool isGradient = variant == ButtonVariant.FillCyan300;

  return Padding(
    padding: margin ?? EdgeInsets.zero,
    child: Container(
      width: width ?? double.maxFinite,
      height: height ?? 40,
      decoration: isGradient
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: _setColor() as List<Color>,  
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: _setBorderRadius(),
            )
          : BoxDecoration(
              color: _setColor() as Color?, 
              borderRadius: _setBorderRadius(),
            ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: _setPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: _setBorderRadius(),
          ),
          side: _setTextButtonBorder(),
        ),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    ),
  );
}

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          loading
              ? CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 1,
                )
              : Text(
                  text ?? "",
                  textAlign: TextAlign.center,
                  style: _setFontStyle(),
                ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return loading
          ? Container(
              width: 20,
              height: 20,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 1.5,
                  strokeCap: StrokeCap.round,
                ),
              ),
            )
          : Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            );
    }
  } 

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? 40,
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll15:
        return EdgeInsets.all(
           15,
        );
      case ButtonPadding.PaddingAll12:
        return EdgeInsets.all(
         14,
        );
      case ButtonPadding.PaddingT12:
        return EdgeInsets.only(
          top: 14,
          bottom: 14,
        );
     
      default:
        return EdgeInsets.all(
           8,
        );
    }
  }

_setColor() {
  switch (variant) {
    case ButtonVariant.Neutral:
      return ColorConstant.whiteColor; 
    case ButtonVariant.OutlineIndigo50:
      return null; 
    case ButtonVariant.FillCyan300:
      return [ColorConstant.gradientTwo, ColorConstant.gradientOne]; 
    default:
      return ColorConstant.gradientOne; 
  }
}

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300b2:
        return BorderSide(
          color: ColorConstant.gradientOne,
          width: 1.00);
     
      case ButtonVariant.FillCyan300:
      case ButtonVariant.Neutral:
      case ButtonVariant.FillLime100b2:
      case ButtonVariant.FillCyan30083:
      case ButtonVariant.FillGray200ab:
      case ButtonVariant.FillGray20087:
      case ButtonVariant.FillCyan3005e:
      case ButtonVariant.FillGreenA10099:
      case ButtonVariant.FillRed10099:
      case ButtonVariant.FillGray20003:
      case ButtonVariant.FillRedA700:
      case ButtonVariant.FillCyan30066:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigo50_2:
        return ColorConstant.gradientOne;
      case ButtonVariant.FillCyan300:
      case ButtonVariant.Neutral:
      case ButtonVariant.OutlineGray300b2:
      case ButtonVariant.FillLime100b2:
      case ButtonVariant.OutlineIndigo50_1:
      case ButtonVariant.FillCyan30083:
      case ButtonVariant.FillGray200ab:
      case ButtonVariant.FillGray20087:
      case ButtonVariant.FillCyan3005e:
      case ButtonVariant.FillGreenA10099:
      case ButtonVariant.OutlineIndigo50:
      case ButtonVariant.FillRed10099:
      case ButtonVariant.FillGray20003:
      case ButtonVariant.FillRedA700:
      case ButtonVariant.FillCyan30066:
      case ButtonVariant.OutlineIndigo50_3:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShapes.RoundedBorder12:
        return BorderRadius.circular( 25 );
      case ButtonShapes.RoundedBorder122:
        return BorderRadius.circular(
            30.00,
        );
      case ButtonShapes.RoundedBorder3:
        return BorderRadius.circular(
            3.00
        );
      case ButtonShapes.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
            8.00,
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SatoshiBold14:
        return TextStyle(
          color: ColorConstant.whiteColor,
          fontSize: 16,
          fontFamily: 'Aeonik-Regular',
          fontWeight: FontWeight.w700,
        );
     
      default:
        return TextStyle(
          color: ColorConstant.whiteColor,
          fontSize: 16,
          fontFamily: 'Aeonik-Regular',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShapes {
  Square,
  RoundedBorder7,
  RoundedBorder12,
  RoundedBorder3,
  RoundedBorder122
}

enum ButtonPadding {
  PaddingAll15,
  PaddingAll12,
  PaddingT12,
  PaddingAll4,
  PaddingT4,
  PaddingAll7,
  PaddingT13,
  PaddingT8,
  PaddingT32,
  PaddingT52,
}

enum ButtonVariant {
  FillCyan300,
  Neutral,
  OutlineGray300b2,
  FillLime100b2,
  OutlineIndigo50_1,
  FillCyan30083,
  OutlineIndigo50_2,
  FillGray200ab,
  FillGray20087,
  FillCyan3005e,
  FillGreenA10099,
  OutlineIndigo50,
  FillRed10099,
  FillGray20003,
  FillRedA700,
  FillCyan30066,
  OutlineIndigo50_3,
  yellow200,
  gray700
}

enum ButtonFontStyle {
  SatoshiBold14WhiteA700,
  SatoshiBold13White700,
  SatoshiBold14,
  SatoshiBold14Gray90002,
  SatoshiBold14Gray600,
  SatoshiBold14Gray100,
  SatoshiLight14,
  SatoshiBold115,
  SatoshiBold12,
  SatoshiBold12Gray900ab,
  SatoshiBold13,
  SatoshiBold14Gray900,
  SatoshiBold15,
  SatoshiBold15Gray900,
  SatoshiBold115Green700,
  SatoshiBold135,
  SatoshiBold115Gray90003,
  SatoshiBold14Black900,
  SatoshiBold14Gray200,
  SatoshiLight16,
  SatoshiBold13WhiteA700,
  SatoshiBold115Red700
}
