import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseHealth extends StatelessWidget {

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
    title: Text('Health', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "I am sick",
      "This is an emergency",
      "I need a doctor",
      "I need a dentist",
      "I need to go to the hospital",
      "I need to go to the pharmacy",
      "I am pregnant",
      "I have a fever",
      "I have a headache",
      "I have a sore throat",

      "I have a cold",
      "I have the flu",
      "I have a pain in my chest",

      "I have diarrhea",
      "I have allergies",
      "I am allergic to _______",
      "I have asthma",
      "My blood type is _______"
    ];

    List<String> secondaryPhrase = [
      "म बिरामी छु",
      "यो आपातकालीन स्थिति हो",
      "मलाई चिकित्सक चाहियो",
      "मलाई दन्त चिकित्सक चाहियो",
      "मलाई अस्पताल जानुछ",
      "मलाई फार्मेसी जानुछ",
      "म गर्भवती छु",
      "मलाई ज्बरो आएको छ ",
      "मेरो टाउको दुखेको छ",
      "मेरो घाटी बसेको छ",

      "मलाई रुघा लागेको छ",
      "मलाई फ्लू छ",
      "मेरो छाती दुखेको छ",
      "मलाई छेरपट्टी लागेको छ",
      "मलाई एलर्जी छ",
      "म _____ सित एलर्जीक छु",
      "म दमको बिरामी हुं ",
      "मेरो रगतको प्रकार _____ हो"

    ];

    List<String> tertiaryPhrase = [
      "ma birami chhu",
      "yo aapatkaalin stithi ho",
      "malai chikit-sak chahiyo",
      "malai danta chikitsak chahiyo",
      "malai aspataal jaanu chha",
      "malai pharmacy jaanu chha",
      "ma garvabati chu",
      "malai jwaro aaeko chha",
      "mero tauko dukheko chha",
      "mero ghaati baseko chha",

      "malai rugha laageko chha",
      "malai flu cha",
      "mero chhaati dukheko chha",
      "malai cher-patti lageko chha",
      "malai allergy chha",
      "ma _______sita allergy chhu",
      "ma dam ko birami ho",
      "mero ragatko prakar ____ ho"

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
