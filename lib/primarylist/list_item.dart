import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/detail_page.dart';


// Menu ListCard or GridCard Items
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.choice}) : super(key: key);
  final MenuModal choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      choice.icon,
                      size: 40.0,
                      color: Colors.white,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(choice.title,
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



// LetterList card Items
class LetterChoiceCard extends StatelessWidget {
  final LanguageModal _letterModal;

  LetterChoiceCard(this._letterModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
      children: <Widget>[
        new ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            leading: new CircleAvatar(
                child: new Text(_letterModal.primaryLetter[0])),
            title: new Text(_letterModal.primaryLetter),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Color.fromRGBO(58, 66, 86, 1.0), size: 30.0),
            subtitle: new Text("के हो ?"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(lesson: _letterModal)));
            }),
      ],
    ));
  }
}


// LetterList card Items
class LetterCard extends StatelessWidget {
  final LetterModal_x _letterModal_x;

  LetterCard(this._letterModal_x);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
          children: <Widget>[
            new ListTile(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                leading: new CircleAvatar(
                    child: new Text(_letterModal_x.primaryLetter[0])),
                title: new Text(_letterModal_x.primaryLetter),
                subtitle: new Text(_letterModal_x.secondaryWord),
                onTap: () {
                }),
          ],
        ));
  }
}

