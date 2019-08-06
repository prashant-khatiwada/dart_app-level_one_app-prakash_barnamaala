import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseLodging extends StatelessWidget {

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
    title: Text('Lodging', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "I would like to make a reservation",
      "I would  like a room",
      "I would like ____ rooms",
      "There are _______ people",
      "How much is the room",
      "Is it air conditioned?",
      "Is there a restaurant?",
      "Is there the room service?",
      "I need to change my reservation",
      "Do you have a vacancy?",

      "No vacancy",
      "Is breakfast included?",
      "I have a reservation",
      "My room needs to be cleaned",
      "I would like to pay my bill"
    ];

    List<String> secondaryPhrase = [

      "मलाई रिर्जवभेसन गराउनु छ ",
      "मलार्इ एउटा कोठा चाहियो ",
      "म ____ कोठा चाहन्छु",
      "त्यहाँ ________ व्यक्तिहरू छन्",
      "कोठाको कति पर्छ ?",
      "के यो वातानुकूलित हो ?",
      "के यहाँ भोजनालय छ ?",
      "के यहाँ कोठाको व्यवस्थापन सेवा पार्इन्छ ?",
      "मलाई आरक्षण परिवर्तन गर्नु छ ",
      "कुनै खाली स्थान छ?",

      "कुनै खाली छैन",
      "के नाश्ता पनि पार्इन्छ ?",
      "मेरो रिजर्भेसन छ",
      "मेरो कोठा सफा गर्न आवश्यक छ",
      "मेरो बिल आफै तिर्न चाहन्छु"
    ];

    List<String> tertiaryPhrase = [
      "malai namankan/reservation garaunu chha",
      "malai euta kothha chahiyo",
      "ma ______ kotha chahanchu",
      "tyaha _________ byakti haru chhan",
      "kotha ko kati parcha?",

      "ke yo kotha watanukulit ho?",
      "ke yahan bhojanalaya chha?",
      "ke yaha kothha ko wyawasthapan sewa painchha?",
      "malai aarachhan pariwartan garnu chha",
      "kunai khaali sthhan chha?",

      "kunai khhaali chhaina",
      "ke nasta pani painchha?",
      "mero reservation chha",
      "mērō kōṭhā saphā garna āvaśyak cha",
      "mero bill aafai tirna chahanchhu"

    ];


    for (int i = 0; i < primaryPhrase.length; i++) {
      data.add(new PhraseModal(
        primaryPhrase: primaryPhrase[i],
        secondaryPhrase: secondaryPhrase[i],
        tertiaryPhrase: tertiaryPhrase[i],
      ),
      );
    }
    return data;
  }


}
