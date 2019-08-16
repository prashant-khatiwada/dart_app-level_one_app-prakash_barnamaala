import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem02 extends StatelessWidget {

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
    title: Text('नाटिप्नु हेर कोपिला', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    String songTitle = " नाटिप्नु हेर कोपिला ";

    List<String> songBody = [
      "लक्ष्मी प्रसाद देवकोटा\n\n",
      "नटिप्नु हेर कोपिला\n",
    "नचुँड्नु पाप लाग्दछ\n",
    "नच्यात्नु फुल नानी हो\n",
    "दया र धर्म भाग्दछ\n\n",

    "नछोप्नु है चरी बरी\n",
    "सराप आँसु लाग्दछ\n",
    "नमार्नु जन्तु है कुनै\n",
    "बसेर काल जाग्दछ\n\n",

    "न घाउ चोट लाउनू\n",
    "सडेर चित्त पाक्दछ\n",
    "धुलो नफेक्नु नानी हो\n",
    "उडेर भित्र ढाक्दछ\n\n",

    "हिलो नखेल्नु फोहरी\n",
    "खराब दाग लाग्दछ\n",
    "न चित्त है दुखाउनु\n",
    "डसेर आँसु बग्दछ\n\n",

    "बनेर फुलझैँ सधैँ\n",
    "हँसाउनू सुवास दी\n",
    "सधैँ रमाउनू जगत्\n",
    "रमेर नित्य आस दी\n",

    "जताततै छ ईश रे\n",
    "छ सुन्नु त्यो विचार रे\n",
    "छकाउने लुकाउने\n",
    "नराख भाव क्यै गरे\n\n",



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
