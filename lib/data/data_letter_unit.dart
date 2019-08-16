import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterUnit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new PhraseList(_buildWeightDryList()),
            new PhraseList(_buildWeightWetList()),
            new PhraseList(_buildAreaHillList()),
            new PhraseList(_buildAreaTeraiList()),
            new PhraseList(_buildLinearMeasurementList()),
            new PhraseList(_buildNotationList()),

          ])),
    );
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "Weight (Dry)",
        ),
        Tab(
          text: "Weight (Wet)",
        ),
        Tab(
          text: "Area (Hill)",
        ),
        Tab(
          text: "Area (Terai)",
        ),
        Tab(
          text: "Linear Measurements",
        ),
        Tab(
          text: "Notation",
        ),

      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Units and Notations', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

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

  _buildWeightDryList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "1 handful",
      "10 handfuls = apprx. 0.4 kg",
      "1.09 Liter = 20 handfuls = 2 maana",
      "4.361 Liter = apprx. 3.2 Kg = 8 maana",
      "87.215 Liter = apprx. 64 Kg  = 20 paathi"
    ];

    List<String> secondaryPhrase = [
      "१ मुठी ",
      "१ माना",
      "१ कुरुवा",
      "१ पाथी",
      "१ मुरी",

    ];

    List<String> tertiaryPhrase = [
      "ek muthhi",
      "ek maana",
      "ek kuruwa",
      "ek paathi",
      "ek muri"
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

  _buildWeightWetList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "17.76 mL",
      "71.03 mL",
      "142 mL",
      "284 mL",
      "1.09 Liter",
      "4.361 Liter"
    ];

    List<String> secondaryPhrase = [
      "१ दियास ",
      "१ चौथाई",
      "१ आधा टुकी",
      "१ तुक्नी",
      "१ कुरुवा",
      "१ पाथी"

    ];

    List<String> tertiaryPhrase = [
      "ek diyas",
      "ek chauthāi",
      "ek aadha tuki",
      "ek tukni",
      "ek kuruwa",
      "ek paathi"
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

  _buildAreaHillList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "98 meter square",
      "4 daam = 7,95 m2",
      "4 paisa = 31,79 m2",
      "16 aana = 64 paisa = 521 m2",
      "19 ropani, 2 aana, 265 daam"
    ];

    List<String> secondaryPhrase = [
      "१ दाम",
      "१ पैसा",
      "१ आना",
      "१ रोपनी",
      "१ हेक्टर"

    ];

    List<String> tertiaryPhrase = [
      "ek daam",
      "ek paisa",
      "ek aana",
      "ek ropani",
      "ek hectar"
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

  _buildAreaTeraiList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "16.39 m2",
      "4 dhur = 65.56 m2",
      "20 dhur = 338.63 m2",
      "20 kathhaa = 13 ropani = 6,772.63 m2"
    ];

    List<String> secondaryPhrase = [
      "१ धुर",
      "१ मुरी माटो",
      "१ कठ्ठा",
      "१ बिगाह"

    ];

    List<String> tertiaryPhrase = [
      "ek dhur",
      "ek muri maato",
      "ek kathhaa",
      "ek bigah"
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

  _buildLinearMeasurementList() {
    List<PhraseModal> data = new List<PhraseModal>();

    List<String> primaryPhrase = [
      "one finger width",
      "18 angul",
      "2 bitta = 0.5 yard",
      "4 haat",
      "8 haat",
      "480 danda = 3.218 Km = 2 mile"
    ];

    List<String> secondaryPhrase = [
      "१ अङ्गुल",
      "१ बित्ता",
      "१ हात",
      "१ डाँडा",
      "१ जन्जिर",
      "१ कोष"

    ];

    List<String> tertiaryPhrase = [
      "ek angul",
      "ek bitta",
      "ek haath",
      "ek danda",
      "ek janjir",
      "ek kosh"
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
