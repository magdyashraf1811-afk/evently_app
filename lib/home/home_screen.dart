import 'package:events_app/l10n/app_localizations.dart';
import 'package:events_app/utils/app_color.dart';
import 'package:events_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Events App')) ,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 20,
                spreadRadius: 1,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              backgroundColor: AppColor.whiteColor,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                builtBottomBarItem(
                  icon: ImageIcon(
                    AssetImage(AppImages.homeIcon,),
                  ),
                  label: AppLocalizations.of(context)!.home,
                ),
                builtBottomBarItem(
                  icon: ImageIcon(
                    AssetImage(AppImages.favIcon),
                    size: 24,
                  ),
                  label: AppLocalizations.of(context)!.favorite,
                ),
                builtBottomBarItem(
                  icon: ImageIcon(
                    AssetImage(AppImages.profileIcon),
                    size: 24,
                  ),
                  label: AppLocalizations.of(context)!.profile,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem builtBottomBarItem({
    required Widget icon ,required String label
}){
    return BottomNavigationBarItem(icon: icon,label: label) ;
  }
}
