import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordPlace extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildGeneralList()),
            new WordList(_buildGeneralListII()),
            new WordList(_buildDirectionList()),
            new WordList(_buildHomeList()),
            new WordList(_buildCityList()),
            new WordList(_buildCountryList())
          ])),
    ));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "General I",
        ),
        Tab(
          text: "General II",
        ),
        Tab(
          text: "Direction",
        ),
        Tab(
          text: "Home",
        ),
        Tab(
          text: "City",
        ),
        Tab(
          text: "Country",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Place', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildGeneralList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Home",
      "Land",
      "Mountain",
      "Hill",
      "Plains",
      "River",
      "Lake",
      "Forest",
      "Sea",
      "Ocean",

      "Desert",
      "Residence",
      "Kitchen Garden",
      "Garden",
      "Field",
      "Household",
      "Neighbour",
      "Neighbourhood",
      "Community",
      "Street",

      "Road",
      "A Narrow Road",
      "Foot Path"
    ];

    List<String> secondaryWord = [
      "घर",
      "जमिन",
      "हिमाल",
      "पहाड",
      "तराई",
      "खोला",
      "ताल",
      "जंगल",
      "सागर",
      "महासागर",

      "मरुभूमि",
      "बासस्थान",
      "बारी",
      "बगैचा",
      "खेत",
      "घरबार",
      "छिमेकी",
      "छरछिमेक",
      "बस्ती",
      "सडक",

      "बाटो",
      "गल्ली",
      "गोरेटो"
    ];


    List<String> tertiaryWord = [
      "ghar",
      "jamin",
      "himaal",
      "pahaad",
      "tarai",
      "khola",
      "taal",
      "jungle",
      "sagar",
      "maha-sagar",

      "mar-bhumi",
      "baasthan",
      "baari",
      "bagaicha",
      "khet",
      "gharbaar",
      "chhimeki",
      "chharchhimek",
      "basti",
      "sadak",

      "baato",
      "galli",
      "futpath"
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

  _buildGeneralListII() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Village",
      "City",
      "Country",
      "Foreign Country",
      "Municipality",
      "Capital",
      "Soil",

      "Temple",
      "Hospital",
      "Pharmacy",
      "Restuarent",
      "Shop",
      "Office",
      "School",
      "College"
    ];

    List<String> secondaryWord = [
      "गाउँ",
      "सहर",
      "देश",
      "विदेश",
      "नगरपालिका",
      "राजधानी",
      "माटो",

      "मन्दिर",
      "अस्पताल",
      "औषधी पसल",
      "रेस्टुरेन्ट",
      "पसल",
      "कार्यालय",
      "विद्यालय",
      "कलेज"
    ];


    List<String> tertiaryWord = [
      "gaon",
      "sahar",
      "desh",
      "bidesh",
      "nagarpalika",
      "rajdhani",
      "maato",

      "mandir",
      "as-pa-taal",
      "aoushadhi pasal",
      "restaurant",
      "pasal",
      "karya-laya",
      "wi-dhya-laya",
      "kalej"
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

  _buildDirectionList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Up",
      "Down",
      "Front",
      "Back",
      "Left",
      "Right",
      "North",
      "South",
      "East",
      "West"
    ];

    List<String> secondaryWord = [
      "माथि",
      "तल",
      "अगाडि",
      "पछाडि",
      "देब्रे",
      "दाहिने",
      "उत्तर",
      "दक्षिण",
      "पूर्व",
      "पश्चिम"
    ];


    List<String> tertiaryWord = [
      "maathi",
      "tala",
      "agaadi",
      "pachaadi",
      "debre",
      "daahine",
      "uttar",
      "dakshin",
      "purwa",
      "paschim"

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

  _buildHomeList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Door",
      "Gate",
      "Window",
      "Room",
      "Living room",
      "Bedroom",
      "Kitchen",
      "Dining room",
      "Toilet",
      "Bathing room",
      "Storage room",
      "Worship room",
      "Stair",
      "Balcony",
      "Carpet",
      "Cupboard",
      "Table",
      "Chair",
      "Sofa",
      "Cushion",
      "Pillow",
      "Blanket",
      "Bedsheet",
      "Bed",
      "Mattress"
    ];

    List<String> secondaryWord = [
      "ढोका",
      "गेट",
      "झ्याल",
      "कोठा",
      "बैठक कोठा",
      "सुत्नेकोठा",
      "भान्सा",
      "खाना खाने कोठा",
      "शौचालय",
      "स्नान कोठा",

      "भण्डारण कक्ष",
      "पूजा कोठा",
      "सीढी",
      "कौसी",
      "गलैंचा",
      "अलमारी",
      "टेवल",
      "कुर्सी",
      "सोफा",
      "गद्दी",

      "तकिया",
      "कम्बल",
      "तन्ना",
      "ओछ्यान",
      "डसना"

    ];


    List<String> tertiaryWord = [
      "dhoka",
      "dwaar",
      "jhyaal",
      "kotha",
      "baithaka kotha",
      "sutne kotha",
      "bhansa",
      "khana khaane kotha",
      "souchalaya",
      "snan kotha",
      "bhandaran kotha",
      "pooja kotha",
      "sidhi",
      "kousi",
      "galaicha",
      "almaari",
      "table",
      "kursi",
      "sofa",
      "gaddi",
      "takiya",
      "kambal",
      "tanna",
      "aouchhyan",
      "dasana"
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

  _buildCityList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Kathmandu", "Pokhara", "Lalitpur", "Bharatpur", "Birgunj", "Biratnagar",
      "Janakpur", "Ghorahi", "Hetauda", "Dhangadhi",
      "Tulsipur", "Itahari", "Nepalgunj", "Butwal", "Dharan", "Kalaiya", "Jitpur"
    ];

    List<String> secondaryWord = [
      "काठमांडौ", "पोखरा", "ललितपुर", "भरतपुर", "बिरगंज", "विराटनगर", "जनकपुर", "घोराही", "हेटौडा", "धनगढी",
      "तुल्सिपुर", "ईटहरी", "नेपालगंज", "बुटवल", "धरान", "कलैया", "जीतपुर"
    ];


    List<String> tertiaryWord = [
      "Metropolitan city", "Metropolitan city", "Metropolitan city", "Metropolitan city", "Metropolitan city", "Metropolitan city",
      "Sub-metropolitan city", "Sub-metropolitan city", "Sub-metropolitan city", "Sub-metropolitan city",
      "Sub-metropolitan city", "Sub-metropolitan city", "Sub-metropolitan city",
      "Sub-metropolitan city", "Sub-metropolitan city", "Sub-metropolitan city", "Sub-metropolitan city"
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

  _buildCountryList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Nepal",
      "India",
      "China",
      "Bhutan",
      "Bangladesh",
      "Sri Lanka",
      "Pakistan",
      "Maldives",
      "United States of America",
      "United Kingdom"
    ];

    List<String> secondaryWord = [
      "नेपाल",
      "भारत",
      "चिन",
      "भुटान",
      "बांग्लादेश",
      "श्रीलंका",
      "पाकिसतान",
      "मल्दिव्स",
      "अमेरिका",
      "बेलायत"

    ];


    List<String> tertiaryWord = [
      "Nepal",
      "India",
      "China",
      "Bhutan",
      "Bangladesh",
      "Sri Lanka",
      "Pakistan",
      "Maldives",
      "United States of America",
      "United Kingdom"
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
