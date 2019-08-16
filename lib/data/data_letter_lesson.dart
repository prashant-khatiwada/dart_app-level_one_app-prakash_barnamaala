import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new LetterListLesson(_buildLesson01()),
            new LetterListLesson(_buildLesson02()),
            new LetterListLesson(_buildLesson03()),
            new LetterListLesson(_buildLesson04()),
            new LetterListLesson(_buildLesson05()),
            new LetterListLesson(_buildLesson06()),
            new LetterListLessonSentence(_buildLesson07()),
            new LetterListLesson(_buildLesson08()),
            new LetterListLesson(_buildLesson09()),
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "One",
        ),
        Tab(
          text: "Two",
        ),
        Tab(
          text: "Three",
        ),
        Tab(
          text: "Four",
        ),
        Tab(
          text: "Five",
        ),
        Tab(
          text: "Six",
        ),
        Tab(
          text: "Seven",
        ),
        Tab(
          text: "Eight",
        ),
        Tab(
          text: "Nine",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Lessons', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildLesson01() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "mother",
      "come",
      "shape",
      "letters",
      "self",
      "history",
      "prize",
      "kindness",
      "use",
      "gift",
      "plan",
      "stand up",
      "unity",
      "lip",
      "finger ring",
      "finger",
      "dark"
    ];

    List<String> secondaryWord = [
      "आमा",
      "आउ",
      "आकार",
      "अक्षर",
      "आफू",
      "इतिहास",
      "इनाम",
      "उपकार",
      "उपयोग",
      "उपहार",
      "उपाय",
      "उभिनु",
      "एकता",
      "ओठ",
      "औंठी",
      "औंला",
      "अध्यारो"
    ];

    List<String> tertiaryWord = [
      "aama",
      "aau",
      "aakaar",
      "achhyar",
      "aafu",
      "eitihaas",
      "einaam",
      "upakaar",
      "upayog",
      "upahaar",
      "upaya",
      "ubhinu",
      "ekata",
      "aoth",
      "aaothi",
      "aaonla",
      "andhyaro"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
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
      "today",
      "darkness",
      "ray/light",
      "sky",
      "suddenly",
      "enduring",
      "whole",
      "respect",
      "ornament",
      "income",
      "plan",
      "stand up",
      "unity",
      "lip",
      "brick",
      "treatment",
      "friends",
      "above",
      "downward"
    ];

    List<String> secondaryWord = [
      "आज",
      "अन्धकार",
      "अंशु",
      "आकाश",
      "अकस्मात्",
      "अक्षय",
      "अखिल",
      "आदर",
      "आभूषण",
      "आय",
      "उपाय",
      "उभिनु",
      "एकता",
      "ओठ",
      "ईटा",
      "इलाज",
      "इस्टमित्र",
      "उभो",
      "उधो"
    ];

    List<String> tertiaryWord = [
      "aaj",
      "andhakaar",
      "anshu",
      "aakash",
      "akashmat",
      "achhya",
      "akhil",
      "aadar",
      "aavhushan",
      "aaya",
      "upaya",
      "ubhinu",
      "ekata",
      "aoth",
      "eita",
      "ilaaj",
      "istamitra",
      "ubho",
      "udho"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildLesson03() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "scent",
      "fidgety",
      "king",
      "instrument",
      "baby food",
      "baby clothes",
      "daily food",
      "necklace",
      "paternal uncle",
      "maternal uncle",
      "mother",
      "storm",
      "maadal",
      "pomegranate",
      "book",
      "ant",
      "insect",
      "butter",
      "black pepper",
      "cumin"
    ];

    List<String> secondaryWord = [
      "मगमग",
      "चकचक",
      "राजा",
      "बाजा",
      "पापा",
      "नाना",
      "खाजा",
      "माला",
      "काका",
      "मामा",
      "आमा",
      "बतास",
      "मादल",
      "अनार",
      "किताब",
      "कमिला",
      "किरा",
      "घिउ",
      "मरिच",
      "जिरा"
    ];

    List<String> tertiaryWord = [
      "mug mug",
      "chak chak",
      "raja",
      "baja",
      "papa",
      "nana",
      "khaja",
      "maala",
      "kaka",
      "mama",
      "aama",
      "batas",
      "madal",
      "anaar",
      "kitab",
      "kamila",
      "kira",
      "ghiu",
      "marich",
      "jeera"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
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
      "cup",
      "top",
      "rubber",
      "lotus",
      "flower pot",
      "pen",
      "house",
      "canal",
      "city",
      "commotion",
      "morning",
      "glass",
      "tea",
      "regret",
      "sitar",
      "pillow",
      "big sister",
      "small sister",
      "baby girl",
      "small girl"
    ];

    List<String> secondaryWord = [
      "कप",
      "टप",
      "रबर",
      "कमल",
      "गमला",
      "कलम",
      "घर",
      "नहर",
      "सहर",
      "खलबल",
      "बिहान",
      "गिलास",
      "चिया",
      "चुक्चुकी",
      "सितार",
      "तकिया",
      "दिदी",
      "बहिनी",
      "नानी",
      "सानी"
    ];

    List<String> tertiaryWord = [
      "cup",
      "top",
      "rubber",
      "kamal",
      "gamala",
      "kalam",
      "ghar",
      "nahar",
      "sahar",
      "khal bal",
      "bihan",
      "glass",
      "chiya",
      "chukchuki",
      "sitar",
      "takiya",
      "didi",
      "bahini",
      "naani",
      "saani"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildLesson05() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "you",
      "us",
      "yogurt",
      "sugar",
      "water",
      "friend",
      "queen",
      "bird",
      "run",
      "parrot",
      "dog",
      "milk",
      "napkin",
      "butterfly",
      "skirt",
      "rose",
      "garden",
      "tree",
      "flower",
      "plum"
    ];

    List<String> secondaryWord = [
      "तिमी",
      "हामी",
      "दही",
      "चिनी",
      "पानी",
      "साथी",
      "रानी",
      "चरी",
      "दुगुर",
      "सुगा",
      "कुकुर",
      "बुबु",
      "रुमाल",
      "पुतली",
      "जामा",
      "गुलाफ",
      "फूलबारी",
      "रुख",
      "फूल",
      "आरु"
    ];

    List<String> tertiaryWord = [
      "timi",
      "haami",
      "dahi",
      "chini",
      "paani",
      "saathi",
      "kaali",
      "chari",
      "dugur",
      "suga",
      "kukur",
      "bubu",
      "rumal",
      "putali",
      "jama",
      "gulaaf",
      "fulbaari",
      "rukh",
      "flower",
      "aaru"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
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
      "radish",
      "milk",
      "old man",
      "old woman",
      "crowd",
      "dog",
      "lunar",
      "net",
      "game",
      "rickshaw",
      "keeper",
      "rail",
      "male",
      "field",
      "soldier",
      "pouch",
      "money",
      "meetup",
      "cloth"
    ];

    List<String> secondaryWord = [
      "मूला",
      "दूध",
      "बूढा",
      "बूढी",
      "हूल",
      "कुकुर",
      "जून",
      "झूल",
      "खेल",
      "ठेला",
      "पाले",
      "रेल",
      "भाले",
      "मैदान",
      "पैदल",
      "सैनिक",
      "थैली",
      "पैसा",
      "बैठक",
      "लुगा"
    ];

    List<String> tertiaryWord = [
      "mula",
      "dudh",
      "budha",
      "budhi",
      "huol",
      "kukur",
      "jun",
      "jhool",
      "khel",
      "thela",
      "paale",
      "rail",
      "bhale",
      "maidan",
      "paidal",
      "sainik",
      "thaili",
      "paisa",
      "baithak",
      "luga"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
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
            position: i,
            primaryLetter: primaryWord[i],
            primaryWord: tertiaryWord[i],
            secondaryLetter: secondaryWord[i],
            secondaryWord: tertiaryWord[i],
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
            position: i,
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
      "amazed",
      "pleased",
      "charriot",
      "pointy",
      "fun",
      "window",
      "immediate",
      "entangle",
      "shoe",
      "mat",
      "calendar",
      "pure",
      "buddha",
      "full",
      "tooth",
      "pear",
      "till",
      "line",
      "catch",
      "bite"
    ];

    List<String> secondaryWord = [
      "छक्क",
      "मक्ख",
      "बग्गी",
      "चुच्चो",
      "मज्जा",
      "झ्य़ाल",
      "झट्ट",
      "लट्ठा",
      "जुत्ता",
      "गुन्द्री",
      "पात्रो",
      "शुद्ध",
      "बुद्ध",
      "टन्न‌",
      "दन्त",
      "अम्बा",
      "सम्म",
      "धर्को",
      "पक्रनु",
      "कर्याक्क"
    ];

    List<String> tertiaryWord = [
      "chakka",
      "makkha",
      "baggi",
      "chuccho",
      "majja",
      "jhyaal",
      "jhatta",
      "lattha",
      "jutta",
      "gundri",
      "patro",
      "shuddha",
      "buddha",
      "tanna",
      "danta",
      "amba",
      "samma",
      "dharko",
      "pakranu",
      "karyakka"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
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
