import 'package:prakash_barnamaala/draw_ui/draw_pad.dart';
import 'package:flutter/material.dart';

class DrawApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawPage(title: "Draw");
  }
}

class DrawPage extends StatefulWidget {
  DrawPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DrawPageState createState() => new DrawPageState();
}

class DrawPageState extends State<DrawPage> {
  //Set default painter values
  List<Offset> points = <Offset>[];
  Color color = Colors.black;
  StrokeCap strokeCap = StrokeCap.round;
  double strokeWidth = 5.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: makeTopAppBar, body: DrawPad());
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Drawing', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );
}
