import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong12 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("राम्रो बानी", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "राम्रो बानी", ""
    ];

    List<String> songBody = [
      "\nसानो सानो हाम्रो नानी\n" +
          "कस्तो राम्रो बानी\n" +
          "हास्तै खेल्दै आयो नानी\n" +
          "राम्रा हात तानी\n",

      "पापा लिने हात राम्रो\n" +
          "चाचा पनि राम्रो\n" +
          "यो नानीको बानी राम्रो\n" +
          "पारौं अझै राम्रो\n "

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
