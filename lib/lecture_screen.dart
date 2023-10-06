import 'dart:convert';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';

class LectureScreen extends StatefulWidget {
  const LectureScreen({
    Key? key,
    required this.title,
    required this.thumbnail,
    required this.searchvalue,
  }) : super(key: key);
  final String title;
  final String thumbnail;
  final String searchvalue;

  @override
  State<LectureScreen> createState() => _LectureScreenState();
}

class _LectureScreenState extends State<LectureScreen> {
  ChewieController? _chewieController = null;
  List<String> searchResults = [];
  int selectedVideoIndex = 0;
  late VideoPlayerController _videoPlayerController;
  bool isLoading = false;
  Future<void> fetchData() async {
    final url1 = Uri.parse('https://385a-49-43-41-194.ngrok-free.app/course?title=' + widget.title);

    try {
      final response1 = await http.get(url1);

      if (response1.statusCode == 200) {
        final responseBody1 = await response1.body;
        final parsedResponse1 = json.decode(responseBody1);

        setState(() {
          searchResults.clear();

          if (parsedResponse1 is List<dynamic>) {
            for (int i = 0; i < parsedResponse1.length; i++) {
              if (parsedResponse1[i] is String) {
                searchResults.add(parsedResponse1[i]);
              }
            }
          }
        });
      } else if (response1.statusCode == 404) {
        print('Request failed with status: ${response1.statusCode}');
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }

  void _playVideo(String videoUrl, int index) {
    if (_videoPlayerController.value.isInitialized) {
      _videoPlayerController.dispose();
    }
    setState(() {
      isLoading = true;
    });
    _videoPlayerController = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {
          selectedVideoIndex = index;
          isLoading=false;
        });

        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          looping: false,
        );

        _videoPlayerController!.play();
      });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
    if (searchResults.isNotEmpty) {
      final initialVideoUrl =
          'https://2589-49-43-41-194.ngrok-free.app/' +
              widget.searchvalue +
              '/' +
              searchResults[0] +
              '.mp4';
      _videoPlayerController = VideoPlayerController.network(initialVideoUrl)
        ..initialize().then((_) {
          setState(() {});
          _chewieController = ChewieController(
            videoPlayerController: _videoPlayerController,
            autoPlay: true,
            looping: false,
          );
        });
    }
  }



  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Stack(
              children:[
                Container(
                padding: EdgeInsets.all(1),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F3FF),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: _chewieController != null
                  ? Chewie(controller: _chewieController!)
                        : CircularProgressIndicator(),
                  ),
                ),
              ),
                if(isLoading)
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Center(
                      child:
                          CircularProgressIndicator(),
                    ),
                  )
              ]
            ),
            SizedBox(height: 15,),
            Text("${widget.title} Complete Course",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
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
            Text(
              searchResults.length.toString() + " Videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 10,),
            ListView.builder(
              itemCount: searchResults.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final videoUrl = 'https://2589-49-43-41-194.ngrok-free.app/' +
                    widget.searchvalue +
                    '/' +
                    searchResults[index] +
                    '.mp4';
                return GestureDetector(
                  onTap: () {
                    _playVideo(videoUrl, index);
                  },
                  child: ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == selectedVideoIndex
                            ? Color(0xFF4E74F9)
                            : Color(0xFF4E74F9).withOpacity(0.5),
                      ),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    title: Text(searchResults[index]),
                    subtitle: Text("25min 56sec"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
