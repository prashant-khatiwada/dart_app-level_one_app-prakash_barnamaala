import 'package:flutter/material.dart';

class MenuLetter extends StatefulWidget {
  @override
  _MenuLetterState createState() => _MenuLetterState();
}

class _MenuLetterState extends State<MenuLetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Vowel", Icons.email),
            makeDashboardItem("Consonant", Icons.alarm),
            makeDashboardItem("Barhakhari", Icons.backup),
            makeDashboardItem("Compound", Icons.calendar_today),
            makeDashboardItem("Number", Icons.departure_board)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {
              _showToast(context);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.white,
                    )
                ),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                      new TextStyle(fontSize: 20.0, color: Colors.white)),
                )
              ],
            ),
          ),
        )
    );
  }

  // Toast Message function
  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Testing'),
      ),
    );
  }
}