import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video2 extends StatefulWidget {
  const video2({super.key});

  @override
  State<video2> createState() => _video2State();
}

class _video2State extends State<video2> {
  late ChewieController chewieController;
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.asset("lib/video/video.mp4")
      ..initialize().then((value) => () {
            setState(() {});
          });
    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Chewie(
            controller: chewieController,
          ),
        ),
      ),
    );
  }
}
