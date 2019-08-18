import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordAnimal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordListImage(_buildAnimalListImage()),
            new WordListImage(_buildBirdListImage()),
            // new WordList(_buildAnimalList()),
            // new WordList(_buildBirdList()),
            new WordListImage(_buildInsectListImage()),
            new WordListImage(_buildReptileListImage()),
            new WordList(_buildFishList()),

          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Animal",
        ),
        Tab(
          text: "Bird",
        ),
        Tab(
          text: "Insect",
        ),
        Tab(
          text: "Reptile",
        ),
        Tab(
          text: " Fish",
        )

      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Animal', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildAnimalListImage() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Camel",
      "Musk Deer",
      "Bear",
      "Sheep",
      "Buffalo",
      "Mouse",
      "Deer",
      "Ape",
      "Squirrel",
      "Bull",
      "Jackal",
      "Fox",
      "Lion",
      "Pig",
      "Elephant",
      "Kangaroo",
      "Dog",
      "Goat",
      "Mule",
      "Rabbit",
      "Cow",
      "Rhinoceros",
      "Ox",
      "Horse",
      "Panther",
      "Chetaah",
      "Mole",
      "Giraffe",
      "Zebra",
      "Porcupine",
      "Mongoose",
      "Wild Boar",
      "Tiger",
      "Stag",
      "Monkey",
      "Cat",
      "Hyena"
    ];

    List<String> secondaryWord = [
      "ऊट",
      "कस्तुरी मृग",
      "भालु",
      "भेडा",
      "भैँसी",
      "मुसा",
      "मृग",
      "लंगुर",
      "लोखर्के",
      "साँढे",
      "स्याल",
      "फ्याउरो",
      "सिंह",
      "सुँगुर",
      "हात्ती",
      "कंगारु",
      "कुकुर",
      "खसी",
      "खच्चर",
      "खरायो",
      "गाई",
      "गैंडा",
      "गोरु",
      "घोडा",
      "कालो चतुवा",
      "चितुवा",
      "छुचुन्द्रो",
      "जिराफ",
      "पाटे घोडा",
      "दुम्सी",
      "न्याउरी मुसो",
      "बदेल",
      "बाघ",
      "बाह्र सिगा",
      "बाँदर",
      "बिरालो",
      "ब्वाँसो"
    ];


    List<String> tertiaryWord = [
      "unt",
      "kasturi mriga",
      "bhalu",
      "bheda",
      "bhainsi",
      "musa",
      "mriga, harina",
      "langura, dhedu",
      "lokharke",
      "sandhe",
      "syala",
      "phayauro",
      "sinh",
      "sungur",
      "hatti",
      "kangaru",
      "kukur",
      "khasi",
      "khacharr",
      "kharayo",
      "gai",
      "gainda",
      "goru",
      "ghoda",
      "kalo bagh",
      "chituwa",
      "chucundro",
      "jiraph",
      "pate ghoda",
      "dumsi",
      "nyauri muso",
      "banel",
      "bagh",
      "bahra singa",
      "bandar",
      "biralo",
      "bwanso"
    ];

    List<String> imageData = [
      "assets/image_word/animal/animal_animal_01.jpg",
      "assets/image_word/animal/animal_animal_02.jpg",
      "assets/image_word/animal/animal_animal_03.jpg",
      "assets/image_word/animal/animal_animal_04.jpg",
      "assets/image_word/animal/animal_animal_05.jpg",
      "assets/image_word/animal/animal_animal_06.jpg",
      "assets/image_word/animal/animal_animal_07.jpg",
      "assets/image_word/animal/animal_animal_08.jpg",
      "assets/image_word/animal/animal_animal_09.jpg",
      "assets/image_word/animal/animal_animal_10.jpg",
      "assets/image_word/animal/animal_animal_11.jpg",
      "assets/image_word/animal/animal_animal_12.jpg",
      "assets/image_word/animal/animal_animal_13.jpg",
      "assets/image_word/animal/animal_animal_14.jpg",
      "assets/image_word/animal/animal_animal_15.jpg",
      "assets/image_word/animal/animal_animal_16.jpg",
      "assets/image_word/animal/animal_animal_17.jpg",
      "assets/image_word/animal/animal_animal_18.jpg",
      "assets/image_word/animal/animal_animal_19.jpg",
      "assets/image_word/animal/animal_animal_20.jpg",
      "assets/image_word/animal/animal_animal_21.jpg",
      "assets/image_word/animal/animal_animal_22.jpg",
      "assets/image_word/animal/animal_animal_23.jpg",
      "assets/image_word/animal/animal_animal_24.jpg",
      "assets/image_word/animal/animal_animal_25.jpg",
      "assets/image_word/animal/animal_animal_26.jpg",
      "assets/image_word/animal/animal_animal_27.jpg",
      "assets/image_word/animal/animal_animal_28.jpg",
      "assets/image_word/animal/animal_animal_29.jpg",
      "assets/image_word/animal/animal_animal_30.jpg",
      "assets/image_word/animal/animal_animal_31.jpg",
      "assets/image_word/animal/animal_animal_32.jpg",
      "assets/image_word/animal/animal_animal_33.jpg",
      "assets/image_word/animal/animal_animal_34.jpg",
      "assets/image_word/animal/animal_animal_35.jpg",
      "assets/image_word/animal/animal_animal_36.jpg",
      "assets/image_word/animal/animal_animal_37.jpg"
    ];

    List<String> audioData = [
      'audio/word_animal_animal_01.mp3',
      "audio/word_animal_animal_02.mp3",
      "audio/word_animal_animal_03.mp3",
      "audio/word_animal_animal_04.mp3",
      "audio/word_animal_animal_05.mp3",
      "audio/word_animal_animal_06.mp3",
      "audio/word_animal_animal_07.mp3",
      "audio/word_animal_animal_08.mp3",
      "audio/word_animal_animal_09.mp3",
      "audio/word_animal_animal_10.mp3",

      "audio/word_animal_animal_11.mp3",
      "audio/word_animal_animal_12.mp3",
      "audio/word_animal_animal_13.mp3",
      "audio/word_animal_animal_14.mp3",
      "audio/word_animal_animal_15.mp3",
      "audio/word_animal_animal_16.mp3",
      "audio/word_animal_animal_17.mp3",
      "audio/word_animal_animal_18.mp3",
      "audio/word_animal_animal_19.mp3",
      "audio/word_animal_animal_20.mp3",

      "audio/word_animal_animal_21.mp3",
      "audio/word_animal_animal_22.mp3",
      "audio/word_animal_animal_23.mp3",
      "audio/word_animal_animal_24.mp3",
      "audio/word_animal_animal_25.mp3",
      "audio/word_animal_animal_26.mp3",
      "audio/word_animal_animal_27.mp3",
      "audio/word_animal_animal_28.mp3",
      "audio/word_animal_animal_29.mp3",
      "audio/word_animal_animal_30.mp3",

      "audio/word_animal_animal_31.mp3",
      "audio/word_animal_animal_32.mp3",
      "audio/word_animal_animal_33.mp3",
      "audio/word_animal_animal_34.mp3",
      "audio/word_animal_animal_35.mp3",
      "audio/word_animal_animal_36.mp3",
      "audio/word_animal_animal_37.mp3"
    ];
    
    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: imageData[i],
            audioData: audioData[i]
        ),
      );
    }
    return data;
  }

  _buildBirdListImage() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "woodpecker",
      "crow",
      "raven",
      "hen",
      "cuckoo",
      "eagle",
      "vulture",
      "swallow",
      "bat",
      "kite",
      "nightingale",
      "dove",
      "partige",
      "magpie",
      "pigeon",
      "quail",
      "hawk",
      "sparrow",
      "lark",
      "peacock",
      "owl",
      "swan",
      "crane",
      "parrot",
      "duck",
      "lophophorus"
    ];

    List<String> secondaryWord = [
      "कठफोडा",
      "काग",
      "कालो कौवा",
      "कुखुरा",
      "कोइली",
      "गरुड",
      "गिद्ध",
      "गौंथली",
      "चमेरो",
      "चिल",
      "जुरेली",
      "ढुक्कुर",
      "तित्रा",
      "धोबी चरा",
      "परेवा",
      "बटाई",
      "बाज",
      "भङ्गेरा",
      "भद्राचरा",
      "मुजुर",
      "लाटोकोसेरो",
      "राजहाँस",
      "सारस",
      "सुगा",
      "हाँस",
      "डाँफे"
    ];


    List<String> tertiaryWord = [
      "kathaphora",
      "kag",
      "kalo kauva",
      "kukhura",
      "koili",
      "garud",
      "giddha",
      "gauthali",
      "chamero",
      "chiel",
      "jureli",
      "dhukkur",
      "titra",
      "dhobi chara",
      "pareva",
      "battai",
      "baaj",
      "bhangera",
      "bharad’dhaja cara",
      "mujur",
      "latokosero",
      "rajahans",
      "saras",
      "suga",
      "hans",
      "danfe"
    ];

    List<String> imageData = [
      "assets/image_word/animal/animal_bird_01.jpg",
      "assets/image_word/animal/animal_bird_02.jpg",
      "assets/image_word/animal/animal_bird_03.jpg",
      "assets/image_word/animal/animal_bird_04.jpg",
      "assets/image_word/animal/animal_bird_05.jpg",
      "assets/image_word/animal/animal_bird_06.jpg",
      "assets/image_word/animal/animal_bird_07.jpg",
      "assets/image_word/animal/animal_bird_08.jpg",
      "assets/image_word/animal/animal_bird_09.jpg",
      "assets/image_word/animal/animal_bird_10.jpg",
      "assets/image_word/animal/animal_bird_11.jpg",
      "assets/image_word/animal/animal_bird_12.jpg",
      "assets/image_word/animal/animal_bird_13.jpg",
      "assets/image_word/animal/animal_bird_14.jpg",
      "assets/image_word/animal/animal_bird_15.jpg",
      "assets/image_word/animal/animal_bird_16.jpg",
      "assets/image_word/animal/animal_bird_17.jpg",
      "assets/image_word/animal/animal_bird_18.jpg",
      "assets/image_word/animal/animal_bird_19.jpg",
      "assets/image_word/animal/animal_bird_20.jpg",
      "assets/image_word/animal/animal_bird_21.jpg",
      "assets/image_word/animal/animal_bird_22.jpg",
      "assets/image_word/animal/animal_bird_23.jpg",
      "assets/image_word/animal/animal_bird_24.jpg",
      "assets/image_word/animal/animal_bird_25.jpg",
      "assets/image_word/animal/animal_bird_26.jpg"
    ];

    List<String> audioData = [
      'audio/word_animal_bird_01.mp3',
      "audio/word_animal_bird_02.mp3",
      "audio/word_animal_bird_03.mp3",
      "audio/word_animal_bird_04.mp3",
      "audio/word_animal_bird_05.mp3",
      "audio/word_animal_bird_06.mp3",
      "audio/word_animal_bird_07.mp3",
      "audio/word_animal_bird_08.mp3",
      "audio/word_animal_bird_09.mp3",
      "audio/word_animal_bird_10.mp3",

      "audio/word_animal_bird_11.mp3",
      "audio/word_animal_bird_12.mp3",
      "audio/word_animal_bird_13.mp3",
      "audio/word_animal_bird_14.mp3",
      "audio/word_animal_bird_15.mp3",
      "audio/word_animal_bird_16.mp3",
      "audio/word_animal_bird_17.mp3",
      "audio/word_animal_bird_18.mp3",
      "audio/word_animal_bird_19.mp3",
      "audio/word_animal_bird_20.mp3",

      "audio/word_animal_bird_21.mp3",
      "audio/word_animal_bird_22.mp3",
      "audio/word_animal_bird_23.mp3",
      "audio/word_animal_bird_24.mp3",
      "audio/word_animal_bird_25.mp3",
      "audio/word_animal_bird_26.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: imageData[i],
            audioData: audioData[i]
        ),
      );
    }
    return data;
  }

  _buildInsectListImage() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Insect",
      "Bug",
      "Flea",
      "Earthworm",
      "Beatle",
      "Glow Worm",
      "Lice",
      "Leech",
      "Cricket",
      "Termite",

      "Butterfly",
      "Fly",
      "Grasshopper",
      "Wasp",
      "Mosquito",
      "Bee",
      "Silk Worm",
      "Locust",
      "Spider"
    ];

    List<String> secondaryWord = [
      "किरा",
      "उडुस",
      "उपियाँ",
      "गँड्यौला",
      "गोब्रेकीरा",
      "जुनकिरी",
      "जुम्रा",
      "जुका",
      "झयाउँकीरी",
      "धमिरा",

      "पुतली",
      "झींगा",
      "फट्रयांग्रा",
      "बारुला",
      "मच्छर",
      "मौरी",
      "रेशम किरा",
      "सलह",
      "माकुरा"
    ];


    List<String> tertiaryWord = [
      "kira",
      "udus",
      "upiya",
      "gadyola",
      "gambrekira",
      "junkira",
      "jumro",
      "juka",
      "jhyaukiri",
      "dhamira",
      "putali",
      "jhinga",
      "fatyangre",
      "barula",
      "machchhar",
      "mouri",
      "resham kira",
      "salah",
      "makura"
    ];

    List<String> imageData = [
      "assets/image_word/animal/animal_insect_01.jpg",
      "assets/image_word/animal/animal_insect_02.jpg",
      "assets/image_word/animal/animal_insect_03.jpg",
      "assets/image_word/animal/animal_insect_04.jpg",
      "assets/image_word/animal/animal_insect_05.jpg",
      "assets/image_word/animal/animal_insect_06.jpg",
      "assets/image_word/animal/animal_insect_07.jpg",
      "assets/image_word/animal/animal_insect_08.jpg",
      "assets/image_word/animal/animal_insect_09.jpg",
      "assets/image_word/animal/animal_insect_10.jpg",

      "assets/image_word/animal/animal_insect_11.jpg",
      "assets/image_word/animal/animal_insect_12.jpg",
      "assets/image_word/animal/animal_insect_13.jpg",
      "assets/image_word/animal/animal_insect_14.jpg",
      "assets/image_word/animal/animal_insect_15.jpg",
      "assets/image_word/animal/animal_insect_16.jpg",
      "assets/image_word/animal/animal_insect_17.jpg",
      "assets/image_word/animal/animal_insect_18.jpg",
      "assets/image_word/animal/animal_insect_19.jpg"
    ];

    List<String> audioData = [
      'audio/word_animal_insect_01.mp3',
      "audio/word_animal_insect_02.mp3",
      "audio/word_animal_insect_03.mp3",
      "audio/word_animal_insect_04.mp3",
      "audio/word_animal_insect_05.mp3",
      "audio/word_animal_insect_06.mp3",
      "audio/word_animal_insect_07.mp3",
      "audio/word_animal_insect_08.mp3",
      "audio/word_animal_insect_09.mp3",
      "audio/word_animal_insect_10.mp3",

      "audio/word_animal_insect_11.mp3",
      "audio/word_animal_insect_12.mp3",
      "audio/word_animal_insect_13.mp3",
      "audio/word_animal_insect_14.mp3",
      "audio/word_animal_insect_15.mp3",
      "audio/word_animal_insect_16.mp3",
      "audio/word_animal_insect_17.mp3",
      "audio/word_animal_insect_18.mp3",
      "audio/word_animal_insect_19.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: imageData[i],
            audioData: audioData[i]
        ),
      );
    }
    return data;
  }

  _buildReptileListImage() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Snake", "Crocodile", "Turtle", "Lizard", "Boa",
      "Crab", "Scorpian", "Oysters", "Snail"
    ];

    List<String> secondaryWord = [
      "सर्प", "गोही", "कछुवा", "छेपारो", "अजिंगर",
      "गँगटो", "बिच्छी", "सिपी", "शंखे कीरा"
    ];


    List<String> tertiaryWord = [
      "saanp", "gohi", "kachuwa", "cheparo", "ajiṅgara",
      "gangato", "bichchhi", "sipi", "shanke kira"
    ];

    List<String> imageData = [
      "assets/image_word/animal/animal_reptile_01.jpg",
      "assets/image_word/animal/animal_reptile_02.jpg",
      "assets/image_word/animal/animal_reptile_03.jpg",
      "assets/image_word/animal/animal_reptile_04.jpg",
      "assets/image_word/animal/animal_reptile_05.jpg",
      "assets/image_word/animal/animal_reptile_06.jpg",
      "assets/image_word/animal/animal_reptile_07.jpg",
      "assets/image_word/animal/animal_reptile_08.jpg",
      "assets/image_word/animal/animal_reptile_09.jpg"
    ];

    List<String> audioData = [
      'audio/word_animal_reptile_01.mp3',
      "audio/word_animal_reptile_02.mp3",
      "audio/word_animal_reptile_03.mp3",
      "audio/word_animal_reptile_04.mp3",
      "audio/word_animal_reptile_05.mp3",
      "audio/word_animal_reptile_06.mp3",
      "audio/word_animal_reptile_07.mp3",
      "audio/word_animal_reptile_08.mp3",
      "audio/word_animal_reptile_09.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: imageData[i],
            audioData: audioData[i]
        ),
      );
    }
    return data;
  }

  _buildFishList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "fish",
      "Gangetic ailia",
      "Wallago",
      "Giant river-catfish",
      "Kalabans",
      "Snow trout",
      "Slender rasbora",
      "Copper mahseer",
      "Walking catfish"
    ];

    List<String> secondaryWord = [
      "माछा",
      "अईला",
      "बुआरी",
      "तेंग्रा",
      "रोहु",
      "असला",
      "डेडुआ",
      "कत्ले",
      "मुंग्री"
    ];


    List<String> tertiaryWord = [
      "machha",
      "ailia",
      "bohari",
      "tengra",
      "rohu",
      "asala",
      "dedua",
      "katle",
      "mungri"
    ];

    List<String> audioData = [
      'audio/word_animal_fish_01.mp3',
      "audio/word_animal_fish_02.mp3",
      "audio/word_animal_fish_03.mp3",
      "audio/word_animal_fish_04.mp3",
      "audio/word_animal_fish_05.mp3",
      "audio/word_animal_fish_06.mp3",
      "audio/word_animal_fish_07.mp3",
      "audio/word_animal_fish_08.mp3",
      "audio/word_animal_fish_09.mp3"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            audioData: audioData[i]
        ),
      );
    }
    return data;
  }


}
