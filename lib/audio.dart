import 'package:audio_player_main/model.dart';
import 'package:flutter/material.dart';

import 'list.dart';

class audio extends StatefulWidget {
  audio({Key? key}) : super(key: key);

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: aaaudio
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    aaudio a = aaudio(
                      audio: e['audio'],
                      image: e['image'],
                      title: e['title'],
                    );

                    Navigator.pushNamed(context, 'Audio1', arguments: a);
                  },
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top:18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                    e['image'],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            e['title'],
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
