import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

int _currentConsonant = 0;

class LetterBarhakhariDetail extends StatefulWidget {
  LetterBarhakhariDetail({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<LetterBarhakhariDetail> {

  List<String> items = [
    "क",
    "ख",
    "ग",
    "घ",
    "ङ",
    "च",
    "छ",
    "ज",
    "झ",
    "ञ",
    "ट",
    "ठ",
    "ड",
    "ढ",
    "ण",
    "त",
    "थ",
    "द",
    "ध",
    "न",
    "प",
    "फ",
    "ब",
    "भ",
    "म",
    "य",
    "र",
    "ल",
    "व",
    "श",
    "ष",
    "स",
    "ह"
  ];

  _buildDetailList(int n) {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    var primaryLetter = new List<String>(12);

    var secondaryLetter = new List<String>(12);

    List<String> consonantLetter = [
      "क",
      "ख",
      "ग",
      "घ",
      "ङ",
      "च",
      "छ",
      "ज",
      "झ",
      "ञ",
      "ट",
      "ठ",
      "ड",
      "ढ",
      "ण",
      "त",
      "थ",
      "द",
      "ध",
      "न",
      "प",
      "फ",
      "ब",
      "भ",
      "म",
      "य",
      "र",
      "ल",
      "व",
      "श",
      "ष",
      "स",
      "ह"
    ];

    List<String> leggedLetter = [
      "क्",
      "ख्",
      "ग्",
      "घ्",
      "ङ्",
      "च्",
      "छ्",
      "ज्",
      "झ्",
      "ञ्",
      "ट्",
      "ठ्",
      "ड्",
      "ढ्",
      "ण्",
      "त्",
      "थ्",
      "द्",
      "ध्",
      "न्",
      "प्",
      "फ्",
      "ब्",
      "भ्",
      "म्",
      "य्",
      "र्",
      "ल्",
      "व्",
      "श्",
      "ष्",
      "स्",
      "ह्"
    ];

    List<String> primaryNumber = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"
    ];

    List<String> vowelLetter = [
      "अ",
      "आ",
      "इ",
      "ई",
      "उ",
      "ऊ",
      "ए",
      "ऐ",
      "अेा",
      "अैा",
      "अं",
      "अ:"
    ];

    List<String> vowelSymbolLetter = [
      "",
      "ा",
      "ि",
      "ी",
      "ु",
      "ू",
      "े",
      "ै",
      "ेा",
      "ैा",
      "ं",
      ":"
    ];

    for (int i = 0; i < 12; i++) {
      int consonant = _currentConsonant;
      consonant = n;
      primaryLetter[i] = consonantLetter[consonant] + vowelSymbolLetter[i];
      secondaryLetter[i] = leggedLetter[consonant] + " + " + vowelLetter[i];
    }

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryNumber[i],
            primaryWord: primaryLetter[i],
            secondaryLetter: primaryLetter[i],
            secondaryWord: secondaryLetter[i],
            audioData: 'TEST'),
      );
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery
        .of(context)
        .size
        .width;
    final _height = MediaQuery
        .of(context)
        .size
        .height;

    final headerListHorizontal = new ListView.builder(
      itemBuilder: (context, index) {
        return Card(
            elevation: 1.0,
            margin: new EdgeInsets.all(7.0),
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                (index % 2 == 0) ? Colors.yellow[200] : Colors.orange[200],
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 3.0)
                ],
              ),
              width: 200.0,
              child: new InkWell(
                onTap: () {
                  setState(() {
                    _currentConsonant = index % items.length;
                  });
                },
                child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${items[index % items.length]}',
                            style: new TextStyle(
                                fontSize: 100.0, color: Colors.black87)),
                      ],
                    )),
              ),
            ));
      },
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
    );

    final headerListVertical = new ListView.builder(
      itemBuilder: (context, index) {
        return Card(
            elevation: 1.0,
            margin: new EdgeInsets.all(7.0),
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                (index % 2 == 0) ? Colors.yellow[200] : Colors.orange[200],
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 3.0)
                ],
              ),
              width: 200.0,
              child: new InkWell(
                onTap: () {
                  setState(() {
                    _currentConsonant = index % items.length;
                  });
                },
                child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${items[index % items.length]}',
                            style: new TextStyle(
                                fontSize: 100.0, color: Colors.black87)),
                      ],
                    )),
              ),
            ));
      },
      scrollDirection: Axis.vertical,
      itemCount: items.length,
    );

    Widget _layoutDetails() {
      Orientation orientation = MediaQuery
          .of(context)
          .orientation;

      if (orientation == Orientation.portrait) {
        // portrait mode
        return Column(
          children: <Widget>[
            new Container(
                height: 200.0,
                width: _width,
                child: headerListHorizontal),
            new Expanded(
                child: LetterListLesson(_buildDetailList(_currentConsonant))
            )
          ],
        );
      } else {
        // Landscape mode
        return Row(
          children: <Widget>[
            new Container(
                height: _height,
                width: 200,
                child: headerListVertical),
            new Expanded(
                child: LetterListLesson(_buildDetailList(_currentConsonant))
            )

          ],
        );
      }
    }

    return new Scaffold(
        body: _layoutDetails());
  }
}
