import 'package:flutter/material.dart';

class CommunityPost extends StatefulWidget {
  const CommunityPost({super.key});

  @override
  State<CommunityPost> createState() => _CommunityPostState();
}
class _CommunityPostState extends State<CommunityPost> {
  bool upvote = false;
  bool follow1 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Container(
                width: double.infinity,
                height: 580,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text(
                                'Shweta Arora',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              '  Former Area Sales Manager',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Icon(
                          Icons.clear_rounded,
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 115),
                      child: Text(
                        "How do I refresh my mind in five minutes?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: 'This technique was discussed for the first time by Dr. Win Wenger. I don’t know what it’s called, so I’m naming it -'),
                            TextSpan(
                              text: 'The Head Technique',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: '\nSit straight. \nClose your eyes. \nImagine the boundary of your head.\nNow imagine this boundary expanding by an inch. \nYou actually need to ‘see’ the boundary of your head spreading out!'),
                          ],
                        ),
                      )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        color: Colors.black,
                        child: Image.network(
                          "https://qph.cf2.quoracdn.net/main-qimg-e4acd6018e20ec16cb3564c35efdc2e9",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            height: 30,
                            width: 110, // Adjust the width as needed
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  upvote = !upvote;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                // Make the button transparent
                                elevation: 0, // Remove elevation
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // Center both text and icon
                                children: [
                                  Icon(
                                      upvote == false
                                          ? Icons.thumb_up_off_alt
                                          : Icons.thumb_up_alt_rounded,
                                      color: Color(0xFF4E74F9)),
                                  SizedBox(width: 4),
                                  // Add spacing between icon and text
                                  Text(
                                    " Upvote",
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
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '22',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.loop_sharp,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(height: 5,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Container(
                width: double.infinity,
                height: 500,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpFreAtrOzdfbsrEHLCtHyBDY4x80z6RBeVA&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                'Tiny Nair',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              '  Cardiologist at PRS Hospital, Trivandrum',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Icon(
                          Icons.clear_rounded,
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70, left:10),
                      child: Text(
                        "What could you teach someone in 5 minutes that would benefit them for the rest of their life?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'The commonest complaint with which people consult a cardiologist is chest pain. People believe, and rightly so, that chest pain is the classical hallmark that the'),
                              TextSpan(
                                text: '(..more)',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        color: Colors.black,
                        child: Image.network(
                          "https://qph.cf2.quoracdn.net/main-qimg-89abb420583538672d13872bdb665903",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            height: 30,
                            width: 110, // Adjust the width as needed
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  upvote = !upvote;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                // Make the button transparent
                                elevation: 0, // Remove elevation
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // Center both text and icon
                                children: [
                                  Icon(
                                      upvote == false
                                          ? Icons.thumb_up_off_alt
                                          : Icons.thumb_up_alt_rounded,
                                      color: Color(0xFF4E74F9)),
                                  SizedBox(width: 4),
                                  // Add spacing between icon and text
                                  Text(
                                    " Upvote",
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
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '13',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.loop_sharp,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(height: 5,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Container(
                width: double.infinity,
                height: 500,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeJmFW_rzPyuJUmTEmTk9ZLB7u1CmTclyKCA&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text(
                                'Rohit Malshe',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              '  Chem Engineer, Programmer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width:160,
                        ),
                        Icon(
                          Icons.clear_rounded,
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120,),
                      child: Text(
                        "How do I stop procrastinating and study?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'When I joined IIT (Then ITBHU), I met seniors in my college who told me: “You should not really try to get highest grades. In fact if you do, you might not get a job. Try to score just about enough that you are right'),
                              TextSpan(
                                text: '(..more)',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        color: Colors.black,
                        child: Image.network(
                          "https://qph.cf2.quoracdn.net/main-qimg-a01b4b41c1a6a39cc14854ecdadd09b5-lq",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            height: 30,
                            width: 110, // Adjust the width as needed
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  upvote = !upvote;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                // Make the button transparent
                                elevation: 0, // Remove elevation
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // Center both text and icon
                                children: [
                                  Icon(
                                      upvote == false
                                          ? Icons.thumb_up_off_alt
                                          : Icons.thumb_up_alt_rounded,
                                      color: Color(0xFF4E74F9)),
                                  SizedBox(width: 4),
                                  // Add spacing between icon and text
                                  Text(
                                    " Upvote",
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
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '9',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.loop_sharp,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(height: 5,),
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
          SizedBox(height: 5,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Container(
                width: double.infinity,
                height: 230,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU4g8xUnnDU4kVOp8_-3f3aPDusw_D2AlyXw&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Text(
                                'Ishita Jain',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Text(
                              '  Former Area Sales Manager ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Icon(
                          Icons.clear_rounded,
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left:10),
                      child: Text(
                        "I recently gave my IIM Cap interview and it went bad as I wasn't able to answer graduation related questions. Though I maintained my confidence throughout. Is there a chance I could convert any IIM?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'ou weren’t able to answer only the graduation related questions. In my IIM Indore interview, I had such a poker face throughout the interview because I didn’t answer any serious question. The interviewers were '),
                              TextSpan(
                                text: '(..more)',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            height: 30,
                            width: 110, // Adjust the width as needed
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  upvote = !upvote;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                // Make the button transparent
                                elevation: 0, // Remove elevation
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // Center both text and icon
                                children: [
                                  Icon(
                                      upvote == false
                                          ? Icons.thumb_up_off_alt
                                          : Icons.thumb_up_alt_rounded,
                                      color: Color(0xFF4E74F9)),
                                  SizedBox(width: 4),
                                  // Add spacing between icon and text
                                  Text(
                                    " Upvote",
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
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '11',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.loop_sharp,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
