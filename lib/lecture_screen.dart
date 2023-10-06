import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:shiksha_tech/widgets/descriptionSelection.dart';
import 'package:shiksha_tech/widgets/videoSelection.dart';
import 'package:video_player/video_player.dart';
class LectureScreen extends StatefulWidget {
  const LectureScreen({
    Key? key,
    required this.title,
    required this.thumbnail,
  }) : super(key: key);
  final String title;
  final String thumbnail;

  @override
  State<LectureScreen> createState() => _LectureScreenState();
}

class _LectureScreenState extends State<LectureScreen> {
  // late VideoPlayerController videoPlayerController;
  // ChewieController? chewieController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _initPlayer();
  // }
  //
  // void _initPlayer() async {
  //   videoPlayerController = VideoPlayerController.network(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  //   await videoPlayerController.initialize();
  //
  //   chewieController = ChewieController(
  //     videoPlayerController: videoPlayerController,
  //     autoPlay: true,
  //     looping: true,
  //     additionalOptions: (context) {
  //       return <OptionItem>[
  //         OptionItem(
  //           onTap: () => debugPrint('Option 1 pressed!'),
  //           iconData: Icons.chat,
  //           title: 'Option 1',
  //         ),
  //         OptionItem(
  //           onTap: () =>
  //               debugPrint('Option 2 pressed!'),
  //           iconData: Icons.share,
  //           title: 'Option 2',
  //         ),
  //       ];
  //     },
  //   );
  // }
  // @override
  // void dispose() {
  //   videoPlayerController.dispose();
  //   chewieController?.dispose();
  //   super.dispose();
  // }

  bool isVideoSelected=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Color(0xFF4E74F9),
            ),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
               padding: EdgeInsets.all(5),
               width: MediaQuery.of(context).size.width,
               height: 200,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Color(0xFFF5F3FF),
              //   image: DecorationImage(
              //     image: NetworkImage(widget.thumbnail)
              //   )
              // ),
              // child: Center(
              //   child: Container(
              //     padding: EdgeInsets.all(5),
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       shape: BoxShape.circle,
              //     ),
              //     child: Icon(Icons.play_arrow_rounded, color:Color(0xFF4E74F9),size: 45,),
              //   ),
              // ),
              // child: chewieController!=null? Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20),
              //   child: Chewie(
              //     controller: chewieController!,
              //   ),
              // ) : Center(
              //   child: CircularProgressIndicator(),
              // ),
            ),
            SizedBox(height: 15,),
            Text("${widget.title} Complete Course",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22
              ),
            ),
            SizedBox(height: 5,),
            Text("Created by Shiksha.Tech",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 5,),
            Text("55 Videos",
              style:TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ) ,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color:isVideoSelected?Color(0xFF4E74F9):Color(0xFF4E74F9).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSelected=true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color:isVideoSelected?Color(0xFF4E74F9).withOpacity(0.5):Color(0xFF4E74F9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSelected=false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
             isVideoSelected? VideoSelection(title:widget.title):DecriptionSelection(),
          ],
        ),
      ),
    );
  }
}

