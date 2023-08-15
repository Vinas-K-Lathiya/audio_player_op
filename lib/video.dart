import 'package:audio_player_main/video2.dart';
import 'package:audio_player_main/video3.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'list.dart';

class video extends StatefulWidget {
  video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => video2()));
            },
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              child: Center(
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("lib/image/3.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () async {
                final XFile? image =
                    await Global.picker.pickVideo(source: ImageSource.gallery);
                setState(() {
                  Global.pic = image;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => video3()));
                });
              },
              child: Icon(Icons.image),
            ),
          ),
        ],
      ),
    );
  }
}
