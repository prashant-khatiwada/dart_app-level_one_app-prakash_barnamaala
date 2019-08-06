import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong07 extends StatelessWidget {

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
    title: Text('पानी पर्यो', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "पानी पर्यो"
    ];

    List<String> songBody = [
      "\n पानी पर्यो, पानी पर्यो सुन्दैछु, सुन्दैछु,।\n" +
          "\n" +
          "पानी पर्छ तप, तप ।\n" +
          "\n" +
          "पानी पर्छ तप, तप भिजेको छु, भिजेको छु ।\n" +
          "\n" +
          "पानी पर्यो, पानी पर्यो सुन्दैछु, सुन्दैछु, ।\n" +
          "\n" +
          "पानी पर्छ तप, तप ।\n" +
          "\n" +
          "पानी पर्छ तप, तप भिजेको छु, भिजेको छु । \n \n"

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
