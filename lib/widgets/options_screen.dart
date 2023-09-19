import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'content_screen.dart';
class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  bool liked=false;
  bool follow=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person, size: 18),
                        radius: 16,
                      ),
                      SizedBox(width: 6),
                      Text('shiksha.tech', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(width: 10),
                      Icon(Icons.verified, size: 15, color: Colors.lightGreenAccent,),
                      SizedBox(width: 6),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.2)),
                        ),
                        onPressed: () {
                          setState(() {
                            follow=!follow;
                          });
                        },
                        child:
                        follow==false? Text('Follow',style: TextStyle(color: Colors.white),
                        ):Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Text('Knowledge is power💙 ..', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      Text('Original Audio - some music track--', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                  liked = !liked; // Toggle the liked state
                  });
                  },
                    child: liked == false
                        ? Icon(Icons.favorite_border_outlined)
                        : Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text('59k'),
                  SizedBox(height: 20),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.comment)),
                  Text('1223'),
                  SizedBox(height: 25),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: IconButton(onPressed: (){
                      Share.share('Check!');
                    }, icon: Icon(Icons.send_rounded)),
                  ),
                  SizedBox(height: 50),
                  Icon(Icons.more_vert),
                ],
              )
            ],
          ),
        ],
      ),
    );;
  }
}
