import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildGeneralList()),
            new WordList(_buildWeekList()),
            new WordList(_buildMonthList()),
            new WordList(_buildSeasonList()),
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "General",
        ),
        Tab(
          text: "Week",
        ),
        Tab(
          text: "Month",
        ),
        Tab(
          text: "Season",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Time', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildGeneralList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "day before yesterday",
      "yesterday",
      "today",
      "tomorrow",
      "day after tomorrow",
      "three days from today",
      "morning",
      "afternoon",
      "evening",
      "day",
      "night",
      "mid-night",
      "morning light",
      "mid-day",
      "now",
      "moments ago",
      "later",
      "in a moment",
      "hour",
      "minute"
    ];

    List<String> secondaryWord = [
      "अस्ती",
      "हिजो",
      "आज",
      "भोली",
      "पर्सी",
      "निको-पर्सी",
      "बिहान",
      "दिउसो",
      "सांझ",
      "दिन",
      "रात",
      "मध्य-रात्री",
      "मिरमिरे उज्यालो",
      "मध्यान्न",
      "अहिले",
      "अघि",
      "पछि",
      "एकक्षण",
      "घन्टा",
      "मिनेट"
    ];

    List<String> tertiaryWord = [
      "asti",
      "hijo",
      "aaja",
      "bholi",
      "parsi",
      "niko parsi",
      "bihana",
      "diuso",
      "sanjha",
      "din",
      "raat",
      "madhya-raat",
      "mir mire ujyalo",
      "madhya-din",
      "ahile",
      "agjhi",
      "pachi",
      "ekchin",
      "ghanta",
      "minute"
    ];

    List<String> audioData = [
      'audio/word_time_general_01.mp3',
      "audio/word_time_general_02.mp3",
      "audio/word_time_general_03.mp3",
      "audio/word_time_general_04.mp3",
      "audio/word_time_general_05.mp3",
      "audio/word_time_general_06.mp3",
      "audio/word_time_general_07.mp3",
      "audio/word_time_general_08.mp3",
      "audio/word_time_general_09.mp3",
      "audio/word_time_general_10.mp3",

      'audio/word_time_general_11.mp3',
      "audio/word_time_general_12.mp3",
      "audio/word_time_general_13.mp3",
      "audio/word_time_general_14.mp3",
      "audio/word_time_general_15.mp3",
      "audio/word_time_general_16.mp3",
      "audio/word_time_general_17.mp3",
      "audio/word_time_general_18.mp3",
      "audio/word_time_general_19.mp3",
      "audio/word_time_general_20.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: 'assets/coming_soon.jpg',
            audioData: audioData[i]),
      );
    }

    return data;
  }

  _buildWeekList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ];

    List<String> secondaryWord = [
      "आइतबार",
      "सोमबार",
      "मगंलबार",
      "बुधबार",
      "बिहिबार",
      "शुक्रबार",
      "शनिबार"
    ];

    List<String> tertiaryWord = [
      "aaitabaar",
      "sombaar",
      "mangalbaar",
      "budhabaar",
      "bihibaar",
      "shukrabaar",
      "shanibaar"
    ];

    List<String> audioData = [
      'audio/word_time_week_01.mp3',
      "audio/word_time_week_02.mp3",
      "audio/word_time_week_03.mp3",
      "audio/word_time_week_04.mp3",
      "audio/word_time_week_05.mp3",
      "audio/word_time_week_06.mp3",
      "audio/word_time_week_07.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: 'assets/coming_soon.jpg',
            audioData: audioData[i]),
      );
    }

    return data;
  }

  _buildMonthList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Mid-April to Mid-May",
      "Mid-May to Mid-June",
      "Mid-June to Mid-July",
      "Mid-July to Mid-August",
      "Mid-August to Mid-September",
      "Mid-September to Mid-October",
      "Mid-October to Mid-November",
      "Mid-November to Mid-December",
      "Mid-December to Mid-January",
      "Mid-January to Mid-February",
      "Mid-February to Mid-March",
      "Mid-March to Mid-April"
    ];

    List<String> secondaryWord = [
      "बैशाख",
      "जेठ",
      "असार",
      "साउन",
      "भाद्र",
      "असोज",
      "कार्तिक",
      "मशिंर",
      "पुष",
      "माघ",
      "फागुन",
      "चैत्र"
    ];

    List<String> tertiaryWord = [
      "baisakh",
      "jestha",
      "asaar",
      "saun",
      "bhadra",
      "ashoj",
      "kartik",
      "manshir",
      "poush",
      "magh",
      "fagun",
      "chaitra"
    ];

    List<String> audioData = [
      'audio/word_time_months_01.mp3',
      "audio/word_time_months_02.mp3",
      "audio/word_time_months_03.mp3",
      "audio/word_time_months_04.mp3",
      "audio/word_time_months_05.mp3",
      "audio/word_time_months_06.mp3",
      "audio/word_time_months_07.mp3",
      "audio/word_time_months_08.mp3",
      "audio/word_time_months_09.mp3",
      "audio/word_time_months_10.mp3",

      'audio/word_time_months_11.mp3',
      "audio/word_time_months_12.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: 'assets/coming_soon.jpg',
            audioData: audioData[i]),
      );
    }

    return data;
  }

  _buildSeasonList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Spring",
      "Summer",
      "Monsoon",
      "Autumn",
      "Winter",
      "Fall"
    ];

    List<String> secondaryWord = [
      "बसन्त",
      "ग्रिष्म",
      "वर्षा",
      "शरद्",
      "हेमन्त",
      "शिशिर"
    ];

    List<String> tertiaryWord = [
      "vasant",
      "grishma",
      "varsha",
      "sharad",
      "hemanta",
      "shishira"
    ];

    List<String> audioData = [
      'audio/word_time_season_01.mp3',
      "audio/word_time_season_02.mp3",
      "audio/word_time_season_03.mp3",
      "audio/word_time_season_04.mp3",
      "audio/word_time_season_05.mp3",
      "audio/word_time_season_06.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: 'assets/coming_soon.jpg',
            audioData: audioData[i]),
      );
    }

    return data;
  }
}
