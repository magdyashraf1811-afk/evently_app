import 'package:events_app/providers/app_language_provider.dart';
import 'package:events_app/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider =Provider.of<AppLanguageProvider>(context);
    var themeProvider =Provider.of<AppThemeProvider>(context);

    return  Column(

    );
  }
}
