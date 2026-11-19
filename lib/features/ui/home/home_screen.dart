import 'package:cars/core/utils/app_color.dart';
import 'package:cars/features/ui/more/more_screen.dart';
import 'package:cars/features/ui/discover/discover_screen.dart';
import 'package:cars/features/ui/home/custom_home_body.dart';
import 'package:cars/features/ui/save/save_screen.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> currentPage = [
    CustomHomeBody(),
    DiscoverScreen(),
    SaveScreen(),
    MoreScreen(),
  ];

  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: newIndex,
          children: currentPage,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            newIndex = index;
            setState(() {
            });
          },
          currentIndex: newIndex,
          selectedItemColor: AppColor.lightGreen,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: .bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: AppLocalizations.of(context)!.home,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: AppLocalizations.of(context)!.discover
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_outline),
                  label: AppLocalizations.of(context)!.save
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  label: AppLocalizations.of(context)!.more
              ),
            ]
        ),
      ),
    );
  }
}
