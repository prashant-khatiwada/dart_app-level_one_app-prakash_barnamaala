import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong11 extends StatelessWidget {

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
    title: Text("ऊ बाबा हेर", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "ऊ बाबा हेर"
    ];

    List<String> songBody = [
      "\n" +
          "ऊ बाबा हेर, लौ जीऊ गर ।\n",
      "बाबा जाने शहर, भरे आउछ घर ।\n",
      "नराऊ नरोऊ नानी, नानीको राम्रो बानी ।\n",
      "छिनछिन गर्ने बाजा, नरोउ मेरो राजा ।\n",
      "भरे पापा खाने, खेली गरी सुत्ने ।\n"

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
