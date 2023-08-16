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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => video2()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('lib/image/3.jpg'),
                          fit: BoxFit.cover)),
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 1.1,
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom:38.0),
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
