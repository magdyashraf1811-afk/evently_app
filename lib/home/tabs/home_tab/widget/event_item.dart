import 'package:events_app/providers/app_theme_provider.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_images.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: width*0.04),
      padding: EdgeInsets.symmetric(
        horizontal: width*0.02,
        vertical: height*0.01
      ),
      height: height*0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16) ,
        color: themeProvider.isDarkMode()? AppColor.transparentColor :AppColor.whiteColor,
        border: Border.all(
          color: themeProvider.isDarkMode()? AppColor.decorationDarkColor :AppColor.whiteColor,
          width: 2
        ),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(themeProvider.isDarkMode()?AppImages.meetingDarkImage:AppImages.meetingImage))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width*0.02,
              vertical: height*0.01
          ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: themeProvider.isDarkMode()? AppColor.darkThemeColor :AppColor.lightThemeColor,
            border: Border.all(
              color:themeProvider.isDarkMode()? AppColor.decorationDarkColor: AppColor.whiteColor,
              width: 2
            )

          ),
          child: Text("21 jan" , style: themeProvider.isDarkMode() ? AppStyle.regular16MainDark:AppStyle.regular16MainLight,),
        ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: width*0.02,
                vertical: height*0.001
            ),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: themeProvider.isDarkMode()? AppColor.darkThemeColor:AppColor.lightThemeColor,
                border: Border.all(
                    color:themeProvider.isDarkMode()? AppColor.decorationDarkColor :AppColor.whiteColor,
                    width: 2
                )

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("This is a Birthday Party " , style: Theme.of(context).textTheme.labelMedium,),
                IconButton(onPressed: (){
                  //todo favotite
                }, icon: Icon(Icons.favorite ,color: AppColor.primaryLightThemeColor,) )
              ],
            ),
          )


        ],),
    );
  }
}
