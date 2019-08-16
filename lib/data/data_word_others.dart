import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordOther extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildColorList()),
            new WordList(_buildEmotionList())
          ])),
    );
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

    List<String> audioData = [
      'audio/word_other_color_01.mp3',
      "audio/word_other_color_02.mp3",
      "audio/word_other_color_03.mp3",
      "audio/word_other_color_04.mp3",
      "audio/word_other_color_05.mp3",
      "audio/word_other_color_06.mp3",
      "audio/word_other_color_07.mp3",
      "audio/word_other_color_08.mp3",
      "audio/word_other_color_09.mp3",
      "audio/word_other_color_10.mp3"
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
    List<String> audioData = [
      'audio/word_other_emotion_01.mp3',
      "audio/word_other_emotion_02.mp3",
      "audio/word_other_emotion_03.mp3",
      "audio/word_other_emotion_04.mp3",
      "audio/word_other_emotion_05.mp3",
      "audio/word_other_emotion_06.mp3",
      "audio/word_other_emotion_07.mp3",
      "audio/word_other_emotion_08.mp3",
      "audio/word_other_emotion_09.mp3",
      "audio/word_other_emotion_10.mp3",

      'audio/word_other_emotion_11.mp3',
      "audio/word_other_emotion_12.mp3",
      "audio/word_other_emotion_13.mp3",
      "audio/word_other_emotion_14.mp3",
      "audio/word_other_emotion_15.mp3",
      "audio/word_other_emotion_16.mp3",
      "audio/word_other_emotion_17.mp3",
      "audio/word_other_emotion_18.mp3",
      "audio/word_other_emotion_19.mp3",
      "audio/word_other_emotion_20.mp3",

      'audio/word_other_emotion_21.mp3',
      "audio/word_other_emotion_22.mp3",
      "audio/word_other_emotion_23.mp3"
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
