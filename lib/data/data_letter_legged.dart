import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

import 'data_letter_combined_detail.dart';

class LetterLegged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          appBar: makeTopAppBar,
          body: TabBarView(children: [
              new LetterCombinedDetail(),
            new LetterListListen(_buildListLeggedLetter()),
            new LetterListLesson(_buildLesson08()),
            new LetterListLesson(_buildLesson09())
          ])),
    ));
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
          text: "Lesson Eight",
        ),
        Tab(
          text: "Lesson Nine",
        ),
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Mixed Letter', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  // Generic List for Combined Letter
  /* _buildList() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "क् + क = क्क", "ख् + ख = ख्ख", "ग् + ग = ग्ग",
      "च् + च = च्च", "ज् + ज = ज्ज", "झ् + य = झ्य",
      "ट् + ट = ट्ट", "ट् + ठ = ट्ठ", "त् + त = त्त", "द् + य = द्य", "द् + म = द्म",
      "द् + ध = द्ध", "न् + न = न्न", "न् + त = न्त", "म् + ब = म्ब",
      "म् + म = म्म", "र् + क = र्क", "ल् + ल = ल्ल", "र् + य = र्य",
      "र् + म = र्म", "प् + र = प्र", "क् + र = क्र", "क् + त = क्त",
      "श् + र = श्र", "ङ् + ग = ङ्ग", "ङ् + क = ङ्क", "र् + व = र्व",
      "द् + व = द्व", "म् + र = म्र"
    ];

    List<String> secondaryLetter = [
      "क्क", "ख्ख", "ग्ग", "च्च", "ज्ज",
      "झ्य", "ट्ट", "ट्ठ", "त्त", "द्य",
      "द्म", "द्ध", "न्न", "न्त", "म्ब",
      "म्म", "र्क", "ल्ल", "र्य", "र्म",
      "प्र", "क्र", "क्त", "श्र", "ङ्ग",
      "ङ्क", "र्व", "द्व", "म्र"
    ];

    List<String> primaryWord = [
      "क्क", "ख्ख", "ग्ग", "च्च", "ज्ज",
      "झ्य", "ट्ट", "ट्ठ", "त्त", "द्य",
      "द्म", "द्ध", "न्न", "न्त", "म्ब",
      "म्म", "र्क", "ल्ल", "र्य", "र्म",
      "प्र", "क्र", "क्त", "श्र", "ङ्ग",
      "ङ्क", "र्व", "द्व", "म्र"
    ];

    List<String> secondaryWord = [
      "क् + क = क्क", "ख् + ख = ख्ख", "ग् + ग = ग्ग",
      "च् + च = च्च", "ज् + ज = ज्ज", "झ् + य = झ्य",
      "ट् + ट = ट्ट", "ट् + ठ = ट्ठ", "त् + त = त्त", "द् + य = द्य", "द् + म = द्म",
      "द् + ध = द्ध", "न् + न = न्न", "न् + त = न्त", "म् + ब = म्ब",
      "म् + म = म्म", "र् + क = र्क", "ल् + ल = ल्ल", "र् + य = र्य",
      "र् + म = र्म", "प् + र = प्र", "क् + र = क्र", "क् + त = क्त",
      "श् + र = श्र", "ङ् + ग = ङ्ग", "ङ् + क = ङ्क", "र् + व = र्व",
      "द् + व = द्व", "म् + र = म्र"
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
  }*/

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
            primaryLetter: primaryLetter[i],
            primaryWord: primaryWord[i],
            secondaryLetter: secondaryLetter[i],
            secondaryWord: secondaryWord[i],
            imageData: Icons.home),
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
