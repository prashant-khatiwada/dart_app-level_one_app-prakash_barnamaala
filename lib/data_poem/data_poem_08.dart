import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar, body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('गाउँछ गीत नेपाली', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data =
        new List<SongPoemComprehensionModal>();

    String songTitle = "गाउँछ गीत नेपाली";

    List<String> songBody = [
      "माधबप्रसाद घिमिरे\n\n",
      'गाउँछ गीत नेपाली ज्योतिको पंख उचाली\n',
      'जय जय जय नेपाल सुन्दर शान्त नेपाल\n\n',
      'गण्डकी कोशी कर्णाली मेची र महाकाली\n',
      'लेक र बेंसी ब्युँझाउँछन् लहर लाख उचाली\n',
      'हिमालचुली बोलाउँछ पहिलो झुल्का निकाली\n',
      'सगरमाथा शिखरमा पुग्दछ पहिले नेपाली\n\n',
      'सीताले सारा भिजाइन दक्षिण लंका भारत\n',
      'भृकुटी तारा उदाइन उत्तर चीन तिब्बत\n',
      'बुद्धले यहीं पाएथे ज्ञानको पहिलो मुहान\n',
      'शिबले यहीं ल्याएथे सृष्टिको पहिलो बिहान\n\n',
      'पश्चिम किल्ला काँगडा पूर्वमा टिष्टा पुगेथ्यौं\n',
      'कुन शक्तिको सामुमा कहिले हामी झुकेथ्यौं\n',
      'हामीले हिमाल उठायौं एशियाको माझमा\n',
      'सभ्यता बास बसेथ्यो आएर यहीं साँझमा\n\n',
      'यही नेपाली माटोमा दिलको फूल रोपेर\n',
      'यही पहाडी शिलामा पृतको गीत खोपेर\n',
      'बाँचौला हामी नेपालमा चन्द्र र सूर्य ध्वाजा लिई\n',
      'नाँचौंला हामी हिमालमा ज्योतिको पंख उचाली\n\n',
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
