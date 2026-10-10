import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme=ThemeData(
appBarTheme: AppBarTheme(
  backgroundColor: AppColor.lightThemeColor

) ,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColor.whiteColor,selectedItemColor:AppColor.primaryLightThemeColor,
    unselectedItemColor: AppColor.grayColor,
    selectedLabelStyle: AppStyle.regular12SelectedLight,
      unselectedLabelStyle: AppStyle.regular12gray
  )) ;
  static final ThemeData darkTheme=ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: AppColor.darkThemeColor
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColor.darkThemeColor,selectedItemColor:AppColor.darkLightThemeColor,
          unselectedItemColor: AppColor.grayColor,
          selectedLabelStyle: AppStyle.regular12SelectedDark,
        unselectedLabelStyle: AppStyle.regular12gray

      )
  ) ;

}