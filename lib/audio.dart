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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 20),
                  child: Text(
                    "Audio List",
                    style: TextStyle(color: Colors.pink),
                  ),
                )),
            ...aaaudio
                .map((e) => GestureDetector(
                    onTap: () {
                      aaudio a = aaudio(
                        audio: e['audio'],
                        image: e['image'],
                        title: e['title'],
                      );

                      Navigator.pushNamed(context, 'Audio1', arguments: a);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 18.0, left: 20),
                      child: Container(
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  e['title'],
                                  style: TextStyle(fontSize: 18),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right:28.0),
                                  child: Text(
                                    "♡",style: TextStyle(fontSize: 20),
                                  ),
                                ),
                               // Icon(Icons.navigate_next),
                              ],
                            ),
                            Text(
                              e['subtitle'],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    )))
                .toList()
          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: aaaudio
    //           .map(
    //             (e) => GestureDetector(
    // onTap: () {
    //   aaudio a = aaudio(
    //     audio: e['audio'],
    //     image: e['image'],
    //     title: e['title'],
    //   );

    //   Navigator.pushNamed(context, 'Audio1', arguments: a);
    // },
    //               child: Center(
    //                 child: Padding(
    //                   padding:  EdgeInsets.only(top:18.0),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    // Container(
    //   height: 100,
    //   width: 80,
    //   decoration: BoxDecoration(
    //     color: Colors.black,
    //     borderRadius: BorderRadius.circular(15),
    //     image: DecorationImage(
    //         image: AssetImage(
    //           e['image'],
    //         ),
    //         fit: BoxFit.cover),
    //   ),
    // ),
    //                       Text(
    //                         e['title'],
    //                         style: TextStyle(fontSize: 16),
    //                       ),
    //                       Divider()
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           )
    //           .toList(),
    //     ),
    //   ),
    // );
  }
}
