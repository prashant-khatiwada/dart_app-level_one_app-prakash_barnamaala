import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

import 'data_letter_combined_detail.dart';

class LetterMixed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            LetterCombinedDetail(),
            LetterListGrid(_buildListLeggedLetter()),
            LetterListLesson(_buildLesson08()),
            LetterListLesson(_buildLesson09())
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Combined",
        ),
        Tab(
          text: "Legged",
        ),
        Tab(
          text: "Eight",
        ),
        Tab(
          text: "Nine",
        ),
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Mixed Letter', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildListLeggedLetter() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "/ka",
      "/kh/a",
      "/ga",
      "gh/a",
      "ng/a",
      "ch/a",
      "chh/a",
      "j/a",
      "jh/a",
      "yn/a",
      "ta",
      "tt/ha",
      "da",
      "dha",
      "an/a",
      "ta",
      "tha",
      "dh/a",
      "dhh/a",
      "/na",
      "pa",
      "ph/a",
      "ba",
      "bh/a",
      "/ma",
      "ya",
      "ra",
      "/la",
      "wa",
      "s/sa",
      "khha",
      "sha",
      "ha"
    ];

    List<String> secondaryLetter = [
      "क्",
      "ख्",
      "ग्",
      "घ्",
      "ङ्",
      "च्",
      "छ्",
      "ज्",
      "झ्",
      "ञ्",
      "ट्",
      "ठ्",
      "ड्",
      "ढ्",
      "ण्",
      "त्",
      "थ्",
      "द्",
      "ध्",
      "न्",
      "प्",
      "फ्",
      "ब्",
      "भ्",
      "म्",
      "य्",
      "र्",
      "ल्",
      "व्",
      "श्",
      "ष्",
      "स्",
      "ह्"
    ];

    List<String> primaryWord = [
      "क्",
      "ख्",
      "ग्",
      "घ्",
      "ङ्",
      "च्",
      "छ्",
      "ज्",
      "झ्",
      "ञ्",
      "ट्",
      "ठ्",
      "ड्",
      "ढ्",
      "ण्",
      "त्",
      "थ्",
      "द्",
      "ध्",
      "न्",
      "प्",
      "फ्",
      "ब्",
      "भ्",
      "म्",
      "य्",
      "र्",
      "ल्",
      "व्",
      "श्",
      "ष्",
      "स्",
      "ह्"
    ];

    List<String> secondaryWord = [
      "/ka",
      "/kh/a",
      "/ga",
      "gh/a",
      "ng/a",
      "ch/a",
      "chh/a",
      "j/a",
      "jh/a",
      "yn/a",
      "ta",
      "tt/ha",
      "da",
      "dha",
      "an/a",
      "ta",
      "tha",
      "dh/a",
      "dhh/a",
      "/na",
      "pa",
      "ph/a",
      "ba",
      "bh/a",
      "/ma",
      "ya",
      "ra",
      "/la",
      "wa",
      "s/sa",
      "khha",
      "sha",
      "ha"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryLetter[i],
            primaryWord: primaryWord[i],
            secondaryLetter: secondaryLetter[i],
            secondaryWord: secondaryWord[i]),
      );
    }
    return data;
  }

  _buildLesson08() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "study!",
      "sit!",
      "god!",
      "Hanuman!",
      "scholar!",
      "scram, begone",
      "dig!",
      "listen!",
      "watch!",
      "do!",
      "she didn't do",
      "they didn't do",
      "she didn't go",
      "you didn't go",
      "you went?",
      "(do your)work",
      "speak",
      "fight",
      "don't write",
      "bow(before god)"
    ];

    List<String> secondaryWord = [
      "पढ्",
      "बस्",
      "भगवान्",
      "हनुमान्",
      "विद्वान्",
      "धत्",
      "खन्",
      "सुन्",
      "हेर्",
      "गर्",
      "गरिनन्",
      "गरेनन्",
      "गइनन्",
      "गइनस्",
      "गइस्",
      "गर्",
      "भन्",
      "लड्छ",
      "लेख्",
      "ढोग्"
    ];

    List<String> tertiaryWord = [
      "padhh",
      "bass",
      "bhagwan",
      "hanuman",
      "widhwan",
      "dhatt",
      "khan",
      "sunn",
      "herr",
      "garr",
      "garinan",
      "garenann",
      "ga-i-nann",
      "ga-i-nass",
      "ga-i-ss",
      "garr",
      "bhann",
      "hola",
      "nalekh",
      "dhog"
    ];

    List<String> audioData = [
      "audio/lesson_8_01.mp3",
      "audio/lesson_8_02.mp3",
      "audio/lesson_8_03.mp3",
      "audio/lesson_8_04.mp3",
      "audio/lesson_8_05.mp3",
      "audio/lesson_8_06.mp3",
      "audio/lesson_8_07.mp3",
      "audio/lesson_8_08.mp3",
      "audio/lesson_8_09.mp3",
      "audio/lesson_8_10.mp3",
      "audio/lesson_8_11.mp3",
      "audio/lesson_8_12.mp3",
      "audio/lesson_8_13.mp3",
      "audio/lesson_8_14.mp3",
      "audio/lesson_8_15.mp3",
      "audio/lesson_8_16.mp3",
      "audio/lesson_8_17.mp3",
      "audio/lesson_8_18.mp3",
      "audio/lesson_8_19.mp3",
      "audio/lesson_8_20.mp3"
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

  _buildLesson09() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "amazed", "pleased", "charriot", "pointy", "fun", "window", "immediate", "entangle", "shoe", "mat",
      "calendar", "pure", "buddha", "full", "tooth", "pear", "till", "line", "catch", "bite"
    ];

    List<String> secondaryWord = [
      "छक्क", "मक्ख", "बग्गी", "चुच्चो", "मज्जा", "झ्य़ाल", "झट्ट", "लट्ठा", "जुत्ता", "गुन्द्री",
      "पात्रो", "शुद्ध", "बुद्ध", "टन्न‌", "दन्त", "अम्बा", "सम्म", "धर्को", "पक्रनु", "कर्याक्क"
    ];

    List<String> tertiaryWord = [
      "chakka", "makkha", "baggi", "chuccho", "majja", "jhyaal", "jhatta", "lattha", "jutta", "gundri",
      "patro", "shuddha", "buddha", "tanna", "danta", "amba", "samma", "dharko", "pakranu", "karyakka"
    ];

    List<String> audioData = [
      "audio/lesson_9_01.mp3",
      "audio/lesson_9_02.mp3",
      "audio/lesson_9_03.mp3",
      "audio/lesson_9_04.mp3",
      "audio/lesson_9_05.mp3",
      "audio/lesson_9_06.mp3",
      "audio/lesson_9_07.mp3",
      "audio/lesson_9_08.mp3",
      "audio/lesson_9_09.mp3",
      "audio/lesson_9_10.mp3",
      "audio/lesson_9_11.mp3",
      "audio/lesson_9_12.mp3",
      "audio/lesson_9_13.mp3",
      "audio/lesson_9_14.mp3",
      "audio/lesson_9_15.mp3",
      "audio/lesson_9_16.mp3",
      "audio/lesson_9_17.mp3",
      "audio/lesson_9_18.mp3",
      "audio/lesson_9_19.mp3",
      "audio/lesson_9_20.mp3"
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
