import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shiksha_tech/account_screen.dart';
import 'package:shiksha_tech/clipps_screen.dart';
import 'package:shiksha_tech/message_page.dart';
import 'package:shiksha_tech/lecture_screen.dart';
import 'package:shiksha_tech/widgets/home_screen_widget.dart';
import 'career_screen.dart';
import 'community_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  Color navBarColor=Colors.white;
  List<Widget>listOptions=<Widget>[HomeScreenWidget(),ExplorePage(),ClippScreen(),CommunityScreen(),AccountScreen()];
  @override
  Widget build(BuildContext context) {
    if (_selectedIndex==2) {
      navBarColor = Colors.black;
    } else {
      navBarColor = Colors.white; // Reset to the default color
    }
    return Scaffold(
        body: listOptions[_selectedIndex],

        bottomNavigationBar: Container(
          height: 55,
          child: GNav(
            backgroundColor: navBarColor,
            haptic: true,
            gap: 8,
            rippleColor: Colors.grey.withOpacity(0.3),
            hoverColor: Colors.grey.withOpacity(0.1),
            duration: Duration(milliseconds: 600),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabs: [
              GButton(
                icon: Icons.home, text: "Home",
                iconActiveColor: Color(0xFF4E74F9),
                iconColor: Colors.grey,
                textColor: Color(0xFF4E74F9),
                backgroundColor: Colors.blueAccent.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              ),
              GButton(
                icon: Icons.group, text: "Explore",
                iconActiveColor: Color(0xFF4E74F9),
                iconColor: Colors.grey,
                textColor: Color(0xFF4E74F9),
                backgroundColor: Colors.blueAccent.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              ),
              GButton(
                icon: Icons.slow_motion_video_outlined, text: "Clipps",
                iconActiveColor: Color(0xFF4E74F9),
                iconColor: Colors.grey,
                textColor: Color(0xFF4E74F9),
                backgroundColor: Colors.blueAccent.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),

              ),
              GButton(
                icon: Icons.people_alt_outlined, text: "Community",
                iconActiveColor: Color(0xFF4E74F9),
                iconColor: Colors.grey,
                textColor: Color(0xFF4E74F9),
                backgroundColor: Colors.blueAccent.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              ),
              GButton(
                icon: Icons.person, text: "Account",
                iconActiveColor: Color(0xFF4E74F9),
                iconColor: Colors.grey,
                textColor: Color(0xFF4E74F9),
                backgroundColor: Colors.blueAccent.withOpacity(0.2),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState((){
                _selectedIndex=index;
              });
            },
          ),
        )
    );
  }
}