import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseTechnology extends StatelessWidget {

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
    title: Text('Technology', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "I need a printer",
      "I need a projector",
      "I need a _______",
      "I need to check my email",
      "Could you take a photo?",
      "Can you change it to the English setting",

      "What is your phone number",
      "I would like to buy a SIM card",
      "I would like to buy a prepaid phone",
      "I need to make a telephone call",
      "What are the rates?",

      "Is there Wi-Fi?",
      "What is the Wi-Fi password?",
      "The Wi-Fi isn't working",

      "I need an adapter",
      "I need to change my laptop",
      "I need to charge my phone",

      "I need to check my email",
      "What is your email address?",
      "Can you email it to me?",

      "Can you text it to me?",
      "Can you text me your contact information?",

      "I lost my laptop",
      "I lost my phone"
    ];

    List<String> secondaryPhrase = [
      "मलाई प्रिन्टर चाहियो",
      "मलाई प्रोजेक्टर चाहियो",
      "मलाई एउटा ________ चाहियो",
      "मलाई ईमेल जाँच गर्नुछ",
      "तपाईं फोटो खिच्न सक्नु हुन्छ ?",
      "के तपाईं यसलाई अंग्रेजीमा सेटिंगमा परिवर्तन गर्न सक्नुहुन्छ?",
      "तिम्रो फोन नम्बर कति हो?",
      "म सिमकार्ड किन्न चाहन्छु",
      "म एउटा प्रिपेड फोन किन्न चाहन्छु",
      "मलाई एउटा टेलिफोन कल गर्नुछ",

      "दरहरू के हो?",
      "के Wi-Fi छ?",
      "Wi-Fi पासवर्ड के हो?",
      "Wi-Fi काम गरिरहेको छैन",
      "मलाई एडाप्टर चाहियो",
      "मलाई ल्यापटप चार्ज गर्नुछ",
      "मलाई फोन चार्ज गर्नुछ",
      "मलाई ईमेल जाँच गर्नुछ",
      "तिम्रो इमेल ठेगाना के हो ?",
      "के तपाईं मलाई यो ईमेल गर्न सक्नुहुन्छ ?",

      "के तपाईं मलाई यो SMS गर्न सक्नुहुन्छ?",
      "तपाईं मलाई आफ्नो सम्पर्क जानकारी पठाई दिनुस्",
      "मेरो ल्यापटप हरायो",
      "मेरो फोन हरायो "

    ];

    List<String> tertiaryPhrase = [

      "malai printer chahiyo",
      "malai projector chahiyo",
      "malai euta _____ chahiyo",
      "malai email jaanch garnu chha",
      "tapai photo khichna saknu hunchha?",
      "ke tapai yeslai angreji setting ma pariwartan garna saknu hunchha?",
      "timro phone number kati ho",
      "ma simcard kinna chahanchhu",
      "ma euta prepaid phone kinna chahanchhu",
      "malai euta telephone call garnu chha",

      "darr haru ke ho?",
      "ke Wi-Fi chha?",
      "Wi-Fi password ke ho",
      "Wi-Fi kaam gari raheko chhaina",
      "malai adapter chahiyo",
      "malai laptop charge garnu chha",
      "malai phone charge garnu chha",
      "malai email jaanch garnu chha",
      "timro email thegana ke ho?",
      "ke tapai malai yo email garna saknuhuncha?",

      "ke tapai malai yo SMS garna saknuhuncha?",
      "tapai malai aafno samparka jankaari pathai dinus?",
      "mero laptop harayo",
      "mero phone harayo"
    ];


    List<String> audioData = [
      'audio/phrase_technology_01.mp3',
      "audio/phrase_technology_02.mp3",
      "audio/phrase_technology_03.mp3",
      "audio/phrase_technology_04.mp3",
      "audio/phrase_technology_05.mp3",
      "audio/phrase_technology_06.mp3",
      "audio/phrase_technology_07.mp3",
      "audio/phrase_technology_08.mp3",
      "audio/phrase_technology_09.mp3",
      "audio/phrase_technology_10.mp3",

      "audio/phrase_technology_11.mp3",
      "audio/phrase_technology_12.mp3",
      "audio/phrase_technology_13.mp3",
      "audio/phrase_technology_14.mp3",
      "audio/phrase_technology_15.mp3",
      "audio/phrase_technology_16.mp3",
      "audio/phrase_technology_17.mp3",
      "audio/phrase_technology_18.mp3",
      "audio/phrase_technology_19.mp3",
      "audio/phrase_technology_20.mp3",

      "audio/phrase_technology_21.mp3",
      "audio/phrase_technology_22.mp3",
      "audio/phrase_technology_23.mp3",
      "audio/phrase_technology_24.mp3"
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
