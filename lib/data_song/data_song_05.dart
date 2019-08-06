import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong05 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("दशैं आयो", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "दशैं आयो"
    ];

    List<String> songBody = [
      "\nदशैं आयो\n" +
          "खाउँला पिउँला\n" +
          "काहाँ पाउँला\n" +
          "चोरी ल्यउँला\n" +
          "धत्तेरी पापी \n"
              "छुट्टै बुसुँला । \n"

    ];

    for (int i = 0; i < songTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
        genericTitle: songTitle[i],
        genericBody: songBody[i]
      ),
      );
    }
    return data;
  }


}
