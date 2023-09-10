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
      body:         ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF4E74F9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3, bottom: 20),
                  child: Text("Hi, Ashutosh", style: TextStyle(
                    color:Colors.white,fontSize: 25, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:11, bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5)
                        ),
                        prefixIcon: Icon(Icons.search, size:25,)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                    itemCount: categories.length,
                    shrinkWrap:true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                    ),
                    itemBuilder:(context,index){
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: category_color[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(child: category_icon[index],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(categories[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          )
                        ],
                      );
                    }
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Courses", style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    Text("See All", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4E74F9),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                GridView.builder(
                  itemCount: image.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                  ),
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LectureScreen(image[index])));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal:10 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/${image[index]}.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(image[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("55 Videos",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              )
                              ,)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
