import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong02 extends StatelessWidget {

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
    title: Text('कुखुरी काँ', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "कुखुरी काँ", "", "", "", "", ""
    ];

    List<String> songBody = [
      "\nकुखुरी काँ\n" +
          "बासी भात खाँ\n" +
          "खोइ मेरो बासी भात ?",

      "बिरालोले खायो\n" +
          "खोइ बिरालो ?",

      "मूसो मार्न गयो\n" +
          "खोइ मूसो ?",

      "दुलाभित्र पस्यो\n" +
          "खोइ दुलो ?",

      "गाईले कुल्च्यो\n" +
          "खोइ गाई ?",

      "खोलाले बगायो\n" +
          "खोइ खोला ?\n" +
          "स्याप्पै सुक्यो"

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
