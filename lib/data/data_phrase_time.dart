import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class PhraseTime extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new PhraseList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Time', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "Time",
      "What time is it?",
      "What day is today?",
      "What is the date today?",
      "What time do you get up?",
      "Its _______ (time)",
      "What time do you leave?",
      "What time does the bus leave?",
      "When will you arrive?",
      "When will the the bus arrive?",
      "When is your birthday?",
      "Its _______ today"
    ];

    List<String> secondaryPhrase = [
      "समय",
      "कति बज्यो ?",
      "आज के वार हो ?",
      "आज कति गते हो?",
      "कति बेला उठ्ने गरेको छ ?",
      "अहिले ______ बज्यो",
      "कति बेला हिड्ने ?",
      "बस कति बेला हिड्छ ?",
      "कति बेला आउने ?",
      "बस कति बेला आउछ ?",

      "तिम्रो जन्मदिन कहिले हो ?",
      "आज ______ हो"

    ];

    List<String> tertiaryPhrase = [
      "samaya",
      "kati bajyo?",
      "aaj ke baar ho?",
      "aaj kati gatae ho?",
      "kati bela uthhne gareko chha?",
      "ahile ______ bajyo",
      "kati bela hidnne?",
      "bus kati bela hindchha?",
      "kati bela aaune?",
      "bus kati bela aauchha?",

      "timro janmadin kahile ho?",
      "aaj _______ ho"

    ];


    List<String> audioData = [
      'audio/phrase_time_01.mp3',
      "audio/phrase_time_02.mp3",
      "audio/phrase_time_03.mp3",
      "audio/phrase_time_04.mp3",
      "audio/phrase_time_05.mp3",
      "audio/phrase_time_06.mp3",
      "audio/phrase_time_07.mp3",
      "audio/phrase_time_08.mp3",
      "audio/phrase_time_09.mp3",
      "audio/phrase_time_10.mp3",

      "audio/phrase_time_11.mp3",
      "audio/phrase_time_12.mp3"
    ];

    for (int i = 0; i < primaryPhrase.length; i++) {
      data.add(new PhraseModal(
          position: i,
          primaryPhrase: primaryPhrase[i],
          secondaryPhrase: secondaryPhrase[i],
          tertiaryPhrase: tertiaryPhrase[i],
          audioPhrase: audioData[i]
      ),
      );
    }

    return data;
  }


}
