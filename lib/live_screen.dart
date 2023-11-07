import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    videoPlayerController=VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    await Future.wait([
      videoPlayerController.initialize()
    ]);

    chewieController = ChewieController(videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        isLive: true,
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    loadVideo();
  }

  @override
  void dispose(){
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    videoPlayerController .dispose();
    chewieController?.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
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
          if (chewieController != null)
            Chewie(
              controller: chewieController!,
            )
          else
            Center(
              child: CircularProgressIndicator(),
            ),
          Positioned(
            top: 20,
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
