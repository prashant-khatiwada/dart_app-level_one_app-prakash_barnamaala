import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordFood extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildDailyFoodList()),
            new WordList(_buildVegetableList()),
            new WordList(_buildDrinkList()),
            new WordList(_buildSpiceList()),
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Daily Food",
        ),
        Tab(
          text: "Vegetable",
        ),
        Tab(
          text: "Drink",
        ),
        Tab(
          text: "Spice",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Food', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildDailyFoodList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "rice",
      "lentils",
      "vegetables",
      "meat",
      "pickel",
      "light meal - breakfast",
      "heavy meal - dinner"
    ];

    List<String> secondaryWord = [
      "भात",
      "दाल",
      "तरकारी",
      "मासु",
      "अचार",
      "खाजा",
      "खाना"
    ];


    List<String> tertiaryWord = [
      "bhaat",
      "daal",
      "tarkaari",
      "maasu",
      "achaar",
      "khaaja",
      "khaana"
    ];

    List<String> audioData = [
      'audio/word_food_general_01.mp3',
      "audio/word_food_general_02.mp3",
      "audio/word_food_general_03.mp3",
      "audio/word_food_general_04.mp3",
      "audio/word_food_general_05.mp3",
      "audio/word_food_general_06.mp3",
      "audio/word_food_general_07.mp3"
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

  _buildVegetableList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Potato",
      "Lime",
      "Bitter Gourd",
      "Cauliflower",
      "Cucumber",
      "Mulberry",
      "Cucurbit Gourd",
      "Pea",
      "Green Chilli",

      "Kohlrabi",
      "Mushroom",
      "Snake Gourd",
      "Yam",
      "Cilantro",
      "Spinach",
      "Colocassia Fruit",
      "Taro Plant",
      "Mint",

      "Pumpkin",
      "Cabbage",
      "Egg Plant",
      "Okra",
      "Maize",
      "Radish",
      "Yam",
      "Sweet Potato",
      "Turnip",
      "Sago",

      "Bean",
      "Sugar Beat"
    ];

    List<String> secondaryWord = [
      "आलु",
      "कागती",
      "करेला",
      "काउली",
      "काक्रो",
      "किम्बु",
      "कुभिण्डो",
      "केराउ",
      "खुर्सानी",

      "ग्याँठ कोभी",
      "च्याउ",
      "चिचिन्डो",
      "तरुल",
      "धनिया",
      "पालक",
      "पिंडालु",
      "कर्कलो",
      "पुदिना",

      "फर्सी",
      "बन्दागोबी",
      "भान्टा",
      "भिन्डी",
      "मकै",
      "मूला",
      "तरुल",
      "सकरकन्द",
      "सलगम",
      "साबुदाना",

      "सिमी",
      "सुठनी,अलुवा"
    ];


    List<String> tertiaryWord = [
      "aaloo",
      "kagati",
      "karela",
      "kauli",
      "kakro",
      "kimbu",
      "kuvindo",
      "kerau",
      "khursaani",
      "gyathh kobi",

      "chyau",
      "chichindo",
      "tarul",
      "dhaniya",
      "palak",
      "pidalu",
      "karkalo",
      "pudina",
      "farsi",
      "bandagobi",

      "baigan",
      "bhindi",
      "makai",
      "muula",
      "tarul",
      "sakarkanda",
      "salgam",
      "saabu daana",
      "simi",
      "suthani"
    ];

    List<String> audioData = [
      'audio/word_food_vegetable_01.mp3',
      "audio/word_food_vegetable_02.mp3",
      "audio/word_food_vegetable_03.mp3",
      "audio/word_food_vegetable_04.mp3",
      "audio/word_food_vegetable_05.mp3",
      "audio/word_food_vegetable_06.mp3",
      "audio/word_food_vegetable_07.mp3",
      "audio/word_food_vegetable_08.mp3",
      "audio/word_food_vegetable_09.mp3",
      "audio/word_food_vegetable_10.mp3",

      'audio/word_food_vegetable_11.mp3',
      "audio/word_food_vegetable_12.mp3",
      "audio/word_food_vegetable_13.mp3",
      "audio/word_food_vegetable_14.mp3",
      "audio/word_food_vegetable_15.mp3",
      "audio/word_food_vegetable_16.mp3",
      "audio/word_food_vegetable_17.mp3",
      "audio/word_food_vegetable_18.mp3",
      "audio/word_food_vegetable_19.mp3",
      "audio/word_food_vegetable_20.mp3",

      'audio/word_food_vegetable_21.mp3',
      "audio/word_food_vegetable_22.mp3",
      "audio/word_food_vegetable_23.mp3",
      "audio/word_food_vegetable_24.mp3",
      "audio/word_food_vegetable_25.mp3",
      "audio/word_food_vegetable_26.mp3",
      "audio/word_food_vegetable_27.mp3",
      "audio/word_food_vegetable_28.mp3",
      "audio/word_food_vegetable_29.mp3",
      "audio/word_food_vegetable_30.mp3"
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

  _buildDrinkList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "water",
      "tea",
      "coffee",
      "milk",
      "thick milk shake",
      "thin milk shake",
      "watery edible fluid",
      "juice",
      "alcohol",
      "thicker edible fluid"
    ];

    List<String> secondaryWord = [
      "पानी",
      "चिया",
      "कफी",
      "दुध",
      "लस्सी",
      "मोहि",
      "रस",
      "शरबत",
      "रक्सी",
      "बाक्लो"
    ];


    List<String> tertiaryWord = [
      "paani",
      "chiya",
      "kafi",
      "dudh",
      "lassi",
      "mohi",
      "ras",
      "sharbat",
      "rakshi",
      "ledo"
    ];

    List<String> audioData = [
      'audio/word_food_drink_01.mp3',
      "audio/word_food_drink_02.mp3",
      "audio/word_food_drink_03.mp3",
      "audio/word_food_drink_04.mp3",
      "audio/word_food_drink_05.mp3",
      "audio/word_food_drink_06.mp3",
      "audio/word_food_drink_07.mp3",
      "audio/word_food_drink_08.mp3",
      "audio/word_food_drink_09.mp3",
      "audio/word_food_drink_10.mp3"
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

  _buildSpiceList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Salt",
      "Ginger",
      "Garlic",
      "Onion",
      "Tomato",
      "Green Chilli",
      "Red Chilli",
      "Cumin",
      "Coriander",
      "Turmeric",

      "Fenugreek seeds",
      "Szechwan pepper",
      "Asafoetida",
      "Thyme seeds",
      "Himalayan aromatic leaf garlic",
      "Sesame Seed",
      "Mustard Seed",
      "Coconut Oil",
      "Lime",
      "Lemon"    ];

    List<String> secondaryWord = [
      "नुन",
      "अदुवा",
      "लसुन",
      "प्याज",
      "टमाटर",
      "हरियो खोर्सानी",
      "रातो खोर्सानी",
      "जिरा",
      "धनिया",
      "बेसार",

      "मेथी",
      "टिमुर",
      "हिंग़",
      "ज्वानो",
      "जिम्बु",
      "तिल",
      "रायो",
      "नरिवल तेल",
      "ज्यामिर",
      "कागति"
    ];


    List<String> tertiaryWord = [
      "nuun",
      "aduwa",
      "lasun",
      "pyaaj",
      "tamatar",
      "hariyo khursani",
      "raato khursani",
      "jeera",
      "dhaniya",
      "besaar",

      "methi",
      "timmur",
      "hing",
      "jwano",
      "jimbu",
      "til",
      "raayo",
      "nibu",
      "nibu",
      "kagati"
    ];

    List<String> audioData = [
      'audio/word_food_spice_01.mp3',
      "audio/word_food_spice_02.mp3",
      "audio/word_food_spice_03.mp3",
      "audio/word_food_spice_04.mp3",
      "audio/word_food_spice_05.mp3",
      "audio/word_food_spice_06.mp3",
      "audio/word_food_spice_07.mp3",
      "audio/word_food_spice_08.mp3",
      "audio/word_food_spice_09.mp3",
      "audio/word_food_spice_10.mp3",

      'audio/word_food_spice_11.mp3',
      "audio/word_food_spice_12.mp3",
      "audio/word_food_spice_13.mp3",
      "audio/word_food_spice_14.mp3",
      "audio/word_food_spice_15.mp3",
      "audio/word_food_spice_16.mp3",
      "audio/word_food_spice_17.mp3",
      "audio/word_food_spice_18.mp3",
      "audio/word_food_spice_19.mp3",
      "audio/word_food_spice_20.mp3"
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
