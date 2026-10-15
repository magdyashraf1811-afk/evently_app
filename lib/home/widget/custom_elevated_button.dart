import 'package:events_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_theme_provider.dart';


class CustomElevatedButton extends StatelessWidget {
  VoidCallback onPressed ;
  Widget child ;
  Color? backgroundColor;
  Color? borderSideColor;

  CustomElevatedButton({super.key ,required this.onPressed  ,required this.child ,this.borderSideColor,this.backgroundColor  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var themeProvider = Provider.of<AppThemeProvider>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:  backgroundColor ?? AppColor.primaryLightThemeColor,
        padding: EdgeInsets.symmetric(vertical: height*0.01),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
          side: BorderSide(
            width: 1,
            color: borderSideColor ?? AppColor.transparentColor

          )
        )
      ),
        onPressed: onPressed,
        child: child);
  }
}
