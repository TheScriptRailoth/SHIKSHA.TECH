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
                height: 520,
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
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.cyanAccent,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Shiksha.tech',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Text(
                              'Since 2003',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 220,
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
                    Text(
                      "The LIONESS IS BACK! I am talking about Noopur Sharma!",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                          "Hindus please welcome our lioness Noopur Sharma back on the public space. Yesterday, this young tigress was welcomed by Vivek Agnihotri while promoting his film THE VACCINE WARS. Yours truly was also invited."),
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
                          "https://qph.cf2.quoracdn.net/main-qimg-0ce54a47e09991d07313d73716ca6490",
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
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}
