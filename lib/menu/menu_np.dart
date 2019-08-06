import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/data/data_language_adage.dart';
import 'package:prakash_barnamaala/data/data_language_comprehension.dart';
import 'package:prakash_barnamaala/menu/menu_np_songs.dart';
import 'package:prakash_barnamaala/data/data_language_idiom.dart';
import 'package:prakash_barnamaala/menu/menu_np_poems.dart';
import 'package:prakash_barnamaala/data/data_language_proverb.dart';


class MenuNepali extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuNepali> {
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
  const MenuModal(title: 'Baby Songs', icon: Icons.lens, menuNumber: 1),
  const MenuModal(title: 'Comprehensions', icon: Icons.lens, menuNumber: 2),
  const MenuModal(title: 'Poems', icon: Icons.lens, menuNumber: 3),
  const MenuModal(title: 'Adage', icon: Icons.lens, menuNumber: 4),
  const MenuModal(title: 'Proverb', icon: Icons.lens, menuNumber: 5),
  const MenuModal(title: 'Idiom', icon: Icons.lens, menuNumber: 6),
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
                      builder: (context) => NepaliLanguage(menu: menuModal)));
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

class NepaliLanguage extends StatelessWidget {

  final MenuModal menu;
  NepaliLanguage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: LanguageBabySongs()); break;
      case(2) : return new Scaffold(body: LanguageComprehension()); break;
      case(3) : return new Scaffold(body: LanguagePoems()); break;
      case(4) : return new Scaffold(body: Adage()); break;
      case(5) : return new Scaffold(body: Idiom()); break;
      case(6) : return new Scaffold(body: Proverb()); break;

    // Add default list
      default: return new Scaffold(body: Adage()); break;

    }
  }

}