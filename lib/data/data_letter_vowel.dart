import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterVowel extends StatelessWidget {


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
            new LetterListLesson(_buildLesson01()),
            new LetterListLesson(_buildLesson02()),
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
          text: "Lesson One",
        ),
        Tab(
          text: "Lesson Two",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Vowels', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "au",
      "aa",
      "e",
      "ei",
      "oo",
      "ou",
      "wri",
      "ea",
      "eai",
      "ao",
      "aou",
      "am",
      "amh"
    ];

    List<String> secondaryLetter = [
      "अ",
      "आ",
      "इ",
      "ई",
      "उ",
      "ऊ",
      "ऋ",
      "ए",
      "ऐ",
      "अाे",
      "अाै",
      "अं",
      "अ:"
    ];

    List<String> primaryWord = [
      "anaar",
      "aap",
      "inaar",
      "eshwar",
      "unt",
      "oon",
      "wrishi",
      "yekka",
      "aina",
      "aokhar",
      "aushadhi",
      "angoor",
      "amha"
    ];

    List<String> secondaryWord = [
      "अनार",
      "आंप",
      "इनार",
      "ईष्वर",
      "उट",
      "ऊन",
      "ऋषि",
      "एक्का",
      "ऐना",
      "अाेखर",
      "अाैषधी",
      "अंगुर",
      "अ"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(
        new LetterNumberModal(
            primaryLetter: primaryLetter[i],
            primaryWord: primaryWord[i],
            secondaryLetter: secondaryLetter[i],
            secondaryWord: secondaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildLesson01() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "mother", "come", "shape", "letters", "self", "history", "prize", "kindness", "use", "gift",
      "plan", "stand up", "unity", "lip", "finger ring", "finger", "dark"
    ];

    List<String> secondaryWord = [
      "आमा", "आउ", "आकार", "अक्षर", "आफू", "इतिहास", "इनाम", "उपकार", "उपयोग", "उपहार", "उपाय",
      "उभिनु", "एकता", "ओठ", "औंठी", "औंला", "अध्यारो"
    ];

    List<String> tertiaryWord = [
      "aama", "aau", "aakaar", "achhyar", "aafu", "eitihaas", "einaam", "upakaar", "upayog",
      "upahaar", "upaya", "ubhinu", "ekata", "aoth", "aaothi", "aaonla", "andhyaro"
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

  _buildLesson02() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "today", "darkness", "ray/light", "sky", "suddenly",
      "enduring", "whole", "respect", "ornament", "income",
      "plan", "stand up", "unity", "lip", "brick",
      "treatment", "friends", "above", "downward"
    ];

    List<String> secondaryWord = [
      "आज", "अन्धकार", "अंशु", "आकाश", "अकस्मात्",
      "अक्षय", "अखिल", "आदर", "आभूषण", "आय",
      "उपाय", "उभिनु", "एकता", "ओठ", "ईटा",
      "इलाज", "इस्टमित्र", "उभो", "उधो"
    ];

    List<String> tertiaryWord = [
      "aaj", "andhakaar", "anshu", "aakash", "akashmat",
      "achhya", "akhil", "aadar", "aavhushan", "aaya",
      "upaya", "ubhinu", "ekata", "aoth", "eita",
      "ilaaj", "istamitra", "ubho", "udho"
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
