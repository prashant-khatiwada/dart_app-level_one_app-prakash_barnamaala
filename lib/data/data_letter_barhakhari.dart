import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

import 'data_letter_barhakhari_detail.dart';

class LetterBarhakhari extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
              backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
              appBar: makeTopAppBar,
              body: TabBarView(children: [
                 LetterBarhakhariDetail(),
                 LetterListLesson(_buildLesson05()),
                 LetterListLesson(_buildLesson06()),
                LetterListLessonSentence(_buildLesson07()),
              ])),
        ));


  }

  // Top App Bar
  final makeTopAppBar =AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "Barhakhari",
        ),
        Tab(
          text: "Lesson Five",
        ),
        Tab(
          text: "Lesson Six",
        ),
        Tab(
          text: "Lesson Seven",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Barhakhari', style: TextStyle(color: Colors.white)),
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

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(new LetterNumberModal(
          primaryLetter: primaryLetter[i],
          primaryWord: primaryLetter[i],
          secondaryLetter: secondaryLetter[i],
          secondaryWord: secondaryLetter[i],
          imageData: Icons.home
      ),
      );
    }
    return data;
  }

  _buildLesson05() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "you", "us", "yogurt", "sugar", "water", "friend", "queen",
      "bird", "run", "parrot",
      "dog", "milk", "napkin", "butterfly", "skirt",
      "rose", "garden", "tree", "flower", "plum"
    ];

    List<String> secondaryWord = [
      "तिमी", "हामी", "दही", "चिनी", "पानी", "साथी", "रानी",
      "चरी", "दुगुर", "सुगा",
      "कुकुर", "बुबु", "रुमाल", "पुतली", "जामा",
      "गुलाफ", "फूलबारी", "रुख", "फूल", "आरु"
    ];

    List<String> tertiaryWord = [
      "timi", "haami", "dahi", "chini", "paani", "saathi", "kaali",
      "chari", "dugur", "suga",
      "kukur", "bubu", "rumal", "putali", "jama",
      "gulaaf", "fulbaari", "rukh", "flower", "aaru"
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

  _buildLesson06() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "radish", "milk", "old man", "old woman", "crowd", "dog", "lunar", "net", "game", "rickshaw",
      "keeper", "rail", "male", "field", "soldier", "pouch", "money", "meetup", "cloth"
    ];

    List<String> secondaryWord = [
      "मूला", "दूध", "बूढा", "बूढी", "हूल", "कुकुर", "जून", "झूल", "खेल", "ठेला",
      "पाले", "रेल", "भाले", "मैदान", "पैदल", "सैनिक", "थैली", "पैसा", "बैठक", "लुगा"
    ];

    List<String> tertiaryWord = [
      "mula", "dudh", "budha", "budhi", "huol", "kukur", "jun", "jhool", "khel", "thela",
      "paale", "rail", "bhale", "maidan", "paidal", "sainik", "thaili", "paisa", "baithak", "luga"
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

  _buildLesson07() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "small rabbit is lost",
      "Mohan screams car",
      "house is white in color",
      "i have a black sock",
      "garden has flower",

      "there is a crow on the roof",
      "there are fourteen bees",
      "checkpost has a bed",
      "Hari is in the race",
      "i bought a napkin",

      "pouch has money inside",
      "Thela is black in color",
      "rail is on move",
      "children are playing",
      "rose flower are red",

      "drink milk on morning",
      "night when sleeping",
      "yogurt is good",
      "small girl is knowledgeable",
      "Hari is kind"
    ];

    List<String> secondaryWord = [
      "सानो खरायो हरायो",
      "मोहन, मोटर करायो",
      "घर सेतो छ",
      "मेरो मोजा कालो हो",
      "फूलबारीमा फूल छ",

      "कौेसीमा कौवा छ",
      "चौध वटा मौरी छन",
      "चौकीमा बिछौना छ",
      "हरी दौडमा छ",
      "मैले रुमाल किने",

      "थैलीमा पैसा छ",
      "ठेला कालो छ",
      "रेल चलेको छ",
      "केटाकेटी खेलीरहेका छन",
      "गुलाफको फूल रातो छ",

      "बिहान दुध पिउनु",
      "राती सुतेको बेला",
      "दही मिठौ छ",
      "सानी नानी ज्ञानी छ",
      "हरि असल छ"
    ];

    List<String> tertiaryWord = [
      "sano kharayo harayo",
      "mohan motar karayo",
      "ghar seto chhaina",
      "mero moja kaalo ho",
      "fulbaari ma ful chha",

      "kausi ma kouwa chha",
      "chaudha wata mouri chan",
      "chauki ma bichyauna chha",
      "hari daud ma chha",
      "maile rumaal kine",

      "thaili ma paisa chha",
      "tthela kaalo chha",
      "raile chaleko chha",
      "keta keti kheli raheka chhan",
      "gulaf ko ful raato chha",

      "bihaan dudh piunu",
      "raati suteko bela",
      "dahi mittho chha",
      "saani naani gyaani chha",
      "Hari asal chha"
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

