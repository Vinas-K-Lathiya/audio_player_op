import 'package:audio_player_main/audio1.dart';
import 'package:audio_player_main/video.dart';
import 'package:flutter/material.dart';

import 'audio.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    routes: {
      '/': (context) => Home(),
      'Audio1': (context) => audio1(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Mirror wall'),
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                  "audio",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                )),
                Tab(
                    child: Text(
                  "video",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                )),
              ],
            ),
          ),
          body: TabBarView(children: [audio(), video()])),
    );
  }
}
