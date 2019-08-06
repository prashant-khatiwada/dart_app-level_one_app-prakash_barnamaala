import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong09 extends StatelessWidget {

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
    title: Text("कपुरी क, खरायो ख", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "कपुरी क, खरायो ख"
    ];

    List<String> songBody = [
      "\n कपुरी क ।\n" +
          "\n" +
          "खरायो ख ।\n" +
          "\n" +
          "गगोदे ग ।\n" +
          "\n" +
          "घर जस्तो घ ।\n" +
          "\n" +
          "नाक्थोली ङ ।\n" +
          "\n" +
          "चरि चुच्चे च ।\n" +
          "\n" +
          "छात छ ।\n" +
          "\n" +
          "जग ज ।\n" +
          "\n" +
          "खुट्टा झर्यो झ ।\n" +
          "\n" +
          "गोरु सिङे ञ ।\n" +
          "\n" +
          "ओठ काट्यो ट ।\n" +
          "\n" +
          "ओठ मिलायो ठ ।\n" +
          "\n" +
          "डाङडुङे ड ।\n" +
          "\n" +
          "कुकुर पुछ्रे ढ ।\n" +
          "\n" +
          "तीन धर्के ण ।\n" +
          "\n" +
          "कोदली पाते त ।\n" +
          "\n" +
          "गोरु मुखे थ ।\n" +
          "\n" +
          "दहिले द ।\n" +
          "\n" +
          "काद्लौरी ध ।\n" +
          "\n" +
          "निहुर्मुन्टे न ।\n" +
          "\n" +
          "पती प ।\n" +
          "\n" +
          "छोरी बोक्यो फ ।\n" +
          "\n" +
          "बातुलो ब ।\n" +
          "\n" +
          "भकारी भ ।\n" +
          "\n" +
          "राम्रो म ।\n" +
          "\n" +
          "उड्यो य ।\n" +
          "\n" +
          "खाबे र ।\n" +
          "\n" +
          "हात भाच्यो ल ।\n" +
          "\n" +
          "ताल थोप्लो व ।\n" +
          "\n" +
          "मोटो थालवे श ।\n" +
          "\n" +
          "पेट फार्यो ष ।\n" +
          "\n" +
          "पातलो स ।\n" +
          "\n" +
          "दुई गोडो ह ।\n" +
          "\n" +
          "क्ष ।\n" +
          "\n" +
          "दुइा औले त्र ।\n" +
          "\n" +
          "गाठोपारी ज्ञ ।\n"

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
