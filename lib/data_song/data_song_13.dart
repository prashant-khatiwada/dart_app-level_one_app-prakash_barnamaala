import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong13 extends StatelessWidget {

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
    title: Text("राम्रा कुरा", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "राम्रा कुरा"
    ];

    List<String> songBody = [
      "\nरात राम्रो जूनले\n" +
          "मान्छे राम्रो गुनले \n" +
          "भेडो रेम्रो ऊनले \n" +
          "घर राम्रो चूनले \n" +
          "\n" +
          "कुरा सुन्ने कानले \n" +
          "नाना किन्ने दामले \n" +
          "पेट भर्छ मामले\n" +
          "तातो हुन्छ घामले \n"

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
