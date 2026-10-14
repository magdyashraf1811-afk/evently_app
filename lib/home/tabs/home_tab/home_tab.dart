import 'package:events_app/home/tabs/home_tab/widget/app_bar_widget.dart';

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
   const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height*0.18
        ),
        child: const AppBarWidget(),
      ),

    );
  }
}
