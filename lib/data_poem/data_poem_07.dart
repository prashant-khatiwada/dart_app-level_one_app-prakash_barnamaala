import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar, body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('मेरो प्यारो ओखलढुंगा', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data =
        new List<SongPoemComprehensionModal>();

    String songTitle = "मेरो प्यारो ओखलढुंगा";

    List<String> songBody = [
      'सिद्धिचरण श्रेष्ठ\n\n',
      'तिम्रै सुन्दर हरियालीमा\n',
      'तिम्रै शीतल बक्षस्थलमा\n',
      'यो कविको शैशवकाल बित्यो\n',
      'हाँस्यो खेल्यो वन-कुन्ज घुम्यो\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
      'जब म चढेर भावको डुंगा\n',
      'सैर गर्छु स्मृतिको प्रिय गंगा\n',
      'स्वप्न गगनबाट सुशीतल जल\n',
      'सुख-स्मृतिको बर्सिन्छ रिमझिम\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
      'कुसुमाकरको आँचल पक्री\n',
      'मलाई कति खोज्दी हुन् प्रकृति\n',
      'मृग सावकहरू उफ्री-उफ्री\n',
      'अरु लतिकाहरू हल्ली-हल्ली\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
      'ती अविरल परिश्रमी पतकार\n',
      'द्रुतगामी निर्झर तुल्य चपल\n',
      'बहँदै वनवनमा चारैतिर\n',
      'खोज्दा हुन् मेरो पथको पथ\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
      'तामाकोसी त्यो सुनकोसी\n',
      'त्यो गिरी फोरी बहने रोसी\n',
      'मेरो हृदयको तिम्रो चित्र\n',
      'पारिरहन्छ हरदम पवित्र\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
      'भाग्य लहरमा लहरी लहरी\n',
      'पुगें म यस मरूस्थलमा कसरी\n',
      'तर खेद छैन तिम्रो आकृति\n',
      'लेखिएको छ यो हृदयभरि !\n',
      'मेरो प्यारो ओखलढुंगा!\n\n',
    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(
        new SongPoemComprehensionModal(
            genericTitle: songTitle, genericBody: songBody[i]),
      );
    }
    return data;
  }
}
