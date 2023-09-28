import 'package:flutter/material.dart';
class CommunityAsk extends StatefulWidget {
  const CommunityAsk({super.key});

  @override
  State<CommunityAsk> createState() => _CommunityAskState();
}

class _CommunityAskState extends State<CommunityAsk> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
            child: Container(
              height: 40,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.stars_sharp, color: Color(0xFF4E74F9),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Questions For You", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  )
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                            child: Text("Which is the best coaching institute in Delhi for droppers?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 34m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                     Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                            child: Text("How can I pass the half-yearly exam of physics (CBSE) in 6 hours?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 20m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                     Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                            child: Text("Which are the super healthy foods high in magnesium?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("2 Answers",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last followed 1h",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                     Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height:10,),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
            child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.credit_score_rounded, color: Color(0xFF4E74F9),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Exams and Test", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    )
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 170,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("I finished my AWS certification exam, but after that, I did not get the result immediately on the screen nor pass or fail. Is this normal?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 34m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("Can I get the previous year’s question paper of the Beltron programmer post?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 20m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("Why do only a few students crack the CGL exam?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("2 Answers",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last followed 1h",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 1),
            child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Text("More", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.grey,),
                  ],
                )
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
            child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.class_, color: Color(0xFF4E74F9),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Class 12th in India", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    )
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 110,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("Are the class 12 practical exams difficult?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 10),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 34m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("How do I get a scholarship to study abroad from Pakistan after 12th class?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("No answer yet",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last requested 20m",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            child: Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: Text("Can I study 12th grade in the UK after completing 11th in the CBSE board?", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)),
                        SizedBox(width: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, bottom: 15),
                          child: Icon(Icons.clear_rounded, color: Colors.grey,size: 18,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("2 Answers",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("  Last followed 1h",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          height: 35,
                          width: 105, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  )
                              ),
                              elevation: 0, // Remove elevation
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // Center both text and icon
                              children: [
                                Icon(
                                    Icons.edit_note_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Answer",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:Colors.white,
                          ),
                          height: 35,
                          width: 110, // Adjust the width as needed
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.add_task_rounded,
                                    color:Colors.grey),
                                SizedBox(width: 4),
                                // Add spacing between icon and text
                                Text(
                                  "Connect",
                                  style:
                                  TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.thumb_down_off_alt_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 1),
            child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Text("More", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.grey,),
                  ],
                )
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
