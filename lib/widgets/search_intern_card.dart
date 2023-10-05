import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shiksha_tech/lecture_screen.dart';

class SearchInternCard extends StatefulWidget {
  const SearchInternCard({
    Key? key,
    required this.company,
    required this.location,
    required this.title,
    required this.start,
    required this.duration,
    required this.stipend,
  }) : super(key: key);

  final String company;
  final String location;
  final String title;
  final String start;
  final String duration;
  final String stipend;

  @override
  _SearchInternCardState createState() => _SearchInternCardState();
}

class _SearchInternCardState extends State<SearchInternCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
          child: GestureDetector(
            onTap: (){},
            child: Container(
              width: size.width,
              height: (size.width-20)*.7,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15.0),
                            Text(
                              widget.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff022b3f),
                                fontSize: 19.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              widget.company,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              children: [
                                Icon(CupertinoIcons.location_circle, color: Colors.grey,size: 17,),
                                SizedBox(width: 7),
                                Text(
                                  widget.location,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(CupertinoIcons.play_circle, color: Colors.grey,size: 15,),
                                            SizedBox(width: 3),
                                            Text(
                                              'START DATE',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6,),
                                        Text(
                                          widget.start,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 25,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(CupertinoIcons.calendar, color: Colors.grey,size: 15,),
                                            SizedBox(width: 3),
                                            Text(
                                              'DURATION',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6,),
                                        Text(
                                      widget.duration,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                      ],
                                    ),
                                    SizedBox(width: 25,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(CupertinoIcons.money_dollar_circle, color: Colors.grey,size: 15,),
                                            SizedBox(width: 3),
                                            Text(
                                              'STIPEND',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6,),
                                        Text(
                                      widget.stipend,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                      ],
                                    ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 1,
                              width: size.width,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: size.width-50,
                              child: Row(
                                children: [
                                  Spacer(), // Pushes everything to the left
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Apply Now', style: TextStyle(color: Colors.white)),
                                    style: ButtonStyle(
                                      backgroundColor:MaterialStateProperty.all<Color>(Color(0xFF4E74F9)),
                                      side: MaterialStateProperty.all(BorderSide(width: 1, color: Color(0xFF4E74F9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomCourseCardShrink extends StatefulWidget {
  const CustomCourseCardShrink({
    Key? key,
    required this.thumbNail,
    required this.title,
    required this.userName,
    required this.rating,
  }) : super(key: key);

  final String thumbNail;
  final String title;
  final String userName;
  final String rating;

  @override
  _CustomCourseCardShrinkState createState() => _CustomCourseCardShrinkState();
}

class _CustomCourseCardShrinkState extends State<CustomCourseCardShrink> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * .2,
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            height: size.width * .125,
            width: size.width * .125,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                widget.thumbNail,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.0,
                    color:Color(0xff022b3f),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Instructor: ' + widget.userName,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                    // Text(
                    //   '\$' + widget.price,
                    //   style: TextStyle(
                    //     fontSize: 14.0,
                    //     color:Color(0xFF4E74F9),
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}