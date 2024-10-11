import 'package:flutter/material.dart';
import 'package:swd/widget/color_constant.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,
      this.height,
      this.onChanged,
      this.onSubmitted,
      this.onPressed,
      this.label,
      this.query});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  double? height;

  EdgeInsetsGeometry? margin;

  String? label;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  void Function(String)? onChanged;

  void Function(String)? onSubmitted;

  final VoidCallback? onPressed;

  final String? query;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      height: height,
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        // initialValue: query ?? '',
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
        onChanged: (text) {
          if (onChanged != null) {
            onChanged!(text);
          }
        },
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      labelText: label ?? null,
      hintText: hintText ?? "",
      hintStyle: _setHintStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SatoshiLight14:
        return TextStyle(
          color: ColorConstant.hintColor,
          fontSize: 16,
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w500,
        );

      default:
        return TextStyle(
          color: ColorConstant.hintColor,
          fontSize: 16,
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setHintStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SatoshiLight14:
        return TextStyle(
          color: ColorConstant.textFieldColor,
          fontSize: 16,
          fontFamily: 'Aeonik-Regular',
          fontWeight: FontWeight.w400,
        );

      default:
        return TextStyle(
          color: ColorConstant.hintColor,
          fontSize: 16,
          fontFamily: 'Aeonik-Regular',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder10:
        return BorderRadius.circular(10);
      default:
        return BorderRadius.circular(8);
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.Neutral:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide:BorderSide(
            width: 1.0,
            color: ColorConstant.hintBorderColor
          )
        );
      case TextFormFieldVariant.FillCyan300:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillCyan3005e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide:BorderSide(
            width: 1.0,
            color: ColorConstant.hintBorderColor
          )
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.Neutral:
        return ColorConstant.textFieldColor;
      case TextFormFieldVariant.FillCyan300:
        return ColorConstant.logoColor;
      case TextFormFieldVariant.FillCyan3005e:
        return ColorConstant.hintBorderColor;
      case TextFormFieldVariant.FillCyan3005e:
        return ColorConstant.hintColor;
      default:
        return ColorConstant.textFieldColor;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.Neutral:
        return true;
      case TextFormFieldVariant.FillCyan300:
        return true;
      case TextFormFieldVariant.FillCyan3005e:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT14:
        return EdgeInsets.only(
          left: 14,
          top: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingT47:
        return EdgeInsets.only(
          left: 14,
          top: 25,
          right: 14,
        );
      
      default:
        return EdgeInsets.all(14);
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder6,
  CircleBorder10,
}

enum TextFormFieldPadding {
  PaddingAll14,
  PaddingT14,
  PaddingT47,
  PaddingT38,
  PaddingT11,
  PaddingAll3,
  PaddingT9,
  PaddingAll9,
}

enum TextFormFieldVariant {
  None,
  FillGray100,
  Neutral,
  FillCyan300,
  FillCyan3005e,
}

enum TextFormFieldFontStyle {
  SatoshiLight14Gray900ab,
  SatoshiLight14,
  SatoshiBold22,
  SatoshiBold10,
  SatoshiLight14Gray600,
  SatoshiBold13,
  SatoshiLight13,
  SatoshiLight20,
}
