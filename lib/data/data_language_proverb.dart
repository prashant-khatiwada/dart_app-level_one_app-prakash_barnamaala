import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class Proverb extends StatelessWidget {


  _buildList() {
    List<LanguageModal> data = new List<LanguageModal>();

    List<String> primaryLetter = [
      "आंखा खुल्नु",
      "आंखाको कसिंङगर हुनु",
      "आंखाको विष मार्नु",
      "आंखा खानु",
      "आंखा छल्नु",
      "आंखा जुध्नु",
      "आंखा तर्नु",
      "आंखा गाडनु",
      "कानमा तेल हाल्नु",
      "कान थाप्नु",
      "कान खानु",
      "कान फुक्नु",
      "नाक काटनु",
      "नाक खुम्च्याउनु",
      "नाक जोगाउनु",
      "आलु खानु",
      "गोता खानु",
      "घर खानु",
      "मन चोर्नु",
      "मन फाटनु",
      "मन जित्नु",
      "मन तान्नु",
      "मन फुकाउनु",
      "कम्मर कस्नु",
      "माटो खानु",
      "आंत सुक्नु",
      "आफ्नो खुट्टामा उभिनु",
      "कांध हाल्नु",
      "कुरा मिलाउनु",
      "कुलेलम ठोक्नु",
      "गांस टिप्नु",
      "चिल्लो घस्नु",
      "चिसो पस्नु",
      "जरो उखेल्नु",
      "टाउकामा टेक्नु",
      "मुख छाडनु",
      "मुख लुकाउनु",
      "नेटो काटनु",
      "हावा खानु",
      "डांडो काट्नु",
      "टुप्पी कस्नु",
      "श्री गणेश गर्नु",
      "फत्ते गर्नु",
      "झारा टार्नु",
      "वचन दिनु",
      "काकताली पर्नु",
      "खसखस लाग्नु",
      "घैंटामा घाम लाग्नु",
      "धोती र टोपी हुनु",
      "सातो उडाउनु"
    ];

    List<String> secondaryLetter = [
      "सचेत हुनु",
      "शत्रु हुनु",
      "निदाउनु",
      "आंखा तिरमिर पार्नु",
      "झुक्याउनु",
      "प्रत्यक्ष देखादेख हुनु",
      "रिसाएर हेर्नु",
      "लोभ देखाउनु",
      "वास्ता नगर्नु",
      "ध्यान दिनु",
      "हैरान पार्नु",
      "कुरा लगाउनु",
      "इज्जत फाल्नु",
      "असन्तोष व्यक्त गर्नु",
      "इज्जत बचाउनु",
      "असफल हुनु",
      "हण्डर खानु",
      "गृहस्थी सम्हाल्नु",
      "भावना बुझनु",
      "बेमेल हुनु",
      "प्रभाव पार्नु",
      "आकर्षित गर्नु",
      "दिल खोल्नु",
      "आंट गर्नु",
      "मर्नु",
      "प्यास लाग्नु",
      "आत्मनिर्भर हुनु",
      "सहयोग गर्नु",
      "चुक्ली लाउनु",
      "भाग्नु",
      "खानु",
      "चाकडी गर्नु",
      "संका लाग्नु",
      "नष्ट गर्नु",
      "हेप्नु",
      "गाली गर्नु",
      "लाज लाग्नु",
      "भाग्नु",
      "विफल हुनु",
      "सीमा नाघ्नु",
      "परिश्रम गर्नु",
      "सुरु गर्नु",
      "सक्नु",
      "काम गरे जस्तो गर्नु",
      "स्वीकृत दिनु",
      "संयोग मिल्नु",
      "जिज्ञासा बढनु",
      "कुरो बुझनु",
      "केही कुरा बांकी रहनु",
      "तर्साउनु"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(new LanguageModal(
          primaryLetter: primaryLetter[i],
          secondaryLetter: secondaryLetter[i]));
    }
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Proverb', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new LanguageList(_buildList()));
  }
}
