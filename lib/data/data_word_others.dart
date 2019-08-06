import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordOther extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildColorList()),
            new WordList(_buildEmotionList())
          ])),
    ));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Color",
        ),
        Tab(
          text: "Emotion",
        ),
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Word - Others', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildColorList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "red",
      "blue",
      "green",
      "black",
      "white",
      "gray",
      "brown",
      "orange",
      "yellow",
      "purple"
    ];

    List<String> secondaryWord = [
      "रातो",
      "निलो",
      "हरियो",
      "कालो",
      "सेतो",
      "खरानी",
      "खैरो",
      "सुन्तला",
      "पहेंलो",
      "प्याजी"
    ];


    List<String> tertiaryWord = [
      "rato",
      "neelo",
      "hariyo",
      "kaalo",
      "seto",
      "kharani",
      "khairo",
      "suntala",
      "pahelo",
      "pyaji"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildEmotionList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Happy",
      "Distress",
      "Sadness",
      "Anger",
      "Worry",
      "Pain",
      "Happy and Peace",
      "Jealousy",
      "Shy",
      "Dishonor",

      "Honor",
      "Embarrassment",
      "Lazy",
      "Frustrated",
      "Disgusted",
      "Desire",
      "Hate",
      "Love",
      "Hope",
      "Suprised",

      "Regret",
      "Dislike",
      "Like"

    ];

    List<String> secondaryWord = [
      "खुसी",
      "दु:ख",
      "निराशा",
      "रिस",
      "चिन्ता",
      "दुख्नु",
      "सुःख",
      "ईर्ष्या",
      "लजाउनु",
      "बेर्इज्जत",

      "र्इज्जत",
      "लाज",
      "अल्छी",
      "वाक्क हुनु ",
      "घिन",
      "चाहना",
      "हेप्नु",
      "माया",
      "र्इच्छा",
      "अच्चम",

      "पछ्ताउनु",
      "मन नपर्नु",
      "मन पर्नु "
    ];


    List<String> tertiaryWord = [
      "khusi",
      "dukha",
      "nirasha",
      "rish",
      "chintaa",
      "dukhnu",
      "sukha",
      "ishrya",
      "lajaunu",
      "beijjat",

      "ijjat",
      "laaj",
      "alchi",
      "wakka",
      "ghin",
      "chaahanaa",
      "ghrina",
      "maya",
      "icchaa",
      "acchamma",

      "pachtaunu",
      "man naparnu",
      "man parnu"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }



}
