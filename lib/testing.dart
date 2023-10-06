import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerThumbnail extends StatefulWidget {
  final String videoUrl;
  final String thumbnailUrl;

  VideoPlayerThumbnail({required this.videoUrl, required this.thumbnailUrl});

  @override
  _VideoPlayerThumbnailState createState() => _VideoPlayerThumbnailState();
}

class _VideoPlayerThumbnailState extends State<VideoPlayerThumbnail> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    final videoPlayerController = VideoPlayerController.network(widget.videoUrl);

    _chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9, // Adjust as needed
      autoPlay: false, // Set to true if you want autoplay
      looping: false, // Set to true if you want looping
      // Add more options as needed
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _chewieController.enterFullScreen();
        _chewieController.play();
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Thumbnail image
          Image.network(
            widget.thumbnailUrl,
            fit: BoxFit.cover,
          ),
          // Chewie video player
          Chewie(
            controller: _chewieController,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }
}
