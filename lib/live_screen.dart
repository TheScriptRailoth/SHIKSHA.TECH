import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  Future<void> loadVideo()async{
    videoPlayerController=VideoPlayerController.network('https://b3d60035815d.ap-south-1.playback.live-video.net/api/video/v1/ap-south-1.578421575817.channel.JSbdilwhqylC.m3u8');

    await Future.wait([
      videoPlayerController.initialize()
    ]);

    chewieController = ChewieController(videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: false,
        fullScreenByDefault: true,
        //showControls: true
        // customControls: Column(
        //   children: [
        //     Expanded(
        //         child: Container(
        //         alignment: Alignment.topRight,
        //           padding: EdgeInsets.all(10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.fiber_manual_record, color: Colors.red, size: 20,),
        //               SizedBox(width: 5,),
        //               Text("LIVE", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
        //             ],
        //           ),
        //       )
        //     )
        //   ],
        // )
    );
    setState(() {

    });
  }
  
  @override
  void initState(){
    super.initState();
    loadVideo();
  }

  @override
  void dispose(){
    videoPlayerController .dispose();
    chewieController?.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (chewieController != null)
            Chewie(
              controller: chewieController!,
            )
          else
            Center(
              child: CircularProgressIndicator(),
            ),
          Positioned(
            top: 10,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    color: Colors.red,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "LIVE",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      )
    );
  }
}
