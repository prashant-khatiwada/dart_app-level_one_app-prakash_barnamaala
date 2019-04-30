import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/primarylist/list_item.dart';


class MenuWord extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuWord> {
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
                child: MenuChoiceCard(choice: choices[index]),
              );
            })),
      ),
    ],
  );
}


// List based on Model Class (for GridView Items)
const List<MenuModal> choices = const <MenuModal>[
  const MenuModal(title: 'Time', icon: Icons.lens),
  const MenuModal(title: 'Place', icon: Icons.lens),
  const MenuModal(title: 'People', icon: Icons.lens),
  const MenuModal(title: 'Animal', icon: Icons.lens),
  const MenuModal(title: 'Food', icon: Icons.lens),
  const MenuModal(title: 'Plant', icon: Icons.lens),
  const MenuModal(title: 'Other', icon: Icons.lens),
];

