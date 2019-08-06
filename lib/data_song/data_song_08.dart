import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong08 extends StatelessWidget {

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
    title: Text("मै छोरी सुंदरी", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "मै छोरी सुंदरी", "", ""
    ];

    List<String> songBody = [
      "\nमै छोरी सुंदरी कसरी भरूम पानी\n" +
          "\n" +
          "बसी बसी भरूम भंदा घइला भंदा सयानी\n" +
          "\n" +
          "ऊठी ऊठी भरूम भंदा कमर दुखने बानी\n" +
          "\n" +
          "मै छोरी सुंदरी कसरी भरूम पानी\n",


      "बसी बसी भरूम भंदा घइला भंदा सयानी\n" +
          "\n" +
          "ऊठी ऊठी भरूम भंदा कमर दुखने बानी\n" +
          "\n" +
          "मै छोरी सुंदरी कसरी भरूम पानी\n\n",


      "बाराय माना तिथे को घुमेर जादय रोटी\n" +
          "\n" +
          "मै छोरी सुंदरी मेरै दाना होकी\n" +
          "\n" +
          "घुमेर जादय रोटी मेरै दाना होकी\n" +
          "\n" +
          "मै छोरी सुंदरी कसरी भरूम पानी\n" +
          "\n" +
          "बसी बसी भरूम भंदा घइला भंदा सयानी\n" +
          "\n" +
          "ऊठी ऊठी भरूम भंदा कमर दुखने भानी\n" +
          "\n" +
          "घइला भंदा सयानी\n" +
          "\n" +
          "मै छोरी सुंदरी कसरी भरूम पानी। \n \n"

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
