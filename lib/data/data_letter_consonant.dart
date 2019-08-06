import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterConsonant extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
              appBar: makeTopAppBar,
              body: TabBarView(children: [
                new LetterListListen(_buildList()),
                new LetterListRead(_buildList()),
                new LetterListLesson(_buildLesson03()),
                new LetterListLesson(_buildLesson04()),
              ])),
        ));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "Audio",
        ),
        Tab(
          text: "Read",
        ),
        Tab(
          text: "Lesson Three",
        ),
        Tab(
          text: "Lesson Four",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Consonants', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "ka", "kha", "ga", "gha", "nga", "cha", "chha", "ja", "jha", "yna",
      "ta", "tha", "da", "dha", "na", "ta", "tha", "da", "dha", "na",
      "pa", "pha", "ba", "bha", "ma", "ya", "ra", "la", "wa", "sa",
      "khha", "sha", "ha", "chya", "tra", "gya"
    ];

    List<String> secondaryLetter = [
      "क", "ख", "ग", "घ", "ङ", "च", "छ", "ज", "झ", "ञ",
      "ट", "ठ", "ड", "ढ", "ण", "त", "थ", "द", "ध", "न",
      "प", "फ", "ब", "भ", "म", "य", "र", "ल", "व", "श",
      "ष", "स", "ह", "क्ष", "त्र", "ज्ञ"
    ];

    List<String> primaryWord = [

      "kachuwa", "kharayo", "gai", "ghadi", "nang", "chara", "chhata", "jutta", "jhanda", "singh",
      "tamatar", "thhappa", "dabba", "dhakkan", "baan", "taraju", "thaaal", "daraj", "dhhanush", "nariwal",
      "pankha", "farsi", "bakhro", "bhhakundo", "majur", "yog", "raajkumari", "lasun", "wakil", "shanka",
      "shatkon", "saap", "harin", "chhyatriya", "trishul", "gyan"

    ];

    List<String> secondaryWord = [
      "कछुवा", "खरायो", "गाइ", "घडी", "नङ",
      "चरा", "छाता", "जुत्ता", "झन्डा", "सिञ",

      "टमाटर", "ठप्पा", "डब्बा", "ढक्कन", "बाण",
      "तराजु", "थाल", "दराज", "धनुष", "नरिवल",

      "पंखा", "फर्सी", "बाख्रो", "भकुण्डो", "मजुर",
      "योग", "रथ", "लसुन", "वकिल", "शंक",

      "षटकोण", "साँप", "हरिण", "क्षत्रिय", "त्रिशुल",
      "ज्ञान"

    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(new LetterNumberModal(
          primaryLetter: primaryLetter[i],
          primaryWord: primaryWord[i],
          secondaryLetter: secondaryLetter[i],
          secondaryWord: secondaryWord[i],
          imageData: Icons.home
      ),
      );
    }
    return data;
  }

  _buildLesson03() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "scent", "fidgety", "king", "instrument", "baby food", "baby clothes", "daily food", "necklace", "paternal uncle", "maternal uncle",
      "mother", "storm", "maadal", "pomegranate", "book", "ant", "insect", "butter", "black pepper", "cumin"
    ];

    List<String> secondaryWord = [
      "मगमग", "चकचक", "राजा", "बाजा", "पापा", "नाना", "खाजा", "माला", "काका", "मामा",
      "आमा", "बतास", "मादल", "अनार", "किताब", "कमिला", "किरा", "घिउ", "मरिच", "जिरा"
    ];

    List<String> tertiaryWord = [
      "mug mug", "chak chak", "raja", "baja", "papa", "nana", "khaja", "maala", "kaka", "mama",
      "aama", "batas", "madal", "anaar", "kitab", "kamila", "kira", "ghiu", "marich", "jeera"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildLesson04() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "cup", "top", "rubber", "lotus",
      "flower pot",
      "pen", "house", "canal", "city", "commotion",
      "morning", "glass", "tea", "regret", "sitar", "pillow", "big sister", "small sister", "baby girl", "small girl"
    ];

    List<String> secondaryWord = [
      "कप", "टप", "रबर", "कमल",
      "गमला",
      "कलम", "घर", "नहर", "सहर", "खलबल",
      "बिहान", "गिलास", "चिया", "चुक्चुकी", "सितार", "तकिया", "दिदी", "बहिनी", "नानी", "सानी"
    ];

    List<String> tertiaryWord = [
      "cup", "top", "rubber", "kamal",
      "gamala",
      "kalam", "ghar", "nahar", "sahar", "khal bal",
      "bihan", "glass", "chiya", "chukchuki", "sitar", "takiya", "didi", "bahini", "naani", "saani"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

}
