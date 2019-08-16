import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_01.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_02.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_03.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_04.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_05.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_06.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_07.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_08.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_09.dart';
import 'package:prakash_barnamaala/data_poem/data_poem_10.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoems extends StatelessWidget {


  _buildList() {
    List<MenuModalTwo> data = new List<MenuModalTwo>();

    List<String> primaryHeading = [
      "घाँसी",
      "नाटिप्नु हेर कोपिला",
      "नैतिक दृष्टान्त",
      "काल महिमा",
      "पिंजडा को सुँगा",

      "कुन मन्दिरमा जान्छौ यात्री",
      "मेरो प्यारो ओखलढुंगा",
      "गाउँछ गीत नेपाली",
      "POEM",
      "BABA POEM"


    ];

    List<String> secondaryHeading = [
      "भानुभक्त आचार्य",
      "लक्ष्मी प्रसाद देवकोटा",
      "लेखनाथ पौड्याल",
      "लेखनाथ पौड्याल",
      "लेखनाथ पौड्याल",

      "लक्ष्मी प्रसाद देवकोटा",
      "सिद्धिचरण श्रेष्ठ",
      "माधबप्रसाद घिमिरे",
      "author",
      "प्रकाश हरिनगरे"


    ];

    List<int> menuNumber = [
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    ];


    for (int i = 0; i < primaryHeading.length; i++) {
      data.add(new MenuModalTwo(
          title: primaryHeading[i],
          subTitle: secondaryHeading[i],
          menuNumber: menuNumber[i],
          icon: Icons.add
      ));
    }
    return data;
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    title: Text('Nepali Poems', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new MenuModalList(_buildList()));
  }
}

// List - Menu
class MenuModalList extends StatelessWidget {

  final List<MenuModalTwo> _menuModalTwo;

  MenuModalList(this._menuModalTwo);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<MenuChoiceCard> _buildList() {
    return _menuModalTwo
        .map((phrase) => new MenuChoiceCard(menuModal: phrase))
        .toList();
  }
}

// Card - Menu
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.menuModal}) : super(key: key);
  final MenuModalTwo menuModal;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              .withOpacity(0.20),
          child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LanguageSongPage(menu: menuModal)));
              },

              child: Column(
                children: <Widget>[
                  new ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    title: new Text(menuModal.title),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Color.fromRGBO(58, 66, 86, 1.0), size: 30.0),
                    subtitle: new Text(menuModal.subTitle),
                  ),
                ],
              ))
      ),
    );
  }
}

// Navigation Menu
class LanguageSongPage extends StatelessWidget {

  final MenuModalTwo menu;

  LanguageSongPage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: LanguagePoem01()); break;
      case(2) : return new Scaffold(body: LanguagePoem02()); break;
      case(3) : return new Scaffold(body: LanguagePoem03()); break;
      case(4) :
        return new Scaffold(body: LanguagePoem04());
        break;
      case(5) :
        return new Scaffold(body: LanguagePoem05());
        break;
      case(6) :
        return new Scaffold(body: LanguagePoem06());
        break;
      case(7) :
        return new Scaffold(body: LanguagePoem07());
        break;
      case(8) :
        return new Scaffold(body: LanguagePoem08());
        break;
      case(9) :
        return new Scaffold(body: LanguagePoem09());
        break;
      case(10) : return new Scaffold(body: LanguagePoem10()); break;

    // Add default list
      default: return new Scaffold(body: LanguagePoem01()); break;
    }
  }

}