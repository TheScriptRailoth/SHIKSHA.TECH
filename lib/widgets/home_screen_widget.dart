import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shiksha_tech/widgets/course_card.dart';
import 'package:shiksha_tech/widgets/courses_data.dart';
import 'package:shiksha_tech/widgets/place_holder.dart';
import '../lecture_screen.dart';
import 'category.dart';
import 'category_button.dart';
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
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
        elevation: 0,
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
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Classes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Design',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Communication',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('KIDS',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/Flutter.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Classes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                // Replace 'YourDestinationScreen' with the actual screen you want to navigate to
                                return LectureScreen('Flutter');
                              },
                            ),
                          );
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                // Replace 'YourDestinationScreen' with the actual screen you want to navigate to
                                return LectureScreen('Flutter');
                              },
                            ),
                          );
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
}
