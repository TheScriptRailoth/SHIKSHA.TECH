import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shiksha_tech/widgets/add_question_widget.dart';
import 'package:shiksha_tech/widgets/community_ask_widget.dart';
import 'package:shiksha_tech/widgets/community_post_widget.dart';

import 'add_post_or_ask_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool selectAns = false;
  bool selectFeed = true;
  bool showCommunityPost = true; // Add this variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Community", style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Color(0xFF4E74F9)),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Color(0xFF4E74F9)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPostorAsk(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 8),
                          Container(
                            height: 35,
                            width: 35,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset('images/me.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Color(0XFF808080).withOpacity(0.1),
                                  width: 2.0,
                                ),
                              ),
                              width: double.infinity,
                              height: 38,
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2, left: 10),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 9, bottom: 8, right: 90, left: 8),
                                  child: Text("What do you want to ask or share?", style: TextStyle(color: Colors.grey),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 20,),
                          Expanded(
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectFeed = true;
                                    selectAns = false;
                                  });
                                },
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.dynamic_feed_rounded, color: Color(0xFF4E74F9),),
                                      SizedBox(width: 10),
                                      Text("Feed", style: TextStyle(color: Color(0xFF4E74F9)),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1,
                            height: 30,
                          ),
                          Expanded(
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectFeed = false;
                                    selectAns = true;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.text_snippet_outlined, color: Color(0xFF4E74F9),),
                                    SizedBox(width: 10),
                                    Text("Answer", style: TextStyle(color: Color(0xFF4E74F9)),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1,
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
          ),
          SizedBox(height: 5,),
          if (selectFeed)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CommunityPost(),
                    CommunityPost(),
                  ],
                ),
              ),
            ),
          if(selectAns)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CommunityAsk()
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
