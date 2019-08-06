import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong14 extends StatelessWidget {

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
    title: Text("मेरो गाउँ ज्यामिरे", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "मेरो गाउँ ज्यामिरे", "", ""
    ];

    List<String> songBody = [
      "\nमेरो गाउँ ज्यामिरे, जमुनीको छोरो म,\n" +
          "काले भन्छन् मलाई, तर मान्छे गोरो म।\n" +
          "\n" +
          "सबै पढ्न गएछन्, जान्ने सुन्ने भएछन्,\n" +
          "म त अझै गोठमा, छैन हाँसो ओठमा।\n" +
          "\n" +
          "किन किन मन यो, दुखे दुखे जस्तो छ,\n" +
          "यो ज्यामिरे गाउँमा, कुरो मात्र सस्तो छ।\n",

      "सबै भन्छन् मलाई, स्कुल किन नगा'को,\n" +
          "कसैले नि बुझेनन्, कापी कलम नभा'को।",

      "मेरो सानो गोठ नै, मेरो सानो स्कुल,\n" +
          "गोबरको अक्षर, पढ्न लेख्न मुस्किल।"

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
