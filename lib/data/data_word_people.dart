import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class WordPeople extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new WordList(_buildFamilyList()),
            new WordList(_buildExtendedFamilyList()),
            new WordList(_buildGeneralList()),
            new WordList(_buildOccupationList()),
          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "Family",
        ),
        Tab(
          text: "Extented Family",
        ),
        Tab(
          text: "General",
        ),
        Tab(
          text: "Occupation",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('People', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildFamilyList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "father",
      "mother",
      "son",
      "daughter",
      "grandfather",
      "grandmother",
      "older brother",
      "older sister",
      "younger brother",
      "younger sister",

      "husband",
      "wife"
    ];

    List<String> secondaryWord = [
      "बाबा",
      "आमा",
      "छोरा",
      "छोरी",
      "हजुर बुबा",
      "हजुर आमा",
      "दाइ",
      "दिदी",
      "भाइ",
      "बहिनी",

      "श्रीमान",
      "श्रीमती"
    ];


    List<String> tertiaryWord = [
      "baba",
      "aama",
      "chhora",
      "chhori",
      "hajur buba",
      "hajur aama",
      "dai",
      "didi",
      "bhai",
      "bahini",

      "shhrimaan",
      "shhrimati"
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

  _buildExtendedFamilyList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Father's sister",
      "Father's sister-husband",
      "Father's brother",
      "Father's brother-wife",
      "Mother's brother",
      "Mother's brother-wife",
      "Mother's sister",
      "Mother's sister-husband",
      "Daughter-in-Law",
      "Son-in_law",
      "In-Laws"
    ];

    List<String> secondaryWord = [
      "फुपू",
      "फुपाजु",
      "काका",
      "काकी",
      "मामा",
      "माइजू",
      "सानी आमा",
      "सानो बुबा",
      "बुहारी",
      "ज्वाई",
      "सम्धी"

    ];


    List<String> tertiaryWord = [
      "fupu",
      "fupaju",
      "kaaka",
      "kaaki",
      "mama",
      "maiju",
      "saani aama",
      "saano buba",
      "buhaari",
      "jwaain",
      "samdhhi"
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

  _buildGeneralList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Relative",
      "Friend",
      "Acquaintance",
      "Unfamiliar",
      "Thingamajig",
      "Guest",
      "Heir",
      "Customer",
      "Landlord",
      "Messenger",

      "Proprietor"

    ];

    List<String> secondaryWord = [
      "इष्टमित्र",
      "मित्र",
      "चिनेको",
      "नचिनेको",
      "फलानो",
      "अतिथि",
      "उतरअधिकारी",
      "ग्राहक",
      "घरभेटी",
      "सूचना वाहक",

      "मालिक"
    ];


    List<String> tertiaryWord = [
      "istamitra",
      "mitrataa",
      "mitra",
      "nachineko",
      "adhyaapaka",
      "atithi",
      "utaraadhikaaree",
      "grahaka",
      "gharapatee",
      "suchana bahak",

      "malik"
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

  _buildOccupationList() {
    List<WordModal> data = new List<WordModal>();

    List<String> primaryWord = [
      "Preceptor",
      "Lecture",
      "Teacher",
      "President",
      "Minister",
      "Prime Minister",
      "Postman",
      "Editor",
      "Writer",
      "Physician",

      "Publisher",
      "Constable",
      "Engineer",
      "Advocate",
      "Pharmacist",
      "Novelist",
      "Artist",
      "Author",
      "Magician",
      "Jeweller"
    ];

    List<String> secondaryWord = [
      "गुरु",
      "प्राध्यापक",
      "अध्यापक",
      "राष्ट्रपति",
      "मन्त्री",
      "प्रधानमन्त्री",
      "हुलाकी",
      "सम्पादक",
      "लेखक",
      "वैध",

      "प्रकाशक",
      "प्रहरी",
      "अभियन्ता",
      "अधिवक्ता",
      "औषधि विक्रेता",
      "उपन्यासकार",
      "कलाकार",
      "ग्रन्थकार",
      "जादुगर",
      "जौहरी"
    ];


    List<String> tertiaryWord = [
      "guru",
      "praadhyapaka",
      "adhyaapaka",
      "rastrapati",
      "mantri",
      "pradhanamantri",
      "hulaki",
      "sampadak",
      "lekhaka",
      "vaidha",

      "prakasak",
      "prahari",
      "abhiyanta",
      "adhivakta",
      "aushadhi vikreta",
      "upanyasakar",
      "kalakara",
      "granthakara",
      "jaadugar",
      "johari"
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
