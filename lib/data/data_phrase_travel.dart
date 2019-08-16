import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseTravel extends StatelessWidget {

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
    title: Text('Travel', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "Where is the airport?",
      "Where is the train station?",
      "Where is the bus station?",
      "Where is the ________?",
      "Where can I buy a ticket?",
      "How much is a ticket?",
      "I would like a ticket",
      "I would like to change my ticket",
      "Is it direct",
      "When does it leave?",

      "When does it arrive?",
      "When is the next _______?",
      "When is the last _______?",
      "Where is the taxi stand?",
      "Please call a taxi for me",
      "How much will it cost",
      "Which gate?",
      "Where is the gate?",
      "Here is my passport",
      "Do I need a visa?",

      "I have nothing to declare",
      "I have something to declare",
      "Right",
      "Left",
      "Straight ahead",
      "What is the best way to ______?",
      "Uphill",
      "Downhill",
      "Traffic Light",
      "Stop Sign"
    ];

    List<String> secondaryPhrase = [
      "विमानस्थल कता छ ?",
      "रेलगाडी स्टेसन कता छ ?",
      "बस स्टेसन कता छ ?",
      "_______ कता छ ?",
      "मेरोलागि एउटा टिकट किन्नु छ ?",
      "टिकटको कति हो ?",
      "म टिकट किन्न चाहान्छु ",
      "म टिकट परिवर्तन गर्न चाहन्छु?",
      "के यो सीधा जान्छ?",
      "यो कहिले हिड्छ ?",

      "त्यो कहिले आउँछ ?",
      "अर्को  _______ कहिले हुन्छ?",
      "अन्तिम ________ कहिले हो?",
      "टैक्सी बिसौनी कता छ?",
      "कृपया मेरोलागि ट्याक्सीलाई फोन गरी दिनुहोस्",
      "यसको कति खर्च लाग्छ? ",
      "कुन ढोका ?",
      "गेट कहाँ छ ?",
      "यो मेरो पासपोर्ट हो ",
      "के मलाई भिसा चाहिन्छ ?",

      "मैले घोषणा गर्नुपर्ने केहि छैन",
      "मलाई घोषणा गर्नु छ",
      "दाँया",
      "बाँया",
      "सिधै अगाडि",
      "________जाने सबैभन्दा राम्रो तरिका के हो?",
      "उकाली",
      "ओराली",
      "ट्राफिक लाइट",
      "रोकिने संकेत"

    ];

    List<String> tertiaryPhrase = [
      "bimaan-sthal kata chha?",
      "rel gaadi station kata chha?",
      "bus station kata chha?",
      "________ kata chha?",
      "mero laagi euta ticket kinnu chha?",
      "ticket ko kati ho?",
      "ma ticket kinna chahanchhu",
      "ma ticket pariwartan garna chhahanchu",
      "ke yo sidhha janchha?",
      "yo kahile hindchha?",

      "tyo kahile aauncha?",
      "arko _______ kahile hunchha?",
      "antim _______kahile ho?",
      "taxi bisauni kata chha?",
      "kripaya mero laagi taxilai phone gari dinuhos",
      "yesko kati kharcha lagchha?",
      "kun dhoka?",
      "gate kaha chha?",
      "yo mero passport ho",
      "k malai visa chahinchha?",

      "maile ghosana garnu parne kehi chhaina",
      "malai ghoshana garnu chha",
      "daya",
      "baya",
      "sidhha agadi",
      "______ jaane sabai bhanda ramro tarika ke ho?",
      "ukaali",
      "aoraali",
      "traffic batti",
      "rokine sanket"

    ];

    List<String> audioData = [
      'audio/phrase_travel_01.mp3',
      "audio/phrase_travel_02.mp3",
      "audio/phrase_travel_03.mp3",
      "audio/phrase_travel_04.mp3",
      "audio/phrase_travel_05.mp3",
      "audio/phrase_travel_06.mp3",
      "audio/phrase_travel_07.mp3",
      "audio/phrase_travel_08.mp3",
      "audio/phrase_travel_09.mp3",
      "audio/phrase_travel_10.mp3",

      "audio/phrase_travel_11.mp3",
      "audio/phrase_travel_12.mp3",
      "audio/phrase_travel_13.mp3",
      "audio/phrase_travel_14.mp3",
      "audio/phrase_travel_15.mp3",
      "audio/phrase_travel_16.mp3",
      "audio/phrase_travel_17.mp3",
      "audio/phrase_travel_18.mp3",
      "audio/phrase_travel_19.mp3",
      "audio/phrase_travel_20.mp3",

      "audio/phrase_travel_21.mp3",
      "audio/phrase_travel_22.mp3",
      "audio/phrase_travel_23.mp3",
      "audio/phrase_travel_24.mp3",
      "audio/phrase_travel_25.mp3",
      "audio/phrase_travel_26.mp3",
      "audio/phrase_travel_27.mp3",
      "audio/phrase_travel_28.mp3",
      "audio/phrase_travel_29.mp3",
      "audio/phrase_travel_30.mp3"
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
