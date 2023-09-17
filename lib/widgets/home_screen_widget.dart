import 'package:flutter/material.dart';
import '../lecture_screen.dart';
class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List categories=[
      "Category",
      "Classes",
      "Free Course",
      "Book Store",
      "Live Course",
      "Leader Board",
    ];

    List<Color> category_color=[
      Color(0xFFFFCF2F),
      Color(0xFF6FE08D),
      Color(0xFF61BDFD),
      Color(0xFFCB84FD),
      Color(0xFFFC7C7F),
      Color(0xFF78E667),
    ];
    List<Icon>category_icon=[
      Icon(Icons.category, color: Colors.white,size: 30,),
      Icon(Icons.video_library, color: Colors.white,size: 30,),
      Icon(Icons.assignment, color: Colors.white,size: 30,),
      Icon(Icons.store, color: Colors.white,size: 30,),
      Icon(Icons.play_circle_fill, color: Colors.white,size: 30,),
      Icon(Icons.emoji_events, color: Colors.white,size: 30,),
    ];
    List image=[
      "C#",
      'React Native',
      'Python',
      'Flutter'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF4E74F9),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.notifications_active_sharp),
          onPressed: (){},
        ),
        ]
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color:Color(0xFF4E74F9),
              ),
              child: Text(
                'Sample',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the Home menu item
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the Settings menu item
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Add more ListTile widgets for other menu items
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 140,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color:Color(0xFF4E74F9),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 7, top: 7),
                      child: Text("Hi, Ashutosh", style: TextStyle(
                        color:Colors.white,fontSize: 28, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                      ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 7),
                      child: Text("Let's Start Our Learning", style: TextStyle(
                        color:Colors.white,fontSize: 15, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                      ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 350,
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            alignment: Alignment.center,
                            child: Container(
                              child: Icon(Icons.search),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 250,
                              height: 38,
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: "Type Something....",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF4E74F9).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF4E74F9).withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 6.0,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Container(
                                child: Icon(Icons.filter_alt)
                            ),
                          ),
                        ],
                      ),
                    ),
                 ]
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
