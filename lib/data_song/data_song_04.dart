import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong04 extends StatelessWidget {

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
    title: Text('दगुर दगुर कुइरा', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "दगुर कुइरा", ""
    ];

    List<String> songBody = [
      "\nदगुर दगुर कुइरा, दगुर \n" +
          "तेरो घरमा चोर पस्यो \n" +
          "\n" +
          "सातु - सामल बुकायो \n" +
          "मानो - पिठो लुकायो \n" +
          "बुढी - भैसी लडायो\n" +
          "थोत्रे - नान्ग्लो ठटायो\n" +
          "थाल - बटुका बजायो \n" +
          "लुगा - कपडा उडायो\n",

      "तेरो घरमा चोर पस्यो \n" +
          "दगुर कुइर, दगुर \n \n "

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
