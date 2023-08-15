import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'list.dart';

class video3 extends StatefulWidget {
  const video3({super.key});

  @override
  State<video3> createState() => _video3State();
}

class _video3State extends State<video3> {
  late ChewieController chewieController;
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.file(File(Global.pic!.path))
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
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Chewie(
                controller: chewieController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
