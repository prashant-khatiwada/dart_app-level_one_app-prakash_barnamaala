import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseEmergency extends StatelessWidget {

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
    title: Text('Emergency', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "Hello",
      "My name is ______",
      "May I help you",
      "Can you hear me?",
      "What's your name?",
      "Do you know where you are?",
      "Do you know what day is today?",

      "I need to take your pulse",
      "I need ot check your blood pressure",
      "I need to examine you",
      "Is that okay?",

      "What happened?",
      "Something fell on me",
      "Something cut me",
      "I was in an accident",
      "I hit my head",
      "I fell",
      "I don't remember",
      "Other _____",


      "Is it bothering you?",
      "Pain",
      "Nausea",
      "Dizziness",
      "Upset Stomach",
      "Do you know what's wrong",
      "Yes the problem is ______",
      "Have you had this problem before?",
      "Are you on medications?",
      "What are the medications?",
      "My medications are _____"
    ];

    List<String> secondaryPhrase = [
      "नमस्ते",
      "मेरो नाम ____ हो",
      "म तिमीलाई सहयोग गर्न सक्छु?",
      "तपाईँ मैले बोलेको सुनी रहनु भएको छ?",
      "तिम्रो नाम के हो?",
      "तपाईलाई थाहा छ तपाईं कहाँ हुनुहुन्छ?",
      "थाह छ ? आज कुन वार हो?",
      "तपाईंको नाडीको गति लिनुछ",
      "तपाईंको रक्तचाप जाँच गर्नुछ",
      "तपाईंलाई जाँच गर्नुछ",

      "के त्यो ठीक छ?",
      "के भयो?",
      "म माथि केही झर्यो",
      "केहिले मलाई काट्यो",
      "म दुर्घटनामा  परे",
      "आफैले टाउमा हिर्कायें",
      "म लडे",
      "मलाई सम्झना छैन",
      "अन्य _____",
      "के यसले तपाईंलाई असुविधा भयो ?",

      "दुखार्इ",
      "वाकवाकी",
      "रिंगटा",
      "पेट दुखार्इ ",
      "तपाईंलाई थाहा छ के गलत छ?",
      "हो,यो समस्या _____ हो",
      "तपाईंलाईं यो समस्या पहिला पनि थियो?",
      "तपाई कुनै औषधि खार्इ रहनु भएछ ?",
      "औषधि के हो?",
      "मेरो औषधि _____ हो"

    ];

    List<String> tertiaryPhrase = [
      "namaste",
      "mero naam ______ ho",
      "ma timilai sahayog garna sakchhu?",
      "tapai maile boleko suni rahanu bhayeko chha?",
      "timro naam k ho?",
      "tapai lai thaha chha, tapai kaha hunuhunchha?",
      "thaha chha? aaj kun baar ho?",
      "tapaiko naadi ko gati linu chha",
      "tapaiko rakta-chaap jaanch garnu chha",
      "tapai lai jaanch garnu chha",

      "ke tyo thik chha?",
      "ke bhayo?",
      "ma maathi kehi jharyo",
      "kehile malai katyo",
      "ma durghatna ma paren",
      "afaile tauko maa hirkaayen",
      "ma lad/en",
      "malai samjhana chhaina",
      "anya _____",
      "ke yesle tapailai asuwidha bhayo?",

      "dukhai/piida",
      "wak waki",
      "ringata",
      "pet dukhaai",
      "tapailai thaha chha k galat chha?",
      "ho, yo samasya ______ ho",
      "tapai lai yo samasya pahile pani thiyo?",
      "tapai kunai aushadhi khai rahanu bhaechha?",
      "aushadhi ke ho?",
      "mero aushadhi _____ ho"

    ];


    List<String> audioData = [
      'audio/phrase_emergency_01.mp3',
      "audio/phrase_emergency_02.mp3",
      "audio/phrase_emergency_03.mp3",
      "audio/phrase_emergency_04.mp3",
      "audio/phrase_emergency_05.mp3",
      "audio/phrase_emergency_06.mp3",
      "audio/phrase_emergency_07.mp3",
      "audio/phrase_emergency_08.mp3",
      "audio/phrase_emergency_09.mp3",
      "audio/phrase_emergency_10.mp3",

      "audio/phrase_emergency_11.mp3",
      "audio/phrase_emergency_12.mp3",
      "audio/phrase_emergency_13.mp3",
      "audio/phrase_emergency_14.mp3",
      "audio/phrase_emergency_15.mp3",
      "audio/phrase_emergency_16.mp3",
      "audio/phrase_emergency_17.mp3",
      "audio/phrase_emergency_18.mp3",
      "audio/phrase_emergency_19.mp3",
      "audio/phrase_emergency_20.mp3",

      "audio/phrase_emergency_21.mp3",
      "audio/phrase_emergency_22.mp3",
      "audio/phrase_emergency_23.mp3",
      "audio/phrase_emergency_24.mp3",
      "audio/phrase_emergency_25.mp3",
      "audio/phrase_emergency_26.mp3",
      "audio/phrase_emergency_27.mp3",
      "audio/phrase_emergency_28.mp3",
      "audio/phrase_emergency_29.mp3",
      "audio/phrase_emergency_30.mp3",
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
