import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Column(
          children: [
            Text('Welcome Back ✨', style: AppStyle.regular12gray),
            const Text('John Safwat', style: AppStyle.regular20Black),
          ],
        ),
        actions: [

          Icon(
            Theme.of(context)
                .brightness == Brightness.light
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_outlined,
          ),
        ],

      ) ,

    );
  }
}
