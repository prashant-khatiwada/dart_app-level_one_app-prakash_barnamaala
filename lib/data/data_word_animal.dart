import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordAnimal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildAnimalList()),
            new WordList(_buildBirdList()),
            new WordList(_buildFishList()),
            new WordList(_buildInsectList()),
            new WordList(_buildReptileList()),
          ])),
    ));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "Animal",
        ),
        Tab(
          text: "Bird",
        ),
        Tab(
          text: "Fish",
        ),
        Tab(
          text: "Insect",
        ),
        Tab(
          text: "Reptile",
        )

      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Animal', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildAnimalList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Camel", "Musk Deer", "Bear", "Sheep", "Buffalo", "Mouse", "Deer", "Ape",
      "Squirrel", "Bull", "Jackal", "Fox", "Lion", "Pig", "Elephant", "Kangaroo", "Dog", "Goat",
      "Mule", "Rabbit", "Donkey", "Cow", "Rhinoceros", "Ox", "Horse", "Panther", "Chetaah", "Mole",
      "Giraffe", "Zebra", "Porcupine", "Mongoose", "Wild Boar", "Tiger", "Stag", "Monkey", "Cat", "Hyena"
    ];

    List<String> secondaryWord = [
      "ऊट", "कस्तुरी मृग", "भालु", "भेडा", "भैँसी", "मुसा", "मृग", "लंगुर", "लोखर्के", "साँढे",
      "स्याल", "फ्याउरो", "सिंह", "सुँगुर", "हात्ती", "कंगारु", "कुकुर", "खसी",
      "खच्चर", "खरायो",
      "गधा", "गाई", "गैंडा", "गोरु", "घोडा", "कालो चतुवा", "चितुवा", "छुचुन्द्रो",
      "जिराफ", "पाटे घोडा",
      "दुम्सी", "न्याउरी मुसो", "बदेल", "बाघ", "बाह्र सिगा", "बाँदर", "बिरालो", "ब्वाँसो"
    ];


    List<String> tertiaryWord = [
      "unt", "kasturi mriga", "bhalu", "bheda", "bhainsi", "musa", "mriga, harina", "langura, dhedu",
      "lokharke", "sandhe", "syala", "phayauro", "sinh", "sungur", "hatti", "kangaru", "kukur", "khasi",
      "khaccara", "kharayo", "gadha", "gai", "gainda", "goru", "ghoda", "kalo bagh", "chituwa", "chucundro",
      "jiraph", "pate ghoda", "dumsi", "nyauri muso", "banel", "bagh", "bahra singa", "bandar", "biralo", "bwanso"
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

  _buildBirdList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "woodpecker", "crow", "raven", "hen", "cuckoo", "eagle", "vulture", "swallow", "bat", "kite",
      "nightingale", "dove", "partige", "magpie", "pigeon", "quail", "hawk", "sparrow", "lark", "peacock",
      "owl", "swan", "crane", "parrot", "duck", "lophophorus"    ];

    List<String> secondaryWord = [
      "कठफोडा", "काग", "कालो कौवा", "कुखुरा", "कोइली", "गरुड", "गिद्ध", "गौंथली", "चमेरो", "चिल",
      "जुरेली", "ढुक्कुर", "तित्रा", "धोबी चरा", "परेवा", "बटाई", "बाज", "भङ्गेरा", "भद्राचरा", "मुजुर",
      "लाटोकोसेरो", "राजहाँस", "सारस", "सुगा", "हाँस", "डाँफे"    ];


    List<String> tertiaryWord = [
      "kathaphora", "kag", "kalo kauva", "kukhura", "koili", "garud", "giddha", "gauthali", "chamero", "chiel",
      "jureli", "dhukkur", "titra", "dhobi chara", "pareva", "battai", "baaj", "bhangera", "bharad’dhaja cara", "mujur",
      "latokosero", "rajahans", "saras", "suga", "hans", "danfe"    ];

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

  _buildInsectList() {
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

  _buildReptileList() {
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
