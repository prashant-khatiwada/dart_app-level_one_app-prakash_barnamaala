import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/data/data_word_animal.dart';
import 'package:prakash_barnamaala/data/data_word_food.dart';
import 'package:prakash_barnamaala/data/data_word_others.dart';
import 'package:prakash_barnamaala/data/data_word_people.dart';
import 'package:prakash_barnamaala/data/data_word_place.dart';
import 'package:prakash_barnamaala/data/data_word_plant.dart';
import 'package:prakash_barnamaala/data/data_word_time.dart';


class MenuWord extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
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
                      builder: (context) => WordPage(menu: menuItem)));
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
  const MenuModal(title: 'Time', secondTitle: 'समय',
      image: "assets/image_menu/menu_word_01.png", menuNumber: 1),
  const MenuModal(title: 'Place', secondTitle: 'स्थान',
      image: "assets/image_menu/menu_word_02.png", menuNumber: 2),
  const MenuModal(title: 'People', secondTitle: 'मान्छे',
      image: "assets/image_menu/menu_word_03.png", menuNumber: 3),
  const MenuModal(title: 'Animal', secondTitle: 'जनावर',
      image: "assets/image_menu/menu_word_04.png", menuNumber: 4),
  const MenuModal(title: 'Food', secondTitle: 'खाना',
      image: "assets/image_menu/menu_word_05.png", menuNumber: 5),
  const MenuModal(title: 'Plant', secondTitle: 'बिरुवा',
      image: "assets/image_menu/menu_word_06.png", menuNumber: 6),
  const MenuModal(title: 'Other', secondTitle: 'अन्य',
      image: "assets/image_menu/menu_word_07.png", menuNumber: 7)
];


class WordPage extends StatelessWidget {

  final MenuModal menu;
  WordPage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: WordTime()); break;
      case(2) : return new Scaffold(body: WordPlace()); break;
      case(3) : return new Scaffold(body: WordPeople()); break;
      case(4) : return new Scaffold(body: WordAnimal()); break;
      case(5) : return new Scaffold(body: WordFood()); break;
      case(6) : return new Scaffold(body: WordPlant()); break;
      case(7) : return new Scaffold(body: WordOther()); break;
    // Add default list
      default: return new Scaffold(body: WordTime()); break;

    }

  }

}