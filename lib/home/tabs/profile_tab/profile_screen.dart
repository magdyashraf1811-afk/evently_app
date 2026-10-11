import 'package:events_app/l10n/app_localizations.dart';
import 'package:events_app/providers/app_language_provider.dart';
import 'package:events_app/providers/app_theme_provider.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_images.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: height * 0.04,
          ),
          child: Column(
            spacing: 20,
            children: [
              Column(
                spacing: height * 0.02,
                children: [
                  Image.asset(AppImages.profileImage),
                  Text(
                    "John Safwat",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "johnsafwat.route@gmail.com",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()
                          ? AppColor.transparentColor
                          : AppColor.decorationLightColor,
                      border: Border.all(
                        color: themeProvider.isDarkMode()
                            ? AppColor.decorationDarkColor
                            : AppColor.decorationLightColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          themeProvider.isDarkMode()
                              ? AppLocalizations.of(context)!.dark_mode
                              : AppLocalizations.of(context)!.light_mode,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Switch(
                          value: themeProvider.isDarkMode(),
                          onChanged: (value) {
                            themeProvider.changeThemeLanguage(
                              (value ? ThemeMode.dark : ThemeMode.light),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()
                          ? AppColor.transparentColor
                          : AppColor.decorationLightColor,
                      border: Border.all(
                        color: themeProvider.isDarkMode()
                            ? AppColor.decorationDarkColor
                            : AppColor.decorationLightColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.language,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),

                        PopupMenuButton<String>(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onSelected: (value) {
                            context.read<AppLanguageProvider>().changeLanguage(
                              value,
                            );
                          },
                          itemBuilder: (context) => [
                            const PopupMenuItem<String>(
                              value: 'en',
                              child: Text(
                                'English',
                                style: AppStyle.regular16Black,
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'ar',
                              child: Text(
                                'العربية',
                                style: AppStyle.regular16Black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04,
                      vertical: height * 0.014,
                    ),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()
                          ? AppColor.transparentColor
                          : AppColor.decorationLightColor,
                      border: Border.all(
                        color: themeProvider.isDarkMode()
                            ? AppColor.decorationDarkColor
                            : AppColor.decorationLightColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.logout,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        InkWell(
                          child: Icon(Icons.logout, color: Colors.red),
                          onTap: () async {
                            //todo logout
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
