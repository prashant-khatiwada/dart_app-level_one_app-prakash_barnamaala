// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';  // Add this line.
import 'package:prakash_barnamaala/data/data_gaon_khane_katha.dart';
import 'package:prakash_barnamaala/data/data_tukka.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Welcome to Prakash Barnamaala',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyStatelessWidget(),
    );
  }


}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Bottom Bar Settings
    final makeBottom = Container(
      height: 60.0,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.deepOrange),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.label, color: Colors.deepOrange),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.deepOrange),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.deepOrange),
              onPressed: () {},
            )

          ],

        ),
      ),
    );

    // Top App Bar
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.deepOrange,
      title: Text('Prakash Barnamaala'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          tooltip: 'Open Setting',
          onPressed: (
              // ...
              ) {},
        )
      ],
    );

    // Scaffold Setting
    return Scaffold(
      appBar: topAppBar,
      body: new GaonKhaneKatha(),
      bottomNavigationBar: makeBottom,
    );


  }
}

