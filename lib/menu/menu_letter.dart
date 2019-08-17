import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data/data_letter_barhakhari.dart';
import 'package:prakash_barnamaala/data/data_letter_consonant.dart';
import 'package:prakash_barnamaala/data/data_letter_mixed.dart';
import 'package:prakash_barnamaala/data/data_letter_number.dart';
import 'package:prakash_barnamaala/data/data_letter_unit.dart';
import 'package:prakash_barnamaala/data/data_letter_vowel.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class MenuLetter extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuLetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: makeGridBody // Apply GridView on Scaffold
        );
  }

  // Take the list = ChoiceCard and form a GridView
  final makeGridBody = PageView(
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(choices.length, (index) {
              return Center(
                child: MenuChoiceCard(menuItem: choices[index]),
              );
            })),
      ),
    ],
  );
}

// Menu GridCard Items for Menu
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.menuItem}) : super(key: key);
  final MenuModal menuItem;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 10.0),
                  blurRadius: 10.0)
            ],
          ),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LetterNumberPage(menu: menuItem)));
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: new AssetImage(menuItem.image)
                        )
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(menuItem.title,
                      style: new TextStyle(color: Colors.black)),
                  SizedBox(height: 5.0),
                  Text(menuItem.secondTitle,
                      style: new TextStyle(fontSize: 24, color: Colors.black)),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ));
  }
}

// List based on Model Class (for GridView Items)
const List<MenuModal> choices = const <MenuModal>[
  const MenuModal(
      title: 'Vowel',
      secondTitle: 'स्वर वर्ण',
      image: "assets/image_menu/menu_letter_01.png",
      menuNumber: 1),
  const MenuModal(
      title: 'Consonant',
      secondTitle: 'व्यंजन वर्ण',
      image: "assets/image_menu/menu_letter_02.png",
      menuNumber: 2),
  const MenuModal(
      title: 'Barhakhari',
      secondTitle: 'बाह्रखरी',
      image: "assets/image_menu/menu_letter_03.png",
      menuNumber: 3),
  const MenuModal(
      title: 'Mixed',
      secondTitle: 'मिश्रित शब्द',
      image: "assets/image_menu/menu_letter_04.png",
      menuNumber: 4),
  const MenuModal(
      title: 'Units',
      secondTitle: 'एकाइ',
      image: "assets/image_menu/menu_letter_05.png",
      menuNumber: 6),
  const MenuModal(
      title: 'Number',
      secondTitle: 'संख्या',
      image: "assets/image_menu/menu_letter_06.png",
      menuNumber: 7)
];

// Navigation
class LetterNumberPage extends StatelessWidget {
  final MenuModal menu;

  LetterNumberPage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case (1):
        return new Scaffold(body: LetterVowel());
        break;
      case (2):
        return new Scaffold(body: LetterConsonant());
        break;
      case (3):
        return new Scaffold(body: LetterBarhakhari());
        break;
      case (4):
        return new Scaffold(body: LetterMixed());
        break;
      // case(5) : return new Scaffold(body: LetterCombined()); break;
      case (6):
        return new Scaffold(body: LetterUnit());
        break;
      case (7):
        return new Scaffold(body: LetterNumber());
        break;
    // Add default list
      default:
        return new Scaffold(body: LetterVowel());
        break;
    }
  }
}
