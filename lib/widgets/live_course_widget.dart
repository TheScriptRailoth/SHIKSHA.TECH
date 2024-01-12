import 'package:flutter/material.dart';

import 'live_lecture_card.dart';
class LiveCourseWidget extends StatefulWidget {
  const LiveCourseWidget({super.key});

  @override
  State<LiveCourseWidget> createState() => _LiveCourseWidgetState();
}

class _LiveCourseWidgetState extends State<LiveCourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Live Lectures", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only( top:10, bottom: 20),
            child: LiveCourseCard(
              thumbNail: 'images/deepak_thumbnail.jpg',
              videoAmount: "",
              title:  "What is Web Development ? Complete RoadMap from Basics to Advanced",
              userProfile:  "https://static.uacdn.net/thumbnail/course/v2/2F5D3214-A282-427D-8FB7-662B5344F71C_plus.png?q=75&w=384&auto=format%2Ccompress",
              userName:  "Deepak Rathore",
              price: "123",
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
