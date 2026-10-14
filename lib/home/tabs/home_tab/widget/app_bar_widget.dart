import 'package:events_app/l10n/app_localizations.dart';
import 'package:events_app/providers/app_language_provider.dart';
import 'package:events_app/providers/app_theme_provider.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tabs_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List<String> eventsNameLast=[] ;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    List<String> eventsNameLast =[
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.sport,
      AppLocalizations.of(context)!.meeting,
      AppLocalizations.of(context)!.workShop,
      AppLocalizations.of(context)!.holiday,
      AppLocalizations.of(context)!.gaming,
      AppLocalizations.of(context)!.birthday,
      AppLocalizations.of(context)!.book_club,
      AppLocalizations.of(context)!.eating,
      AppLocalizations.of(context)!.exhibition,


    ];

    return AppBar(
      shape:  RoundedRectangleBorder(
          borderRadius: const BorderRadiusGeometry.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)
          )
      ),
      toolbarHeight: height*0.18,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: height*0.02,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: height * 0.01,
                children: [
                  Text(
                    AppLocalizations.of(context)!.welcome_back,
                    style: AppStyle.regular14gray2,
                  ),
                  Text('John Safwat', style: AppStyle.regular20white),
                ],
              ),
              Spacer(),
              Icon(
                themeProvider.isDarkMode()
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined,
                color: themeProvider.isDarkMode()
                    ? AppColor.primaryLightThemeColor
                    : AppColor.whiteColor,
                size: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: themeProvider.isDarkMode()
                      ? AppColor.primaryLightThemeColor
                      : AppColor.transparentColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: themeProvider.isDarkMode()
                        ? AppColor.transparentColor
                        : AppColor.whiteColor,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                  vertical: height * 0.01,
                ),
                margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Text( languageProvider.appLanguage.toUpperCase()  , style: AppStyle.regular14white),
              )

            ],

          ),
          DefaultTabController(
            length: eventsNameLast.length,
            child: Builder(
              builder: (context) {
                final tabController = DefaultTabController.of(context);

                return AnimatedBuilder(
                  animation: tabController,
                  builder: (context, child) {
                    return TabBar(
                      isScrollable: true,
                      dividerColor: AppColor.transparentColor,
                      indicatorColor: AppColor.transparentColor,
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.02,
                      ),
                      tabAlignment: TabAlignment.start,
                      tabs: eventsNameLast.asMap().entries.map((entry) {
                        return TabsWidget(
                          isSelected: tabController.index == entry.key,
                          eventName: entry.value,
                        );
                      }).toList(),
                    );
                  },
                );
              },
            ),
          )        ],
      ),
    );
  }
}
