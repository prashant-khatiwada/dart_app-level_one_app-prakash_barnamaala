import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong06 extends StatelessWidget {

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
    title: Text('म्याउँ म्याउँ बिरालो', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "म्याउँ म्याउँ बिरालो"
    ];

    List<String> songBody = [
      "\nम्याउँ म्याउँ बिरालो, यता तिर आउ\n",
      "मेरो नाना काटी दिने, मुसा मारी खाउ।\n",
      "कराईको दुध नखाउ, म भोक्कै हुन्छु\n",
      "धुरुधुरु रुन्छु, लात्तीले हान्छु, चोर बिरालो भन्छु ॥\n"

    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: songTitle[0],
        genericBody: songBody[i]
      ),
      );
    }
    return data;
  }


}
