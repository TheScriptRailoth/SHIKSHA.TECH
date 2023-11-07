import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shiksha_tech/live_screen.dart';
class LiveCourseCard extends StatefulWidget {
  const LiveCourseCard({
    Key? key,
    required this.thumbNail,
    required this.videoAmount,
    required this.title,
    required this.userProfile,
    required this.userName,
    required this.price,
  }) : super(key: key);

  final String thumbNail;
  final String videoAmount;
  final String title;
  final String userProfile;
  final String userName;
  final String price;

  @override
  _LiveCourseCardState createState() => _LiveCourseCardState();
}

class _LiveCourseCardState extends State<LiveCourseCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LiveScreen();
        }));
      },
      child: Container(
        width: size.width * .9,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: size.width * .5,
                  width: size.width * .9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      widget.thumbNail,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 9.0,
                  left: 9.0,
                  child: Container(
                    width: 65.0,
                    height: 25.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fiber_manual_record, color: Colors.red, size: 18,),
                        Text(
                          ' LIVE',
                          style: TextStyle(
                              color:Colors.red,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7.0,
              ),
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color:Color(0xff022b3f),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(
                        widget.userProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Container(
                      width: size.width,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.userName,
                        style: TextStyle(
                          color: Color(0xff022b3f),
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.wifi,
                        color: Colors.red,
                        size: 16,
                      ),
                      Text(" Live now", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}