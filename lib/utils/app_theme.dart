import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryLightThemeColor,
      shape: StadiumBorder(),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColor.decorationDarkColor,
      ),
    ),
    cardColor: AppColor.decorationDarkColor,
    scaffoldBackgroundColor: AppColor.lightThemeColor,
    textTheme: TextTheme(
      headlineMedium: AppStyle.regular20Black,
      headlineSmall: AppStyle.regular14gray,
      headlineLarge: AppStyle.regular16Black,
      labelLarge: AppStyle.regular16Main
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: AppColor.primaryLightThemeColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.darkLightThemeColor,
          unselectedItemColor: AppColor.gray2Color,
      selectedLabelStyle: AppStyle.regular12LabelLight,
        unselectedLabelStyle: AppStyle.regular12gray

    )
  );
  static final ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColor.primaryLightThemeColor,
        unselectedItemColor: AppColor.gray2Color,
        selectedLabelStyle: AppStyle.regular12SelectedDark,
        unselectedLabelStyle: AppStyle.regular12gray

    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.darkLightThemeColor,
      shape: StadiumBorder(),
    ),

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColor.decorationLightColor,
        shape: StadiumBorder(),
      ),
    ),

    cardColor: AppColor.decorationLightColor,

    textTheme: TextTheme(
      headlineMedium: AppStyle.regular20white,
      headlineSmall: AppStyle.regular14white,
      headlineLarge: AppStyle.regular16White,
        labelLarge: AppStyle.regular16White

    ),

    scaffoldBackgroundColor: AppColor.darkThemeColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColor.darkThemeColor),
  );
}
