import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme=ThemeData(
    iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(
      foregroundColor: AppColor.decorationDarkColor
    )),
    cardColor: AppColor.decorationDarkColor,
    scaffoldBackgroundColor: AppColor.lightThemeColor,
textTheme: TextTheme(headlineMedium: AppStyle.regular20Black,headlineSmall: AppStyle.regular14gray,headlineLarge: AppStyle.regular16Black),
appBarTheme: AppBarTheme(
  backgroundColor: AppColor.lightThemeColor

)  );
  static final ThemeData darkTheme=ThemeData(
      iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(
          foregroundColor: AppColor.decorationLightColor
      )),

      cardColor: AppColor.decorationLightColor,

      textTheme: TextTheme(headlineMedium: AppStyle.regular20white,headlineSmall: AppStyle.regular14white,headlineLarge: AppStyle.regular16White),

      scaffoldBackgroundColor: AppColor.darkThemeColor,
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