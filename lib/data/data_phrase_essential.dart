import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseEssential extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new PhraseList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Essential', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "Hello",
      "Goodbye",
      "Excuse me",
      "Please",
      "Thank you",
      "I do not speak Nepali",
      "I speak English",
      "I do not understand",
      "My name is ______",
      "How much does it cost?",

      "That's expensive!",
      "Is it free?",
      "I'd like to change money",
      "Where is the toilet",
      "This is an emergency",
      "Fire!"
    ];

    List<String> secondaryPhrase = [
      "हेलो ",
      "फेरी भेटौंला",
      "माफी चाहन्छु",
      "कृपया",
      "धन्यवाद!",
      "म नेपाली बोल्दिन ",
      "म अंग्रेजी बोल्छु ",
      "मैले बुझिन ",
      "मेरो नाम ____ हो ",
      "यसको कति पर्छ ?",

      "यो महंगो भयो ",
      "के यो सित्तैमा हो ? ",
      "मलाई पैसा साट्नु छ ",
      "यहाँ कतातिर चर्पी छ ? ",
      "यो आपातकालीन स्थीति हो ",
      "आगो !"

    ];

    List<String> tertiaryPhrase = [
      "helo",
      "feri bhetaula",
      "maafi chahanchu",
      "kripaya",
      "dhanyabaad!",

      "ma nepali boldina",
      "ma angreji bolchu",
      "maile bujhina",
      "mero naam _____ ho",

      "yesko kati parcha?",
      "yo mahango bhayo",
      "ke yo sittaima ho?",
      "malai paisa satnu cha",

      "yaha kata tira charpi cha?",
      "yo aapatkaalin stithi ho",
      "aago!"

    ];


    List<String> audioData = [
      'audio/phrase_essential_01.mp3',
      "audio/phrase_essential_02.mp3",
      "audio/phrase_essential_03.mp3",
      "audio/phrase_essential_04.mp3",
      "audio/phrase_essential_05.mp3",
      "audio/phrase_essential_06.mp3",
      "audio/phrase_essential_07.mp3",
      "audio/phrase_essential_08.mp3",
      "audio/phrase_essential_09.mp3",
      "audio/phrase_essential_10.mp3",

      "audio/phrase_essential_11.mp3",
      "audio/phrase_essential_12.mp3",
      "audio/phrase_essential_13.mp3",
      "audio/phrase_essential_14.mp3",
      "audio/phrase_essential_15.mp3",
      "audio/phrase_essential_16.mp3"
    ];

    for (int i = 0; i < primaryPhrase.length; i++) {
      data.add(new PhraseModal(
          position: i,
          primaryPhrase: primaryPhrase[i],
          secondaryPhrase: secondaryPhrase[i],
          tertiaryPhrase: tertiaryPhrase[i],
          audioPhrase: audioData[i]
      ),
      );
    }

    return data;
  }


}
