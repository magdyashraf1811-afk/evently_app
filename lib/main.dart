import 'package:events_app/auth/login/login_screen.dart';
import 'package:events_app/auth/register/register_screen.dart';
import 'package:events_app/home/home_screen.dart';
import 'package:events_app/home/tabs/profile_tab/profile_screen.dart';
import 'package:events_app/providers/app_language_provider.dart';
import 'package:events_app/providers/app_theme_provider.dart';
import 'package:events_app/utils/app_routes.dart';
import 'package:events_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';


void main() async {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppLanguageProvider()),
        ChangeNotifierProvider(create: (context) => AppThemeProvider())
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginScreen,
      routes:{
        AppRoutes.homeScreen :(context) => HomeScreen(),
        AppRoutes.loginScreen : (context)=> LoginScreen(),
        AppRoutes.registerScreen : (context)=> RegisterScreen()


      },
      home: const HomeScreen(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.appLanguage),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,


    );
  }
}
