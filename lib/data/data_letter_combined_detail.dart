import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

int _currentConsonant = 0;


class LetterCombinedDetail extends StatefulWidget {
  LetterCombinedDetail({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyPageState createState() => new _MyPageState();

}

class _MyPageState extends State<LetterCombinedDetail> {

  List<String> combinedLetter = [
    "क्क", "ख्ख", "ग्ग", "च्च", "ज्ज", "झ्य", "ट्ट", "ट्ठ", "त्त", "द्य",
    "द्म", "द्ध", "न्न", "न्त", "म्ब", "म्म", "र्क", "ल्ल", "र्य", "र्म",
    "प्र", "क्र", "क्त", "श्र", "ङ्ग", "ङ्क", "र्व", "द्व", "म्र"
  ];


  List<String> combinedLetterDetail = [
    "क् + क = क्क", "ख् + ख = ख्ख", "ग् + ग = ग्ग",
    "च् + च = च्च", "ज् + ज = ज्ज", "झ् + य = झ्य",
    "ट् + ट = ट्ट", "ट् + ठ = ट्ठ", "त् + त = त्त", "द् + य = द्य", "द् + म = द्म",
    "द् + ध = द्ध", "न् + न = न्न", "न् + त = न्त", "म् + ब = म्ब",
    "म् + म = म्म", "र् + क = र्क", "ल् + ल = ल्ल", "र् + य = र्य",
    "र् + म = र्म", "प् + र = प्र", "क् + र = क्र", "क् + त = क्त",
    "श् + र = श्र", "ङ् + ग = ङ्ग", "ङ् + क = ङ्क", "र् + व = र्व",
    "द् + व = द्व", "म् + र = म्र"
  ];

@override
Widget build(BuildContext context) {
  final _width = MediaQuery.of(context).size.width;
  final _height = MediaQuery.of(context).size.height;

  final headerList =  new GridView.builder(
      itemCount: combinedLetter.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new Padding(
          padding: EdgeInsets.all(2.0),
          child: new InkWell(
            onTap: () {
              setState(() {
                _currentConsonant = index%combinedLetter.length;
              });

            },
            child: Container(
              decoration: new BoxDecoration(
                color: Color.fromRGBO(58, 66, 86, 1.0),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(3.0, 10.0),
                      blurRadius: 15.0)
                ],
              ),
              width: 200.0,
              child: new Stack(
                children: <Widget>[
                  new Center(
                    child: new Text(
                      '${combinedLetter[index%combinedLetter.length]}',
                      style:
                      new TextStyle(
                          fontSize: 100.0,
                          color: Colors.white),

                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });

  final body = new Scaffold(
    backgroundColor: Colors.transparent,
    body: new Container(
      child: new Stack(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(top: 10.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Align(
                  alignment: Alignment.centerLeft,
                  child: new Padding(
                      padding: new EdgeInsets.only(left: 8.0),
                      child: new Text(
                        'Choose a Letter',
                        style: new TextStyle(color: Colors.white70),
                      )),
                ),
                new Container(
                    height: 600.0,
                    width: _width,
                    child: headerList
                ),
                SizedBox(height: 10.0),
                new Expanded (
                    child: Container(

                      //width: 400.0,
                      child: new Stack(
                        children: <Widget>[
                          new Center(
                            child: new Text(
                              '${combinedLetterDetail[_currentConsonant]}',
                              style:
                              new TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.white),

                            ),
                          ),
                        ],
                      ),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );

  return new Container(
    decoration: new BoxDecoration(
      color: const Color(0xFF273A48),
    ),
    child: new Stack(
      children: <Widget>[
        new CustomPaint(
          size: new Size(_width, _height),
        ),
        body,
      ],
    ),
  );


}

}
