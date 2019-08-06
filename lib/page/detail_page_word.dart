import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:flutter/material.dart';

class DetailPageWord extends StatelessWidget {
  final WordModal word;
  DetailPageWord({Key key, this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 60.0),
        Text(
          word.primaryWord,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        Text(
          word.secondaryWord,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
        Row(
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );


    final bottomContentText = Text(
      word.tertiaryWord,
      style: TextStyle(fontSize: 40.0),
    );


    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );

    return Scaffold(

      body: Column(
        children: <Widget>[
          topContent,
          bottomContent
        ],
      ),
    );


  }
}
