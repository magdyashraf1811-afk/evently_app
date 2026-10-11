import 'package:events_app/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppThemeProvider extends ChangeNotifier{

  //todo : data
  ThemeMode appTheme = ThemeMode.light ;
  ThemeMode ? theme ;
  void changeThemeLanguage(ThemeMode newTheme){

    if(appTheme==newTheme){
      return ;
    }
    appTheme= newTheme ;
    theme =appTheme ;
    notifyListeners() ;
  }
  bool isDarkMode (){
    return appTheme == ThemeMode.dark ;
  }
}