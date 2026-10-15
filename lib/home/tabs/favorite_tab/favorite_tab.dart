import 'package:events_app/home/widget/custom_text_form_field.dart';
import 'package:events_app/l10n/app_localizations.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/app_language_provider.dart';
import '../../../providers/app_theme_provider.dart';
import '../home_tab/widget/event_item.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: height*0.13,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),

          )
        ),
        title: CustomTextFormField(
          suffixIcon: Icon(Icons.search ,size: 35,color: themeProvider.isDarkMode()?AppColor.darkLightThemeColor:AppColor.primaryLightThemeColor,),
          fillColor: themeProvider.isDarkMode()?AppColor.transparentColor:AppColor.whiteColor,
          filled: true,
          labelText: AppLocalizations.of(context)!.search_for_event,
          hintStyle: themeProvider.isDarkMode() ? AppStyle.regular14gray2:AppStyle.regular14gray ,
          borderSideColor: themeProvider.isDarkMode()?AppColor.primaryLightThemeColor:AppColor.transparentColor,


        ),
      ),
      body: ListView.separated(
          padding:EdgeInsets.symmetric(
              vertical: height*0.02
          ),
          itemBuilder: (context ,index ){
            return EventItem() ;
          },
          separatorBuilder: (context , index){
            return SizedBox( height: height*0.02) ;
          }
          ,
          itemCount: 20),

    );
  }
}
