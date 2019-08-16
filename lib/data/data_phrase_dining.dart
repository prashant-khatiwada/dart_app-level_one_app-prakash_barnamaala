import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseDining extends StatelessWidget {

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
    title: Text('Dining', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "I am hungry",
      "Where is the restaurant?",
      "May I see the menu?",
      "I would like to order ________",
      "I would like breakfast",
      "I would like lunch",
      "I would like dinner",
      "I would like a snack",
      "I would like to pay",
      "I am thirsty",

      "I would like some water",
      "I would like some bottled water",
      "Is this potable water?",
      "I would like some tap water",
      "No ice",
      "With ice",
      "I am allergic to ________",
      "I am vegetarian",
      "I do not eat pork",
      "I do not eat buffalo/ox",

      "I do not eat _________"
    ];

    List<String> secondaryPhrase = [
      "म भोकाएको छु",
      "भोजनालय कहाँ छ?",
      "के म मेनु हेर्न सक्छु?",
      "म ______ मगाउन चाहन्छु",
      "मलाई बिहानको नाश्ता खान मन लाग्यो ",
      "मलाई दिंउसोको खाना खान मन लाग्यो ",
      "मलाई रात्रिको खाना खान मन लाग्यो ",
      "मलाई नाश्ता खान मन लाग्यो ",
      "म पैसा तिर्न चाहन्छु",
      "म तिर्खाएको छु",

      "म पानी पिउन चाहान्छु",
      "म बोतलको पानी पिउन चाहान्छु",
      "के यो पिउन योग्य पानी हो ?",
      "म धाराको पानी चाहान्छु",
      "बिना बर्फको ",
      "बर्फ सहित",
      "म _____ सित एलर्जीक छु",
      "म शाकाहारी हुँ",
      "म सुँगुरको मासु खान्न ",
      "म राॉगोको मासु खान्न ",

      "मैले _________ खाने गारेको छैन"

    ];

    List<String> tertiaryPhrase = [
      "ma bhokaeko chhu",
      "bhojanalaya kaha chha?",
      "ke ma menu herna sakchhu?",
      "ma ________ magauna chahanchhu",
      "malai bihana ko nasta khana man laagyo",
      "malai diuso ko khaanaa khana man laagyo",
      "malai ratri ko khaanaa khana man laagyo",
      "malai nasta khana man laagyo",
      "ma paisa tirna chahanchhu",
      "ma tirkha-eko chhu",

      "ma paani piun chahanchu",
      "ma bottle ko paani piuna chahanchu",
      "ke yo piuuna yogya paani ho?",
      "ma dhara ko paani chahanchhu",
      "bina baraf ko",
      "baraf sahit ko",
      "ma _______ sita allergic chhu",
      "ma shahakari hu",
      "ma sungur ko maasu khanna",
      "ma rango ko maasu khanna",

      "maile _______ khane gareko chhaina"

    ];


    for (int i = 0; i < primaryPhrase.length; i++) {
      data.add(new PhraseModal(
        position: i,
        primaryPhrase: primaryPhrase[i],
        secondaryPhrase: secondaryPhrase[i],
        tertiaryPhrase: tertiaryPhrase[i],
      ),
      );
    }
    return data;
  }


}
