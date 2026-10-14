import 'dart:ui';

import 'package:events_app/home/tabs/favorite_tab/favorite_tab.dart';
import 'package:events_app/home/tabs/home_tab/home_tab.dart';
import 'package:events_app/home/tabs/profile_tab/profile_screen.dart';
import 'package:events_app/l10n/app_localizations.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabsList=[
    HomeTab(),
    FavoriteTab(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: tabsList[selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: AppColor.primaryLightThemeColor.withOpacity(0.08),
                blurRadius: 18,
                spreadRadius: 0,
                offset: const Offset(0, 5),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 12,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),

                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xfffdfdfd).withOpacity(0.38),
                      Color(0xfff7f7f7).withOpacity(0.12),
                      Color(0xffffffff).withOpacity(0.25),
                    ],
                    stops: const [0.0, 0.55, 1.0],
                  ),

                  border: Border.all(
                    color: Colors.white.withOpacity(0.75),
                    width: 1.5,
                  ),
                ),

                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 22,
                      right: 22,
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.0),
                              Colors.white.withOpacity(0.95),
                              Colors.white.withOpacity(0.0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 1,
                      left: 1,
                      right: 1,
                      height: 25,
                      child: IgnorePointer(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(0.20),
                                Colors.white.withOpacity(0.0),
                              ],
                            ),
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Transform.translate(
                      offset: const Offset(0, 9),
                      child: BottomNavigationBar(
                        currentIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        backgroundColor: Colors.transparent,

                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: AppColor.primaryLightThemeColor,
                        unselectedItemColor: AppColor.grayColor,
                        items: [
                          builtBottomBarItem(
                            index: 0,
                            selectedIndex: Icons.home,
                            unselectedIndex: Icons.home_outlined,
                            label: AppLocalizations.of(context)!.home,
                          ),
                          builtBottomBarItem(
                            index: 1,
                            selectedIndex: Icons.favorite,
                            unselectedIndex: Icons.favorite_border_outlined,
                            label: AppLocalizations.of(context)!.favorite,
                          ),
                          builtBottomBarItem(
                            index: 2,
                            selectedIndex: Icons.person_2,
                            unselectedIndex: Icons.person_2_outlined,
                            label: AppLocalizations.of(context)!.profile,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        //todo navigation to add event screen
      },
        child:  Icon(Icons.add, size: 30 ,color: AppColor.whiteColor,),
      ),
      
    );
  }

  BottomNavigationBarItem builtBottomBarItem({
    required IconData unselectedIndex ,
    required IconData selectedIndex ,
    required String label,
    required int index
  }) {
    return BottomNavigationBarItem(
      icon: selectedIndex == index ? Icon(selectedIndex) : Icon(unselectedIndex) ,
      label: label,

    );
  }
}
