import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shiksha_tech/my_schemes_screen.dart';
import 'package:shiksha_tech/widgets/home_screen_widget.dart';
class Hiddendrawer extends StatefulWidget {
  const Hiddendrawer({super.key});

  @override
  State<Hiddendrawer> createState() => _HiddendrawerState();
}
class _HiddendrawerState extends State<Hiddendrawer> {
  List<ScreenHiddenDrawer> _pages=[];
  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );
  @override
  void initState(){
    super.initState();
    _pages=[
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
        ),
        HomeScreenWidget(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blueAccent,
        ),
        MySchemesScreen(),
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueAccent.shade200,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      contentCornerRadius: 40,
    );
  }
}