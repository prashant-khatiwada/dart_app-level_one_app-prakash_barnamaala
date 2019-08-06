import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong01 extends StatelessWidget {

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
    title: Text('घाँसी', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "सयौं थुँगा फूलका", "", "", "", "", ""
    ];

    List<String> songBody = [
      "",
      "\nसयौं थुँगा फूलका हामी, एउटै माला नेपाली\n" +
          "सार्वभौम भै फैलिएका, मेची-महाकाली।(२)\n",

      "प्रकृतिका कोटी-कोटी सम्पदाको आंचल\n" +
          "वीरहरूका रगतले, स्वतन्त्र र अटल।\n",

      "ज्ञानभूमि, शान्तिभूमि तराई, पहाड, हिमाल\n" +
          "अखण्ड यो प्यारो हाम्रो मातृभूमि नेपाल।\n",

      "बहुल जाति, भाषा, धर्म, संस्कृति छन् विशाल\n" +
          "अग्रगामी राष्ट्र हाम्रो, जय जय नेपाल। \n",
      "- ब्याकुल माइला"

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
