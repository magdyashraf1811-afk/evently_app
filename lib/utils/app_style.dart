import 'package:events_app/utils/app_color.dart';
import 'package:flutter/cupertino.dart';

class AppStyle {
  static const TextStyle regular12gray = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColor.grayColor
  );
  static const TextStyle regular12SelectedLight = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColor.primaryLightThemeColor,

  );
  static const TextStyle regular12SelectedDark = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColor.darkLightThemeColor,
  );
}