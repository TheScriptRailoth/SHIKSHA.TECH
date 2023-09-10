import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shiksha_tech/widgets/content_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class ClippScreen extends StatelessWidget {
  final List<String> videos = [
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveIG.App_3169172331812966825_6478443618.mp4?alt=media&token=110cfc38-10d4-46c7-b9f0-4d369093e0c0',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FMust%20learn%20this.%23coding%20%23programming%20%23git%20%23tool%20%23interview.mp4?alt=media&token=deaec9b4-9eda-46cc-8eb0-e4f24fe37b61',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2F370630647_1003916207463164_5450550365793242660_n.mp4?alt=media&token=f0cf82ba-3e46-4e6c-8bb3-d2a43b1f7b40',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FCurrent%20Ministers%202023..%20%20Follow%20-%20%40theknowledgeboard%20%20%23education%20%23study%20%23gk%20%23president%20%23vicepresident%20%23pr...defenceminister%20%23gkindia%20%23exam%20%23ssccgl%20%23upsc%20%23instagramreels%20%23viralvideos%20%23educational%20%23currentaffairs%20%23gkfacts%20%23reelsinst.mp4?alt=media&token=f62135b8-8f2c-4f59-b560-df36120b20e2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Clipps',
                      style: TextStyle(
                        color: Color(0xFF4E74F9),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

