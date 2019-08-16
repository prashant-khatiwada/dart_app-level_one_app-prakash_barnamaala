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
        body: makeGridBody // Apply GridView on Scaffold
        );
  }

  // Take the list = ChoiceCard and form a GridView
  final makeGridBody = PageView(
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
        child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this would produce 2 rows.
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            // Generate  Widgets that display their index in the List
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
                      builder: (context) => NepaliLanguage(menu: menuItem)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 25.0),
                Center(
                    child: Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: new AssetImage(menuItem.image)
                          )
                      ),
                    )
                ),
                SizedBox(height: 10.0),
                new Center(
                  child: new Text(menuItem.title,
                      style:
                      new TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 5.0),
                new Center(
                  child: new Text(menuItem.secondTitle,
                      style:
                      new TextStyle(fontSize: 24, color: Colors.black)),
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ));
  }
}

// List based on Model Class (for GridView Items)
const List<MenuModal> choices = const <MenuModal>[
  const MenuModal(title: 'Baby Songs', secondTitle: 'बाल गीत',
      image: "assets/image_menu/menu_nepali_01.png", menuNumber: 1),
  const MenuModal(title: 'Comprehension', secondTitle: 'बोध',
      image: "assets/image_menu/menu_nepali_02.png", menuNumber: 2),
  const MenuModal(title: 'Poems', secondTitle: 'कविता',
      image: "assets/image_menu/menu_nepali_03.png", menuNumber: 3),
  const MenuModal(title: 'Adage', secondTitle: 'गाउँ खाने कथा',
      image: "assets/image_menu/menu_nepali_04.png", menuNumber: 4),
  const MenuModal(title: 'Proverb', secondTitle: 'उखान',
      image: "assets/image_menu/menu_nepali_05.png", menuNumber: 5),
  const MenuModal(title: 'Idiom', secondTitle: 'टुक्का',
      image: "assets/image_menu/menu_nepali_06.png", menuNumber: 6)
];

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
      case(5) :
        return new Scaffold(body: Proverb());
        break;
      case(6) :
        return new Scaffold(body: Idiom());
        break;

    // Add default list
      default: return new Scaffold(body: Adage()); break;

    }
  }

}
