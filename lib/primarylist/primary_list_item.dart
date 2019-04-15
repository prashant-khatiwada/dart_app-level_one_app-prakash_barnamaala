import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/modal/modal_primary.dart';
import 'package:prakash_barnamaala/detail_page.dart';

class LetterListItem extends StatelessWidget {
  final LetterModal _letterModal;

  LetterListItem(this._letterModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
      children: <Widget>[
        new ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            leading: new CircleAvatar(
                child: new Text(_letterModal.primaryLetter[0])),
            title: new Text(_letterModal.primaryLetter),
            trailing: Icon(Icons.keyboard_arrow_right, color: Color.fromRGBO(58, 66, 86, 1.0), size: 30.0),
            subtitle: new Text("के हो ?"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(lesson: _letterModal)));

            }),
      ],

    )


    );
  }
}
