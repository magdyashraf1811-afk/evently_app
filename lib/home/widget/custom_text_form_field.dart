import 'package:events_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  Color? borderSideColor;
  Color? fillColor;
  bool? filled ;
  String? hintText;
  TextStyle? hintStyle;
  String? labelText;
  TextStyle? labelStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;


  CustomTextFormField({super.key,this.suffixIcon,this.prefixIcon, this.borderSideColor ,this.fillColor , this.filled, this.hintStyle, this.hintText, this.labelStyle,this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: builtDecorationBorder(
          borderColor: borderSideColor ?? AppColor.transparentColor,
        ),
        focusedBorder: builtDecorationBorder(          borderColor: borderSideColor ?? AppColor.transparentColor,
        ),
        errorBorder: builtDecorationBorder(borderColor: AppColor.redColor),
        focusedErrorBorder: builtDecorationBorder(borderColor: AppColor.redColor),
        fillColor: fillColor,
        filled: filled,
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
        prefixIcon:prefixIcon ,
        suffixIcon: suffixIcon

      ),
    );
  }

  OutlineInputBorder builtDecorationBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(width: 2, color: borderColor),
    );
  }
}
