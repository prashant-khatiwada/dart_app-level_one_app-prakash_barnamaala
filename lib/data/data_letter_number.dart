import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

import 'data_letter_multiplication.dart';

class LetterNumber extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: makeTopAppBar,
              body: TabBarView(children: [
                new LetterListGrid(_buildListNumber0to10()),
                new LetterListNumber1to100(_buildListNumber1to100()),
                new LetterMultiplicationTable(),
                new PhraseList(_buildNotationList())

    ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "0 to 10",
        ),
        Tab(
          text: "1 to 100",
        ),
        Tab(
          text: "Multiply",
        ),
        Tab(
          text: "Notation",
        ),
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Numbers', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildListNumber0to10() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
    ];

    List<String> secondaryLetter = [
      "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", "१०"
    ];

    List<String> primaryWord = [
      "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"
    ];

    List<String> secondaryWord = [
      "sunya", "ek", "dui", "teen", "chaar", "paanch", "cha", "saat", "aath", "nau", "dus"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(new LetterNumberModal(
          position: i,
          primaryLetter: primaryLetter[i],
          primaryWord: primaryLetter[i],
          secondaryLetter: secondaryLetter[i],
          secondaryWord: secondaryLetter[i],
          imageData: Icons.home
      ),
      );
    }
    return data;
  }

  _buildListNumber1to100() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryLetter = [
      "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
      "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
      "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
      "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
      "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",
      "51", "52", "53", "54", "55", "56", "57", "58", "59", "60",
      "61", "62", "63", "64", "65", "66", "67", "68", "69", "70",
      "71", "72", "73", "74", "75", "76", "77", "78", "79", "80",
      "81", "82", "83", "84", "85", "86", "87", "88", "89", "90",
      "91", "92", "93", "94", "95", "96", "97", "98", "99", "100"
    ];

    List<String> secondaryLetter = [
      "१", "२", "३", "४", "५", "६", "७", "८", "९", "१०",
      "११", "१२", "१३", "१४", "१५", "१६", "१७", "१८", "१९", "२०",
      "२१", "२२", "२३", "२४", "२५", "२६", "२७", "२८", "२९", "३०",
      "३१", "३२", "३३", "३४", "३५", "३६", "३७", "३८", "३९", "४०",
      "४१", "४२", "४३", "४४", "४५", "४६", "४७", "४८", "४९", "५०",
      "५१", "५२", "५३", "५४", "५५", "५६", "५७", "५८", "५९", "६०",
      "६१", "६२", "६३", "६४", "६५", "६६", "६७", "६८", "६९", "७०",
      "७१", "७२", "७३", "७४", "७५", "७६", "७७", "७८", "७९", "८०",
      "८१", "८२", "८३", "८४", "८५", "८६", "८७", "८८", "८९", "९०",
      "९१", "९२", "९३", "९४", "९५", "९६", "९७", "९८", "९९", "१००"
    ];

    List<String> primaryWord = [
      "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
      "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty",
      "twenty-one", "twenty-two", "twenty-three", "twenty-four", "twenty-five", "twenty-six", "twenty-seven", "twenty-eight", "twenty-nine", "thirty",
      "thirty-one", "thirty-two", "thirty-three", "thirty-four", "thirty-five", "thirty-six", "thirty-seven", "thirty-eight", "thirty-nine", "fourty",
      "fourty-one", "fourty-two", "fourty-three", "fourty-four", "fourty-five", "fourty-six", "fourty-seven", "fourty-eight", "fourty-nine","fifty",
      "fifty-one", "fifty-two", "fifty-three", "fifty-four", "fifty-five", "fifty-six", "fifty-seven", "fifty-eight", "fifty-nine", "sixty",
      "sixty-one", "sixty-two", "sixty-three", "sixty-four", "sixty-five", "sixty-six", "sixty-seven", "sixty-eight", "sixty-nine", "seventy",
      "seventy-one", "seventy-two", "seventy-three", "seventy-four", "seventy-five", "seventy-six", "seventy-seven", "seventy-eight", "seventy-nine", "eighty",
      "eighty-one", "eighty-two", "eighty-three", "eighty-four", "eighty-five", "eighty-six", "eighty-seven", "eighty-eight", "eighty-nine", "eighty",
      "ninety-one", "ninety-two", "ninety-three", "ninety-four", "ninety-five", "ninety-six", "ninety-seven", "ninety-eight", "ninety-nine", "hundred"
    ];

    List<String> secondaryWord = [
      "ek", "dui", "teen", "chaar", "paanch", "cha", "saat", "aath", "nau", "dus",
      "ek-ghaar", "barha", "terha", "chauda", "pandhra", "sorha", "satra", "athara", "unnais", "bis",
      "ek-kais", "ba-ais", "te-is", "chau-bis", "pachis", "chabbis", "sattais", "aathais", "unntis", "tees",
      "ek-tis", "bat-tis", "te-ttis", "chau-tis", "pandhra", "sorha", "satra", "athara", "unnais", "chaalis",
      "ek-chalis", "ba-yalis", "tir-chalis", "chau-waalis", "paanch", "cha", "saat", "aath", "nau", "pachaas",
      "ek-kaunna", "ba-wanna", "tir-panna", "chau-wanna", "pandhra", "sorha", "satra", "athara", "unnais", "saathhi",
      "ek-sathhi", "ba-satthhi", "tir-satthhi", "chau-satthi", "paanch", "cha", "saat", "aath", "nau", "satthari",
      "ek-hathhar", "ba-hathhar", "tir-hathhar", "chau-hathhar", "pandhra", "sorha", "satra", "athara", "unnais", "assi",
      "eka-si", "ba-yasi", "tir-yaasi", "chaar", "chau-raasi", "cha", "saat", "aath", "nau", "nabbe",
      "eka-nabbe", "baya-nabbe", "tri-ya-nabbe", "chau-ra-nabbe", "pandhra", "sorha", "satra", "athara", "unnais", "saya"
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
  }

  _buildNotationList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "One",
      "Ten",
      "Hundred",
      "Thousand",
      "Ten thousand",
      "Hundred thousand",
      "One million",
      "Ten million",
      "One hundred million",
      "One billion",
      "Ten billion",
      "One hundred billion",
      "One trillion (one billion)",
      "Ten trillion",
      "One hundred trillion",
      "One quadrillion (one billiard)",
      "Ten quadrillion",
      "One hundred quadrillion",
      "One quintillion (one trillion)"
    ];

    List<String> secondaryPhrase = [
      "१",
      "१०",
      "१००",
      "१०००",
      "१०,०००",
      "१००,०००",
      "१,००,०००",
      "१०,००,०००",
      "१,००,००,०००",
      "१०,००,००,०००",
      "१,००,००,००,०००",
      "१०,००,००,००,०००",
      "१,००,००,००,००,०००",
      "१०,००,००,००,००,०००",
      "१,००,००,००,००,००,०००",
      "१०,००,००,००,००,००,०००",
      "१,००,००,००,००,००,००,०००",
      "१०,००,००,००,००,००,००,०००",
      "१,००,००,००,००,००,००,००,०००"

    ];

    List<String> tertiaryPhrase = [
      "ek",
      "das",
      "ek saya",
      "ek hajar",
      "das hajar",
      "ek lakh",
      "das lakh",
      "ek crore",
      "dus crore",
      "one arab",
      "ek hajar crore",
      "ek kharab",
      "dus kharab",
      "ek neel",
      "dus neel",
      "ek padma",
      "dus padma",
      "ek shankh",
      "dus shankh"
    ];


    for (int i = 0; i < primaryPhrase.length; i++) {
      data.add(new PhraseModal(
        position: i,
        primaryPhrase: primaryPhrase[i],
        secondaryPhrase: secondaryPhrase[i],
        tertiaryPhrase: tertiaryPhrase[i],
      ),
      );
    }
    return data;
  }


}
