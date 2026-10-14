import 'package:events_app/providers/app_theme_provider.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabsWidget extends StatelessWidget {
  bool isSelected ;
  String eventName ;
   TabsWidget({super.key , required this.isSelected ,required this.eventName});
  

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: height*0.01,
        horizontal: width*0.03
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16) ,
        color:  isSelected ?
       themeProvider.isDarkMode() ? AppColor.primaryLightThemeColor :
        AppColor.whiteColor : AppColor.transparentColor,
        border: Border.all(
          color:  isSelected ?
          AppColor.transparentColor :themeProvider.isDarkMode() ?  AppColor.primaryLightThemeColor : AppColor.whiteColor,
          width: 2
        ),
        
        
      ),
      child: Text(eventName,style: isSelected ?Theme.of(context).textTheme.labelLarge :AppStyle.regular16White),
    );
  }
}
