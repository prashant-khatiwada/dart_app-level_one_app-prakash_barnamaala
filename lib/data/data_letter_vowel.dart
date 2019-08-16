import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterVowel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new LetterListReadImage(_buildList()),
            new LetterListAudioImage(_buildList()),
            new LetterListLesson(_buildLesson01()),
            new LetterListLesson(_buildLesson02()),
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Read",
        ),
        Tab(
          text: "Audio",
        ),
        Tab(
          text: "One",
        ),
        Tab(
          text: "Two",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Vowels', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<LetterNumberModalImage> data = new List<LetterNumberModalImage>();

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
      "अेा",
      "अैा",
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
      "अेाखर",
      "अैाषधी",
      "अंगुर",
      "अ"
    ];

    List<String> imageData = [
      "assets/image_letter/letter_vowel_01.jpg",
      "assets/image_letter/letter_vowel_02.jpg",
      "assets/image_letter/letter_vowel_03.jpg",
      "assets/image_letter/letter_vowel_04.jpg",
      "assets/image_letter/letter_vowel_05.jpg",
      "assets/image_letter/letter_vowel_06.jpg",
      "assets/image_letter/letter_vowel_07.jpg",
      "assets/image_letter/letter_vowel_08.jpg",
      "assets/image_letter/letter_vowel_09.jpg",
      "assets/image_letter/letter_vowel_10.jpg",
      "assets/image_letter/letter_vowel_11.jpg",
      "assets/image_letter/letter_vowel_12.jpg",
      "assets/image_letter/letter_vowel_13.jpg"
    ];

    List<String> audioData = [
      "audio/vowel_1.mp3",
      "audio/vowel_2.mp3",
      "audio/vowel_3.mp3",
      "audio/vowel_4.mp3",
      "audio/vowel_5.mp3",
      "audio/vowel_6.mp3",
      "audio/vowel_7.mp3",
      "audio/vowel_8.mp3",
      "audio/vowel_9.mp3",
      "audio/vowel_10.mp3",
      "audio/vowel_11.mp3",
      "audio/vowel_12.mp3",
      "audio/vowel_13.mp3"
    ];

    List<String> audioDataWord = [
      "audio/vowel_word_1.mp3",
      "audio/vowel_word_2.mp3",
      "audio/vowel_word_3.mp3",
      "audio/vowel_word_4.mp3",
      "audio/vowel_word_5.mp3",
      "audio/vowel_word_6.mp3",
      "audio/vowel_word_7.mp3",
      "audio/vowel_word_8.mp3",
      "audio/vowel_word_9.mp3",
      "audio/vowel_word_10.mp3",
      "audio/vowel_word_11.mp3",
      "audio/vowel_word_12.mp3",
      "audio/vowel_word_13.mp3"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(
        new LetterNumberModalImage(
            position: i,
            primaryLetter: primaryLetter[i],
            primaryWord: primaryWord[i],
            secondaryLetter: secondaryLetter[i],
            secondaryWord: secondaryWord[i],
            imageData: imageData[i],
            audioData: audioData[i],
            audioWordData: audioDataWord[i]
        )
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

    List<String> audioData = [
      "audio/lesson_1_01.mp3",
      "audio/lesson_1_02.mp3",
      "audio/lesson_1_03.mp3",
      "audio/lesson_1_04.mp3",
      "audio/lesson_1_05.mp3",
      "audio/lesson_1_06.mp3",
      "audio/lesson_1_07.mp3",
      "audio/lesson_1_08.mp3",
      "audio/lesson_1_09.mp3",
      "audio/lesson_1_10.mp3",
      "audio/lesson_1_11.mp3",
      "audio/lesson_1_12.mp3",
      "audio/lesson_1_13.mp3",
      "audio/lesson_1_14.mp3",
      "audio/lesson_1_15.mp3",
      "audio/lesson_1_16.mp3",
      "audio/lesson_1_17.mp3"
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


    List<String> audioData = [
      "audio/lesson_2_01.mp3",
      "audio/lesson_2_02.mp3",
      "audio/lesson_2_03.mp3",
      "audio/lesson_2_04.mp3",
      "audio/lesson_2_05.mp3",
      "audio/lesson_2_06.mp3",
      "audio/lesson_2_07.mp3",
      "audio/lesson_2_08.mp3",
      "audio/lesson_2_09.mp3",
      "audio/lesson_2_10.mp3",
      "audio/lesson_2_11.mp3",
      "audio/lesson_2_12.mp3",
      "audio/lesson_2_13.mp3",
      "audio/lesson_2_14.mp3",
      "audio/lesson_2_15.mp3",
      "audio/lesson_2_16.mp3",
      "audio/lesson_2_17.mp3",
      "audio/lesson_2_18.mp3",
      "audio/lesson_2_19.mp3",
      "audio/lesson_2_20.mp3"
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
