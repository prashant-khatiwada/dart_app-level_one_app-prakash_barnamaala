import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem10 extends StatelessWidget {

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
    title: Text('POEM', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    String songTitle = " POEM ";

    List<String> songBody = [
    'POEM',

      "\nप्रकाश हरिनगरे\n"

    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: songTitle,
          genericBody: songBody[i]
      ),
      );
    }
    return data;
  }



}
