import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem01 extends StatelessWidget {

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

    String songTitle = " घाँसी ";


    List<String> songBody = [
      "भानुभक्त आचार्य\n\n",
      "भर् जन्म घाँस तिर मन् दिई धन कमायो\n",
          "नाम क्यै रहोस् पछि भनेर कुवा खनायो\n",
          "घाँसी दरिद्र घरको तर बुद्धि कस्तो\n",
          "म भानुभक्त धनी भैकन किन यस्तो\n",

      "मेरा ईनार न त सत्तल पाटिकै छन्\n",
          "जे धन चीजहरु छन् घर भित्रनै छन्\n",
          "त्यस घाँसीले कसरी आज दिए छ अर्ति\n",
          "धिक्कार हो म कन बस्नु न राखि किर्ति\n \n",

    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: songTitle,
          genericBody: songBody[i]
      ),
      );
    }
    return data;
  }



}
