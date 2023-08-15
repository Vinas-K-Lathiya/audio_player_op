import 'package:audio_player_main/model.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class audio1 extends StatefulWidget {
  audio1({Key? key}) : super(key: key);

  @override
  State<audio1> createState() => _audio1State();
}

class _audio1State extends State<audio1> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  playAudio(String aud) {
    assetsAudioPlayer.open(
      Audio(aud),
    );
  }

  @override
  Widget build(BuildContext context) {
    aaudio data = ModalRoute.of(context)!.settings.arguments as aaudio;
    return Scaffold(
      appBar: AppBar(
        title: Text("audio"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: assetsAudioPlayer.currentPosition,
        builder: (context, snapshot) => Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1.2,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage(
                      data.image,
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          data.title,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Text(
                        "${snapshot.data?.inHours} : "
                        "${snapshot.data?.inMinutes} : "
                        "${snapshot.data?.inSeconds}",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          assetsAudioPlayer.stop();
                        },
                        icon: Icon(Icons.stop),
                      ),
                      IconButton(
                        onPressed: () {
                          assetsAudioPlayer.pause();
                        },
                        icon: Icon(Icons.pause),
                      ),
                      IconButton(
                        onPressed: () async {
                          await assetsAudioPlayer.loopMode;
                        },
                        icon: Icon(Icons.loop),
                      ),
                      IconButton(
                        onPressed: () {
                          playAudio(data.audio);
                        },
                        icon: Icon(Icons.play_arrow),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
