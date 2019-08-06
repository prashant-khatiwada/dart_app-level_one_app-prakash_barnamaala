import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data/data_letter_barhakhari.dart';
import 'package:prakash_barnamaala/data/data_letter_combined.dart';
import 'package:prakash_barnamaala/data/data_letter_consonant.dart';
import 'package:prakash_barnamaala/data/data_letter_legged.dart';
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
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: makeGridBody // Apply GridView on Scaffold
        );
  }

  // Take the list = ChoiceCard and form a GridView
  final makeGridBody = PageView(
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this would produce 2 rows.
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            // Generate  Widgets that display their index in the List
            children: List.generate(choices.length, (index) {
              return Center(
                child: MenuChoiceCard(menuModal: choices[index]),

              );
            })),
      ),
    ],
  );
}


// List based on Model Class (for GridView Items)
const List<MenuModal> choices = const <MenuModal>[
  const MenuModal(title: 'Vowel', icon: Icons.lens, menuNumber: 1),
  const MenuModal(title: 'Consonant', icon: Icons.lens, menuNumber: 2),
  const MenuModal(title: 'Barhakhari', icon: Icons.lens, menuNumber: 3),
  const MenuModal(title: 'Mixed', icon: Icons.lens, menuNumber: 4),
  // const MenuModal(title: 'Combined', icon: Icons.lens, menuNumber: 5),
  const MenuModal(title: 'Units', icon: Icons.lens, menuNumber: 6),
  const MenuModal(title: 'Numbers', icon: Icons.lens, menuNumber: 7)

];

// Menu GridCard Items for Menu
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.menuModal}) : super(key: key);
  final MenuModal menuModal;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LetterNumberPage(menu: menuModal)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      menuModal.icon,
                      size: 40.0,
                      color: Colors.white,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(menuModal.title,
                      style:
                      new TextStyle(fontSize: 20.0, color: Colors.white)),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ));
  }
}

// Navigation
class LetterNumberPage extends StatelessWidget {

  final MenuModal menu;
  LetterNumberPage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: LetterVowel()); break;
      case(2) : return new Scaffold(body: LetterConsonant()); break;
      case(3) : return new Scaffold(body: LetterBarhakhari()); break;
      case(4) : return new Scaffold(body: LetterLegged()); break;
      // case(5) : return new Scaffold(body: LetterCombined()); break;
      case(6) : return new Scaffold(body: LetterUnit()); break;
      case(7) : return new Scaffold(body: LetterNumber()); break;
    // Add default list
      default: return new Scaffold(body: LetterVowel()); break;

    }

  }

}
