import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordPlant extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildPlantList()),
            new WordList(_buildFlowerList()),
            new WordList(_buildFruitList())
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      tabs: [
        Tab(
          text: "Plant",
        ),
        Tab(
          text: "Flower",
        ),
        Tab(
          text: "Fruit",
        ),
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Plant', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );



  _buildPlantList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Cotton",
      "Oleander",
      "Carambola",
      "Lotus",
      "Mulberry",
      "Pandanus",
      "Daisy",
      "Rose",
      "Chrysanthemum",
      "Grass",

      "Jasmine",
      "Magnolia",
      "Sapodilla",
      "Night Shade",
      "Cobra Flower",
      "Lily",
      "Hemp",
      "Betel",
      "Lilac",
      "Amaranthus",

      "Touch-Me-Not",
      "Marigold",
      "Silk Cotton"
    ];

    List<String> secondaryWord = [
      "कपास",
      "करवीर",
      "कांपरो",
      "कमल",
      "किम्बु",
      "केंवरा",
      "घन्टी फूल",
      "गुलाफ",
      "गोदावरी फूल",
      "घाँस",

      "चमेली",
      "चम्पा",
      "सपाटो",
      "धतुरा",
      "नागभिका",
      "नीलकमल",
      "पटुआ",
      "पान",
      "बकाइनो",
      "मखमली फूल",

      "लाजवन्ती झार",
      "सयपत्री फुल",
      "सिमल"
    ];


    List<String> tertiaryWord = [
      "kapas ",
      "karbir",
      "kamrakh",
      "kamal",
      "kimbu",
      "kewara",
      "gulbahar",
      "gulaaf",
      "godawari f",
      "ghaas",

      "chameli",
      "champa",
      "cheeku",
      "dhatura",
      "naagvhika",
      "neelkamal",
      "patuwa",
      "paan",
      "bakaino",
      "makhamali",

      "lazzawati",
      "sayapatri",
      "simal"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildFlowerList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Rose",
      "Lotus",
      "Camellia",
      "Rhododendron",
      "Gladiolus",

      "Chrysanthemum",
      "Blue Passion Flower",
      "Jasmine",
      "Tulip",
      "Hibiscus",

      "Indian Trumpet Flower",
      "Moss-rose Purslane",
      "Angel’s Trumpet",
      "Night-flowering Jasmine",
      "Jacaranda",

      "Purple globe amaranth",
      "Poinsettia",
      "Marigold",
      "Orchid",
      "Hydrangea",

      "Sunflower",
      "Night-blooming cestrum",
      "Canna"
    ];

    List<String> secondaryWord = [
      "गुलाब",
      "कमल",
      "क्यामेलिया",
      "गुराँस",
      "ग्लेडुलस",

      "गोदावरी",
      "घडीफूल",
      "चमेली",
      "ट्यूलिप",
      "जिभ्रे फूल ",

      "टोटला",
      "दशबजे फूल",
      "धोक्रे फूल",
      "पारिजात",
      "भँगेरी फूल",

      "मखमली",
      "लालुपाते",
      "सयपत्री",
      "सुनगाभा",
      "सुगन्धराज",

      "सूर्यमुखी",
      "रातकी रानी",
      "सर्वदा फूल"
    ];


    List<String> tertiaryWord = [
      "gulaab",
      "kamal",
      "kyameliya",
      "guras",
      "gledulas",

      "godavari",
      "ghadiphul",
      "chameli",
      "tyulip",
      "jibro phul",

      "totala",
      "dashbaje phul",
      "dhokre phul",
      "paarijaat",
      "bhangeri phul",

      "makhamali",
      "lalupate",
      "sayapatri",
      "sungabha",
      "sugandharaaj",

      "suryamukhi",
      "raat`ki rani",
      "sarwada phul"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }

  _buildFruitList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Pineapple",
      "Pomegranate",
      "Guava",
      "Grapes",
      "Apricot",
      "Mango",
      "Peach",
      "Flax",
      "Plum",
      "Wallnut",

      "Sugar Cane",
      "Tangerine",
      "Cashew",
      "Raisin",
      "Bayberry",
      "Winter Melon",
      "Banana",
      "Date",
      "Watermelon",
      "Carrot",

      "Chinese Peanuts",
      "Olive",
      "Japanese Plum",
      "Tamarind",
      "Coconut",
      "Key Lime",
      "Papaya",
      "Pistachio",
      "Almond",
      "Plum",

      "Peanut",
      "Sweet Lime",
      "Litchi",
      "Currant",
      "Custard Apple",
      "Apple",
      "Orange",
      "Blueberries"    ];

    List<String> secondaryWord = [
      "भुर्इकटहर ",
      "अनार",
      "अम्बा",
      "अंगुर",
      "अंजीर",
      "आँप",
      "आरु",
      "आलस",
      "आलुबखडा",
      "ओखर",

      "उखु",
      "कटहर",
      "काजु",
      "किसमिस",
      "काफल",
      "काशीफल",
      "केरा",
      "खजूर",
      "खरबुजा",
      "गाजर",

      "चिनिया बदाम",
      "जैतुन",
      "जापानी बयर",
      "तितरी,र्इमली",
      "नरिवल",
      "ज्यामिर",
      "मेवा",
      "पेस्ता",
      "बदाम",
      "बयर",

      "मुँगफली",
      "मौसमी",
      "लिची",
      "मनक्का",
      "सरीफा",
      "स्याउ",
      "सुन्तला",
      "निलो ऐंसेलु"
    ];


    List<String> tertiaryWord = [
      "bhuikathar ",
      "anaar",
      "amba",
      "angur",
      "anjir",
      "aap",
      "aaru",
      "aalas",
      "aalubakhada",
      "okhhar",

      "utkhu",
      "kathar",
      "kaaju",
      "kismis",
      "kaafal",
      "kaashifal",
      "kera",
      "khajur",
      "kharbujja",
      "gazar",

      "chiniya badam",
      "jaitun",
      "japani bayar",
      "titri",
      "nariwal",
      "jyamir",
      "mewa",
      "pesta",
      "badam",
      "bayar",
      "mungfalli",

      "moussambi",
      "lichi",
      "manakka",
      "sarifa",
      "shyau",
      "suntala",
      "nilo aiselu"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new WordModal(
            position: i,
            primaryWord: primaryWord[i],
            secondaryWord: secondaryWord[i],
            tertiaryWord: tertiaryWord[i],
            imageData: Icons.home),
      );
    }
    return data;
  }



}
