import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

import 'data_letter_barhakhari_detail.dart';

class LetterBarhakhari extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: makeTopAppBar,
              body: TabBarView(children: [
                 LetterBarhakhariDetail(),
                 LetterListLesson(_buildLesson05()),
                 LetterListLesson(_buildLesson06()),
                LetterListLessonSentence(_buildLesson07()),
              ])),
    );


  }

  // Top App Bar
  final makeTopAppBar =AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Barhakhari",
        ),
        Tab(
          text: "Five",
        ),
        Tab(
          text: "Six",
        ),
        Tab(
          text: "Seven",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Barhakhari', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );



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

    List<String> audioData = [
      "audio/lesson_5_01.mp3",
      "audio/lesson_5_02.mp3",
      "audio/lesson_5_03.mp3",
      "audio/lesson_5_04.mp3",
      "audio/lesson_5_05.mp3",
      "audio/lesson_5_06.mp3",
      "audio/lesson_5_07.mp3",
      "audio/lesson_5_08.mp3",
      "audio/lesson_5_09.mp3",
      "audio/lesson_5_10.mp3",
      "audio/lesson_5_11.mp3",
      "audio/lesson_5_12.mp3",
      "audio/lesson_5_13.mp3",
      "audio/lesson_5_14.mp3",
      "audio/lesson_5_15.mp3",
      "audio/lesson_5_16.mp3",
      "audio/lesson_5_17.mp3",
      "audio/lesson_5_18.mp3",
      "audio/lesson_5_19.mp3",
      "audio/lesson_5_50.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            audioData: audioData[i]),
      );
    }
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
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

    List<String> audioData = [
      "audio/lesson_6_01.mp3",
      "audio/lesson_6_02.mp3",
      "audio/lesson_6_03.mp3",
      "audio/lesson_6_04.mp3",
      "audio/lesson_6_05.mp3",
      "audio/lesson_6_06.mp3",
      "audio/lesson_6_07.mp3",
      "audio/lesson_6_08.mp3",
      "audio/lesson_6_09.mp3",
      "audio/lesson_6_10.mp3",
      "audio/lesson_6_11.mp3",
      "audio/lesson_6_12.mp3",
      "audio/lesson_6_13.mp3",
      "audio/lesson_6_14.mp3",
      "audio/lesson_6_15.mp3",
      "audio/lesson_6_16.mp3",
      "audio/lesson_6_17.mp3",
      "audio/lesson_6_18.mp3",
      "audio/lesson_6_19.mp3",
      "audio/lesson_6_60.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            audioData: audioData[i]),
      );
    }
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
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

    List<String> audioData = [
      "audio/lesson_7_01.mp3",
      "audio/lesson_7_02.mp3",
      "audio/lesson_7_03.mp3",
      "audio/lesson_7_04.mp3",
      "audio/lesson_7_05.mp3",
      "audio/lesson_7_06.mp3",
      "audio/lesson_7_07.mp3",
      "audio/lesson_7_08.mp3",
      "audio/lesson_7_09.mp3",
      "audio/lesson_7_10.mp3",
      "audio/lesson_7_11.mp3",
      "audio/lesson_7_12.mp3",
      "audio/lesson_7_13.mp3",
      "audio/lesson_7_14.mp3",
      "audio/lesson_7_15.mp3",
      "audio/lesson_7_16.mp3",
      "audio/lesson_7_17.mp3",
      "audio/lesson_7_18.mp3",
      "audio/lesson_7_19.mp3",
      "audio/lesson_7_70.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            audioData: audioData[i]),
      );
    }
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
  }

}

