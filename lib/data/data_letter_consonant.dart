import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterConsonant extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: makeTopAppBar,
              body: TabBarView(children: [
                new LetterListReadImage(_buildListImage()),
                new LetterListAudioImage(_buildListImage()),
                new LetterListLesson(_buildLesson03()),
                new LetterListLesson(_buildLesson04()),
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
          text: "Three",
        ),
        Tab(
          text: "Four",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Consonants', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildListImage() {
    List<LetterNumberModalImage> data = new List<LetterNumberModalImage>();

    List<String> primaryLetter = [
      "ka", "kha", "ga", "gha", "nga", "cha", "chha", "ja", "jha", "yna",
      "ta", "tha", "da", "dha", "na", "ta", "tha", "da", "dha", "na",
      "pa", "pha", "ba", "bha", "ma", "ya", "ra", "la", "wa", "sa",
      "khha", "sha", "ha", "chya", "tra", "gya"
    ];

    List<String> secondaryLetter = [
      "क", "ख", "ग", "घ", "ङ", "च", "छ", "ज", "झ", "ञ",
      "ट", "ठ", "ड", "ढ", "ण", "त", "थ", "द", "ध", "न",
      "प", "फ", "ब", "भ", "म", "य", "र", "ल", "व", "श",
      "ष", "स", "ह", "क्ष", "त्र", "ज्ञ"
    ];

    List<String> primaryWord = [

      "kachuwa", "kharayo", "gai", "ghadi", "nang", "chara", "chhata", "jutta", "jhanda", "singh",
      "tamatar",
      "thhappa",
      "damaru",
      "dhakkan",
      "baan",
      "taraju",
      "thaaal",
      "daraj",
      "dhhanush",
      "nariwal",
      "pankha",
      "farsi",
      "bakhro",
      "bhhakundo",
      "majur",
      "yog",
      "rathh",
      "lasun",
      "wakil",
      "shanka",
      "shatkon", "saap", "harin", "chhyatriya", "trishul", "gyan"

    ];

    List<String> secondaryWord = [
      "कछुवा", "खरायो", "गाइ", "घडी", "नङ",
      "चरा", "छाता", "जुत्ता", "झन्डा", "सिञ",

      "टमाटर", "ठप्पा", "डमरु", "ढक्कन", "बाण",
      "तराजु", "थाल", "दराज", "धनुष", "नरिवल",

      "पंखा", "फर्सी", "बाख्रो", "भकुण्डो", "मजुर",
      "योग", "रथ", "लसुन", "वकिल", "शंक",

      "षटकोण", "साँप", "हरिण", "क्षत्रिय", "त्रिशुल",
      "ज्ञान"

    ];

    List<String> imageData = [
      "assets/image_letter/letter_consonant_01.jpg",
      "assets/image_letter/letter_consonant_02.jpg",
      "assets/image_letter/letter_consonant_03.jpg",
      "assets/image_letter/letter_consonant_04.jpg",
      "assets/image_letter/letter_consonant_05.jpg",
      "assets/image_letter/letter_consonant_06.jpg",
      "assets/image_letter/letter_consonant_07.jpg",
      "assets/image_letter/letter_consonant_08.jpg",
      "assets/image_letter/letter_consonant_09.jpg",
      "assets/image_letter/letter_consonant_10.jpg",

      "assets/image_letter/letter_consonant_11.jpg",
      "assets/image_letter/letter_consonant_12.jpg",
      "assets/image_letter/letter_consonant_13.jpg",
      // This
      "assets/image_letter/coming_soon.jpg",
      "assets/image_letter/letter_consonant_15.jpg",
      "assets/image_letter/letter_consonant_16.jpg",
      "assets/image_letter/letter_consonant_17.jpg",
      "assets/image_letter/letter_consonant_18.jpg",
      // This
      "assets/image_letter/coming_soon.jpg",
      "assets/image_letter/letter_consonant_20.jpg",

      "assets/image_letter/letter_consonant_21.jpg",
      "assets/image_letter/letter_consonant_22.jpg",
      "assets/image_letter/letter_consonant_23.jpg",
      "assets/image_letter/letter_consonant_24.jpg",
      "assets/image_letter/letter_consonant_25.jpg",
      "assets/image_letter/letter_consonant_26.jpg",
      "assets/image_letter/letter_consonant_27.jpg",
      "assets/image_letter/letter_consonant_28.jpg",
      "assets/image_letter/letter_consonant_29.jpg",
      "assets/image_letter/letter_consonant_30.jpg",

      "assets/image_letter/letter_consonant_31.jpg",
      "assets/image_letter/letter_consonant_32.jpg",
      "assets/image_letter/letter_consonant_33.jpg",
      "assets/image_letter/letter_consonant_34.jpg",
      "assets/image_letter/letter_consonant_35.jpg",
      "assets/image_letter/letter_consonant_36.jpg"
    ];

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(new LetterNumberModalImage(
          position: i,
          primaryLetter: primaryLetter[i],
          primaryWord: primaryWord[i],
          secondaryLetter: secondaryLetter[i],
          secondaryWord: secondaryWord[i],
          imageData: imageData[i]
      ),
      );
    }
    return data;
  }

  _buildLesson03() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "scent", "fidgety", "king", "instrument", "baby food", "baby clothes", "daily food", "necklace", "paternal uncle", "maternal uncle",
      "mother", "storm", "maadal", "pomegranate", "book", "ant", "insect", "butter", "black pepper", "cumin"
    ];

    List<String> secondaryWord = [
      "मगमग", "चकचक", "राजा", "बाजा", "पापा", "नाना", "खाजा", "माला", "काका", "मामा",
      "आमा", "बतास", "मादल", "अनार", "किताब", "कमिला", "किरा", "घिउ", "मरिच", "जिरा"
    ];

    List<String> tertiaryWord = [
      "mug mug", "chak chak", "raja", "baja", "papa", "nana", "khaja", "maala", "kaka", "mama",
      "aama", "batas", "madal", "anaar", "kitab", "kamila", "kira", "ghiu", "marich", "jeera"
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
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
  }

  _buildLesson04() {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    List<String> primaryWord = [
      "cup", "top", "rubber", "lotus",
      "flower pot",
      "pen", "house", "canal", "city", "commotion",
      "morning", "glass", "tea", "regret", "sitar", "pillow", "big sister", "small sister", "baby girl", "small girl"
    ];

    List<String> secondaryWord = [
      "कप", "टप", "रबर", "कमल",
      "गमला",
      "कलम", "घर", "नहर", "सहर", "खलबल",
      "बिहान", "गिलास", "चिया", "चुक्चुकी", "सितार", "तकिया", "दिदी", "बहिनी", "नानी", "सानी"
    ];

    List<String> tertiaryWord = [
      "cup", "top", "rubber", "kamal",
      "gamala",
      "kalam", "ghar", "nahar", "sahar", "khal bal",
      "bihan", "glass", "chiya", "chukchuki", "sitar", "takiya", "didi", "bahini", "naani", "saani"
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
    var shuffleData = data.toList()
      ..shuffle();
    return shuffleData;
  }

}
