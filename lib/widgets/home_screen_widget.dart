import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'package:share/share.dart';
import 'package:shiksha_tech/article_page.dart';
import 'package:shiksha_tech/home_screen.dart';
import 'package:shiksha_tech/message_page.dart';
import 'package:shiksha_tech/my_schemes_screen.dart';
import 'package:shiksha_tech/notes_screen.dart';
import 'package:shiksha_tech/widgets/course_card.dart';
import 'package:shiksha_tech/widgets/courses_data.dart';
import 'package:shiksha_tech/widgets/place_holder.dart';
import 'package:shiksha_tech/widgets/profilemenu_widget.dart';
import 'package:shiksha_tech/widgets/seach_screen_widget.dart';
import '../lecture_screen.dart';
import 'category.dart';
import 'category_button.dart';
import 'live_lecture_card.dart';
class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final hoverColor = Colors.white70;
  @override
  Widget build(BuildContext context) {
    List<ScreenHiddenDrawer> _pages = [];

    final myTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.white,
    );
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
      key: _scaffoldKey,
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Container(
              height: 32,
              width: 32,
              child: Image.asset('icons/menu.png'),
            ),
          ),
          toolbarHeight: kToolbarHeight,
          elevation: 0,
          backgroundColor: Color(0xFF4E74F9),
          actions: <Widget>[
            IconButton(
              icon: Container(
                  height:20,
                  width: 20,
                  child: Image.asset('icons/bell.png')),
              onPressed: (){},
            ),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MessageScreen();
                  },
                ),
              );
            },
              icon: Container(
                  height: 24,
                  width: 24,
                  child: Image.asset('icons/chat.png')
              ),
            )
          ]
      ),
      drawer: Drawer(
        child: Material(
          color: Color(0xFF4E74F9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 64, left: 15, right: 0, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: ClipOval(
                            child: Image.asset(
                              'images/me.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shiksha.Tech',
                              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'shiksha.techgmail.com',
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Container(
                          child: Image.asset('icons/chat.png'),
                          height: 22,
                          width: 22,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return MessageScreen();
                        }));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(
                  CupertinoIcons.house_alt_fill,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 18,),

                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Home screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  CupertinoIcons.square_list_fill,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'My Schemes',
                  style: TextStyle(color: Colors.white, fontSize: 18,),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MySchemesScreen()),
                  );
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  Icons.edit_note_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'Notes',
                  style: TextStyle(color: Colors.white, fontSize: 18,),

                ),
                hoverColor: hoverColor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return NotesScreen();
                  }));
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'Articles',
                  style: TextStyle(color: Colors.white, fontSize: 18,),

                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Home screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              Divider(
                color: Colors.white70,
              ),

              ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Settings screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  CupertinoIcons.phone_fill,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Settings screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              Divider(
                color: Colors.white70,
              ),

              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Settings screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  Icons.rate_review,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'Rate Us',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle navigation to the Settings screen
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),

              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 24,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                hoverColor: hoverColor,
                onTap: () {
                  // Handle logout action
                  Navigator.pop(context); // Close the drawer
                  // Add your logout logic here
                },
                contentPadding: EdgeInsets.symmetric(horizontal: 25),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16),
                child: Text(
                  'Shiksha.Tech',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
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
                  height: 155,
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
                      Padding(padding: EdgeInsets.only(left: 7, top: 20),
                        child: Text("Hi, Ashutosh", style: TextStyle(
                          color:Colors.white,fontSize: 24, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                        ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 7),
                        child: Text("Let's Start Our Learning", style: TextStyle(
                          color:Colors.white,fontSize: 15, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                        ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: (){
                          _navigateToSearchPage(context);
                        },
                        child: Container(
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
                                    padding: const EdgeInsets.only(bottom: 4, top: 10, right: 100),
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      "Search for new Courses",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
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
                                    child: Icon(Icons.filter_alt, color: Colors.white,)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Column(
                    children: [

                      Container(
                        height: 45,
                        width: 45,
                        child: Image(
                          image:AssetImage('assets/categories.png'),
                        ),
                      ),

                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      SizedBox(height: 4,),
                      Text('Category', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      Icon(Icons.class_, color: Color(0xFF4E74F9), size: 45,),
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      SizedBox(height: 4,),
                      Text('Class',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      Icon(Icons.category, color:Color(0xFF4E74F9), size: 45 ,),
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      SizedBox(height: 4,),
                      Text('Categories',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      Icon(Icons.video_library, color: Color(0xFF4E74F9), size: 45,),
                      SizedBox(height: 4,),
                      Text('Live Lectures',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      Icon(Icons.assignment, color: Color(0xFF4E74F9), size: 45,),
                      SizedBox(height: 4,),
                      Text('Assignment',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: const [
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      Icon(Icons.emoji_events, color: Color(0xFF4E74F9), size: 45,),
                      SizedBox(height: 4,),
                      Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      Icon(Icons.people, color: Color(0xFF4E74F9), size: 45,),
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      SizedBox(height: 4,),
                      Text('Community',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      // CircleAvatar(
                      //   radius: 28,
                      //   backgroundImage: AssetImage('assets/Flutter.png'),
                      // ),
                      Icon(Icons.note_alt_sharp, color: Color(0xFF4E74F9), size: 45,),
                      SizedBox(height: 4,),
                      Text('Material',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ArticlePage();
                }));
              },
              child: Container(
                height: 180,
                width: 340,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black, // Replace with your desired background color
                ),
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/chandrayan.png'),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text("See All", style: TextStyle(fontSize: 15, color: Color(0xFF4E74F9), fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top:10, bottom: 20),
                child: Row(
                    children:
                    List.generate(CoursesJson.length,(index){
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return LectureScreen('Flutter');
                          //     },
                          //   ),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CourseCard(thumbNail: CoursesJson[index]['image'],
                            videoAmount: CoursesJson[index]['video'],
                            title:  CoursesJson[index]['title'],
                            userProfile:  CoursesJson[index]['user_profile'],
                            userName:  CoursesJson[index]['user_name'],
                            price:  CoursesJson[index]['price'],
                          ),
                        ),
                      );
                    })
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Featured Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text("See All", style: TextStyle(fontSize: 15, color: Color(0xFF4E74F9), fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
                padding: const EdgeInsets.only( top:10, bottom: 20),
                  child: LiveCourseCard(
                            thumbNail: "https://static.uacdn.net/thumbnail/course/v2/2F5D3214-A282-427D-8FB7-662B5344F71C_plus.png?q=75&w=384&auto=format%2Ccompress",
                            videoAmount: "",
                            title:  "What is Web Development ? Complete RoadMap from Basics to Advanced",
                            userProfile:  "https://static.uacdn.net/thumbnail/course/v2/2F5D3214-A282-427D-8FB7-662B5344F71C_plus.png?q=75&w=384&auto=format%2Ccompress",
                            userName:  "Deepak Rathore",
                            price: "123",
                          ),
              ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text("See All", style: TextStyle(fontSize: 15, color: Color(0xFF4E74F9), fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children:List.generate(CategoryItem.length,(index){
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      child: CategoryButton(title: CategoryItem[index]['title'],),
                    );
                  })
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Communication Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text("See All", style: TextStyle(fontSize: 15, color: Color(0xFF4E74F9), fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top:10, bottom: 20),
                child: Row(
                    children:
                    List.generate(CoursesJson.length,(index){
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       // Replace 'YourDestinationScreen' with the actual screen you want to navigate to
                          //       return LectureScreen('Flutter');
                          //     },
                          //   ),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CourseCard(thumbNail: CoursesJson2[index]['image'],
                            videoAmount: CoursesJson2[index]['video'],
                            title:  CoursesJson2[index]['title'],
                            userProfile:  CoursesJson2[index]['user_profile'],
                            userName:  CoursesJson2[index]['user_name'],
                            price:  CoursesJson2[index]['price'],
                          ),
                        ),
                      );
                    })
                ),
              ),
            ),
            SizedBox(height: 25,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 25),
            //       child: Text("Subject-wise Classes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20,),
            // Container(
            //   width: 360,
            //   height: 400,
            //    decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Text("Physics", style: TextStyle(color: Colors.black, fontSize: 18),),
            //           Icon(Icons.arrow_forward_ios),
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
  void _navigateToSearchPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return SearchScreen(title: '');
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0); // Start the animation from bottom
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
