import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/data/data_phrase_technology.dart';
import 'package:prakash_barnamaala/data/data_phrase_dining.dart';
import 'package:prakash_barnamaala/data/data_phrase_emergency.dart';
import 'package:prakash_barnamaala/data/data_phrase_essential.dart';
import 'package:prakash_barnamaala/data/data_phrase_health.dart';
import 'package:prakash_barnamaala/data/data_phrase_lodging.dart';
import 'package:prakash_barnamaala/data/data_phrase_time.dart';
import 'package:prakash_barnamaala/data/data_phrase_travel.dart';


class MenuPhrase extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPhrase> {
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
            padding: EdgeInsets.all(1.0),
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

// Main Menu GridCard Items for Menu
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
                      builder: (context) => PhrasePage(menu: menuItem)));
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
  const MenuModal(title: 'Essential', secondTitle: 'आवश्यक',
      image: "assets/image_menu/menu_phrase_01.png", menuNumber: 1),
  const MenuModal(title: 'Travel', secondTitle: 'यात्रा',
      image: "assets/image_menu/menu_phrase_02.png", menuNumber: 2),
  const MenuModal(title: 'Lodging', secondTitle: 'लजिंग',
      image: "assets/image_menu/menu_phrase_03.png", menuNumber: 3),
  const MenuModal(title: 'Dining', secondTitle: 'भोजन',
      image: "assets/image_menu/menu_phrase_04.png", menuNumber: 4),
  const MenuModal(title: 'Time', secondTitle: 'समय',
      image: "assets/image_menu/menu_phrase_05.png", menuNumber: 5),
  const MenuModal(title: 'Technology', secondTitle: 'प्रविधि',
      image: "assets/image_menu/menu_phrase_06.png", menuNumber: 6),
  const MenuModal(title: 'Health', secondTitle: 'स्वास्थ्य',
      image: "assets/image_menu/menu_phrase_07.png", menuNumber: 7),
  const MenuModal(title: 'Emergency', secondTitle: 'आपातकालीन',
      image: "assets/image_menu/menu_phrase_08.png", menuNumber: 8),
];

class PhrasePage extends StatelessWidget {

  final MenuModal menu;
  PhrasePage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: PhraseEssential()); break;
      case(2) : return new Scaffold(body: PhraseTravel()); break;
      case(3) : return new Scaffold(body: PhraseLodging()); break;
      case(4) : return new Scaffold(body: PhraseDining()); break;
      case(5) : return new Scaffold(body: PhraseTime()); break;
      case(6) : return new Scaffold(body: PhraseTechnology()); break;
      case(7) : return new Scaffold(body: PhraseHealth()); break;
      case(8) : return new Scaffold(body: PhraseEmergency()); break;
    // Add default list
      default: return new Scaffold(body: PhraseEssential()); break;

    }

  }

}