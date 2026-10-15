import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/widget/custom_elevated_button.dart';
import '../../home/widget/custom_text_form_field.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/app_theme_provider.dart';
import '../../utils/app_color.dart';
import '../../utils/app_images.dart';
import '../../utils/app_routes.dart';
import '../../utils/app_style.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparentColor,
        title: Image.asset(
          themeProvider.isDarkMode()
              ? AppImages.eventlyLogoLightImage
              : AppImages.eventlyLogoDarkImage,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: height * 0.02,
          children: [
            Text(
              AppLocalizations.of(context)!.create_your_account ,
              style: themeProvider.isDarkMode()
                  ? AppStyle.regular24White
                  : AppStyle.regular24MainLight,
            ),
            CustomTextFormField(
              filled: true,
              fillColor: themeProvider.isDarkMode()
                  ? AppColor.transparentColor
                  : AppColor.whiteColor,
              borderSideColor: themeProvider.isDarkMode()
                  ? AppColor.primaryLightThemeColor
                  : AppColor.lightThemeColor,
              hintText: AppLocalizations.of(context)!.enter_your_name,
              hintStyle: themeProvider.isDarkMode()
                  ? AppStyle.regular14gray2
                  : AppStyle.regular14gray,
              prefixIcon: Icon(
                Icons.person_2_outlined,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
            ),
            CustomTextFormField(
              filled: true,
              fillColor: themeProvider.isDarkMode()
                  ? AppColor.transparentColor
                  : AppColor.whiteColor,
              borderSideColor: themeProvider.isDarkMode()
                  ? AppColor.primaryLightThemeColor
                  : AppColor.lightThemeColor,
              hintText: AppLocalizations.of(context)!.enter_your_email,
              hintStyle: themeProvider.isDarkMode()
                  ? AppStyle.regular14gray2
                  : AppStyle.regular14gray,
              prefixIcon: Icon(
                Icons.mail_outline_outlined,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
            ),
            CustomTextFormField(
              filled: true,
              fillColor: themeProvider.isDarkMode()
                  ? AppColor.transparentColor
                  : AppColor.whiteColor,
              borderSideColor: themeProvider.isDarkMode()
                  ? AppColor.primaryLightThemeColor
                  : AppColor.lightThemeColor,
              hintText: AppLocalizations.of(context)!.enter_your_password,
              hintStyle: themeProvider.isDarkMode()
                  ? AppStyle.regular14gray2
                  : AppStyle.regular14gray,
              prefixIcon: Icon(
                Icons.lock_open_outlined,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
              suffixIcon: Icon(
                Icons.visibility_off,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
            ),
            CustomTextFormField(
              filled: true,
              fillColor: themeProvider.isDarkMode()
                  ? AppColor.transparentColor
                  : AppColor.whiteColor,
              borderSideColor: themeProvider.isDarkMode()
                  ? AppColor.primaryLightThemeColor
                  : AppColor.lightThemeColor,
              hintText: AppLocalizations.of(context)!.confirm_your_password,
              hintStyle: themeProvider.isDarkMode()
                  ? AppStyle.regular14gray2
                  : AppStyle.regular14gray,
              prefixIcon: Icon(
                Icons.lock_open_outlined,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
              suffixIcon: Icon(
                Icons.visibility_off,
                color: themeProvider.isDarkMode()
                    ? AppColor.gray2Color
                    : AppColor.grayColor,
              ),
            ),
            CustomElevatedButton(
              backgroundColor: themeProvider.isDarkMode()
                  ? AppColor.darkLightThemeColor
                  : AppColor.primaryLightThemeColor,
              onPressed: (){
                register(context) ;
              },
              child: Text(
                AppLocalizations.of(context)!.login,
                style: AppStyle.medium20white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.already_have_an_account,
                  style: themeProvider.isDarkMode()
                      ? AppStyle.regular14gray2
                      : AppStyle.regular14gray,
                ),
                TextButton(
                  onPressed: () {
                    //todo navigation to register screen
                    Navigator.of(context).pushNamed(AppRoutes.registerScreen) ;

                  },
                  child: Text(
                    AppLocalizations.of(context)!.login,
                    style: themeProvider.isDarkMode()
                        ? AppStyle.regular20MainDark
                        : AppStyle.regular20MainLight.copyWith(
                      decorationColor: themeProvider.isDarkMode()
                          ? AppColor.darkLightThemeColor
                          : AppColor.primaryLightThemeColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: themeProvider.isDarkMode()
                        ? AppColor.primaryLightThemeColor
                        : AppColor.grayColor,
                    thickness: 1,
                    indent: width * 0.06,
                    endIndent: width * 0.02,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.or,
                  style: themeProvider.isDarkMode()
                      ? AppStyle.medium16MainDark
                      : AppStyle.medium16MainLight,
                ),
                Expanded(
                  child: Divider(
                    color: themeProvider.isDarkMode()
                        ? AppColor.primaryLightThemeColor
                        : AppColor.grayColor,
                    thickness: 1,
                    indent: width * 0.06,
                    endIndent: width * 0.02,
                  ),
                ),
              ],
            ),
            CustomElevatedButton(
              borderSideColor: themeProvider.isDarkMode()
                  ? AppColor.primaryLightThemeColor
                  : AppColor.lightThemeColor,
              backgroundColor: themeProvider.isDarkMode()
                  ? AppColor.darkThemeColor
                  : AppColor.whiteColor,
              onPressed: (){
                // todo login with google
              },
              child: Row(
                spacing: width * 0.02,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.googleIcon),
                  Text(
                    AppLocalizations.of(context)!.sign_up_with_google,
                    style: themeProvider.isDarkMode()
                        ? AppStyle.regular20MainDark
                        : AppStyle.regular20MainLight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );  }

  void register(BuildContext context) {
    //todo register
    Navigator.of(context).pushNamed(AppRoutes.homeScreen) ;

  }
}