import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data/data_ukhaan.dart';
import 'package:prakash_barnamaala/data/data_tukka.dart';

class MenuWord extends StatefulWidget {
  @override
  _MenuWordState createState() => _MenuWordState();
}

class _MenuWordState extends State<MenuWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: ChoiceCard(choice: choices[index]),
              );
            })),
      ),
    );
  }

  Card makeGridItem(String title, IconData icon) {
    // int menuIndex = materialIndices[index];
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Ukhaan()),
              );
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
                )),
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

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child: new InkWell(
        onTap: () {

          /*
          switch (
          ) {
            case (1):
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Ukhaan()),
              );
              break;
            case (2):
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Tukka()),
              );
              break;
          }
          */
        },
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
                )
            ),
            SizedBox(height: 20.0),
            new Center(
              child: new Text(choice.title,
                  style:
                  new TextStyle(fontSize: 20.0, color: Colors.white)),
            )
          ],
        ),
      ),
    ));



  }
}
