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
      "कपुरी क\n",
      "खरायो ख\n",
      "गगोदे ग\n",
      "घर जस्तो घ\n",
      "नाक्थोली ङ\n",
      "चरि चुच्चे च\n",
      "छात छ\n",
      "जग ज\n",
      "खुट्टा झर्यो झ\n",
      "गोरु सिङे ञ\n",
      "ओठ काट्यो ट\n",
      "ओठ मिलायो ठ\n",
      "डाङडुङे ड\n",
      "कुकुर पुछ्रे ढ\n",
      "तीन धर्के ण\n",
      "कोदली पाते त\n",
      "गोरु मुखे थ\n",
      "दहिले द\n",
      "काद्लौरी ध\n",
      "निहुर्मुन्टे न\n",
      "पती प\n",
      "छोरी बोक्यो फ\n",
      "बातुलो ब\n",
      "भकारी भ\n",
      "राम्रो म\n",
      "उड्यो य\n",
      "खाबे र\n",
      "हात भाच्यो ल\n",
      "ताल थोप्लो व\n",
      "मोटो थालवे श\n",
      "पेट फार्यो ष\n",
      "पातलो स\n",
      "दुई गोडो ह\n",
      "क्ष\n",
      "दुइा औले त्र\n",
      "गाठोपारी ज्ञ\n"

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
