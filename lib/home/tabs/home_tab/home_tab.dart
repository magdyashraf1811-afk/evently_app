import 'package:events_app/home/tabs/home_tab/widget/app_bar_widget.dart';
import 'package:events_app/home/tabs/home_tab/widget/event_item.dart';
import 'package:events_app/providers/app_language_provider.dart';
import 'package:events_app/providers/app_theme_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
   const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var languageProvider = Provider.of<AppLanguageProvider>(context);

    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height*0.18
        ),
        child: const AppBarWidget(),
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
