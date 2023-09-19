import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shiksha_tech/widgets/content_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class ClippScreen extends StatelessWidget {
  final List<String> videos = [
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203110978183981328078.mp4?alt=media&token=1cb37f04-1ca1-420e-a64a-293e448268d0',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203135126050333416303.mp4?alt=media&token=04c7afb5-1429-4555-8a35-3e7325ab31f2',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203142308292315814354.mp4?alt=media&token=d13e5323-e3be-4ba4-851c-e9adb1def686',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203178422311148903573.mp4?alt=media&token=e17fc1ce-a4b0-4946-9f3e-d342764d9ecc',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203184480668460354184.mp4?alt=media&token=3afcc0df-af7f-4a0a-a7be-9a27ccd8fe28',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FCurrent%20Ministers%202023..%20%20Follow%20-%20%40theknowledgeboard%20%20%23education%20%23study%20%23gk%20%23president%20%23vicepresident%20%23pr...defenceminister%20%23gkindia%20%23exam%20%23ssccgl%20%23upsc%20%23instagramreels%20%23viralvideos%20%23educational%20%23currentaffairs%20%23gkfacts%20%23reelsinst.mp4?alt=media&token=f62135b8-8f2c-4f59-b560-df36120b20e2',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FVID_98970411_141513_735.mp4?alt=media&token=7c53bc72-0433-4304-9167-1b9b04d92890',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203140199350713928970.mp4?alt=media&token=1e8f17c0-cfe6-4810-8644-32175c99d5cd',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2F373117827_277647485128376_2256232656557846537_n.mp4?alt=media&token=21bb8b41-954d-4eb4-b84b-be96f927e69d',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2F10000000_1808709016218557_2708445696940969853_n.mp4?alt=media&token=d352397e-41c2-47b4-abf6-01a0566a7ecc',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2F10000000_272358585724056_4484853143375328399_n.mp4?alt=media&token=1d0d504f-410d-480b-a8b3-0b2416370a2c',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%202800046905119087997.mp4?alt=media&token=d1243ff9-27b8-44d5-a157-707de8cfd76d',
    'https://firebasestorage.googleapis.com/v0/b/sih-project-19809.appspot.com/o/Shirt%20clips%2FSaveInsta.App%20-%203185823999175878011_58439019165.mp4?alt=media&token=dbfdee6c-b7b4-40f2-a623-3978a303bf4e'
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
                padding: const EdgeInsets.all(10),
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

