import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

int _currentConsonant = 0;

class LetterMultiplicationTable extends StatefulWidget {
  LetterMultiplicationTable({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<LetterMultiplicationTable> {
  List<String> items = ["१", "२", "३", "४", "५", "६", "७", "८", "९", "१०"];

  _buildDetailList(int n) {
    List<LetterNumberModal> data = new List<LetterNumberModal>();

    var primaryLetter = new List<String>(10);

    var secondaryLetter = new List<String>(10);

    List<String> multiplyConstant = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10"
    ];

    List<String> nepaliMultiplyConstant = [
      "१",
      "२",
      "३",
      "४",
      "५",
      "६",
      "७",
      "८",
      "९",
      "१०"
    ];

    // English Multiplication Table Mathematics
    for (int i = 0; i < 10; i++) {
      int consonant = _currentConsonant;
      consonant = n;
      int resultNumber = (i + 1) * (consonant + 1);
      String resultString = resultNumber.toString();
      primaryLetter[i] = multiplyConstant[consonant] +
          " x " +
          multiplyConstant[i] +
          " = " +
          resultString;

      var listName = new List();

      for (int i = 0; i < resultString.length; i++) {
        if (resultString[i] == "1") {
          listName.add('१');
        } else if (resultString[i] == "2") {
          listName.add('२');
        } else if (resultString[i] == "3") {
          listName.add('३');
        } else if (resultString[i] == "4") {
          listName.add('४');
        } else if (resultString[i] == "5") {
          listName.add('५');
        } else if (resultString[i] == "6") {
          listName.add('६');
        } else if (resultString[i] == "7") {
          listName.add('७');
        } else if (resultString[i] == "8") {
          listName.add('८');
        } else if (resultString[i] == "9") {
          listName.add('९');
        } else if (resultString[i] == "0") {
          listName.add('०');
        }
      }

      String nepaliResultString = listName.join();

      secondaryLetter[i] = nepaliMultiplyConstant[consonant] +
          " x " +
          nepaliMultiplyConstant[i] +
          " = " +
          nepaliResultString;
    }

    for (int i = 0; i < primaryLetter.length; i++) {
      data.add(
        new LetterNumberModal(
            position: i,
            primaryLetter: primaryLetter[i],
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
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final headerListHorizontal = new ListView.builder(
      itemBuilder: (context, index) {
        return Card(
            elevation: 1.0,
            margin: new EdgeInsets.all(7.0),
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: (index % 2 == 0) ? Colors.yellow[200] : Colors
                    .orange[200],
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

                    )
                ),
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
                color: (index % 2 == 0) ? Colors.yellow[200] : Colors
                    .orange[200],
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

                    )
                ),
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
                child: LetterListMultiplicationTable(
                    _buildDetailList(_currentConsonant))
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
                child: LetterListMultiplicationTable(
                    _buildDetailList(_currentConsonant))
            )

          ],
        );
      }
    }

    return new Scaffold(
        body: _layoutDetails());
  }
}
