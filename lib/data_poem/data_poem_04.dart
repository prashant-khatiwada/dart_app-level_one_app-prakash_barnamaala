import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar, body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('काल महिमा', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data =
        new List<SongPoemComprehensionModal>();

    String songTitle = " काल महिमा ";

    List<String> songBody = [
      "लेखनाथ पौड्याल\n\n",
      'भाका, भूल, दया, क्षमा र ममता, सन्तोष जान्दैन त्यो,\n',
      'इन्द्रै बिन्ति गरुन् झुकेर पदमा त्यो बिन्ति मान्दैन त्यो,\n',
      'थुप्रोमा उधिनी मिठो र नमिठो रोजेर छान्दैन त्यो,\n',
      'खाता जाँची सबै दुरुस्त नबुझी बिर्सेर हान्दैन त्यो ।१।\n\n',
      'राजा रङ्क सबै समान उसका वैषम्य गर्दैन त्यो,\n',
      'आयो टप्प टिप्यो, लग्यो, मिति पुग्यो टारेर र्टर्दैन त्यो,\n',
      'लाखौँ औषध अस्त्रशस्त्र महिमा देखेर र्डर्दैन त्यो,\n',
      'व्याधातुल्य लुकेर चल्दछ सदा मारेर मर्दैन त्यो ।२।\n\n',
      'आँसुका दहमा नुहाउँछ चिसो पानी रुचाउन्न त्यो,\n',
      'सुख्खा जर्जर अस्थिपञ्जर विना शैया बनाउन्न त्यो,\n',
      'मैलो भष्मसिवाय अङ्गभरमा केही लगाउन्न त्यो,\n',
      'हाहाकार सरी मिठो अरु कुनै संङ्गीत गाउन्न त्यो ।३।\n\n',
      'जोजो मिल्छ सुलुक्क निल्छ मुखमा हाली चपाउन्न त्यो\n',
      'थाल्यो च्वाम्म सबै चपाउन भने आहार पाउन्न त्यो,\n',
      'जत्ती मिल्छ उती उकेल्दछ पनि केही पचाउन्न त्यो,\n',
      'यै चालासित कल्पकल्प कहिल्यै खाई अघाउन्न त्यो ।४।\n\n',
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
