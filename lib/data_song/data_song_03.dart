import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong03 extends StatelessWidget {

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
    title: Text('ताराबाजी लै लै', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "", "", "", ""
    ];

    List<String> songBody = [
      "",
      "\nताराबाजी लै लै \n" +
          "ममा आयो घोडा \n" +
          "माइजू आइन डोली",

      "पापा ल्याइन सोली \n" +
          "खान दिन्छिन भोलि \n" +
          "बुबु माम सुपुक्क \n" +
          "आलिमुनी घुपुक्क \n" +
          "काफलगेडी कुटुक्क",

      "बिरालो भन्छ म्याउँ म्याउँ \n" +
          "अगुल्टो भन्छ उछिट्याउँ \n"

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
