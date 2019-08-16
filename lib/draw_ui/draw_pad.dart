import 'package:prakash_barnamaala/draw_ui/dialog_color.dart';
import 'package:prakash_barnamaala/draw_ui/painter.dart';
import 'package:prakash_barnamaala/draw_ui/dialog_width.dart';
import 'package:flutter/material.dart';

class DrawPad extends StatefulWidget {
  @override
  DrawPadState createState() => new DrawPadState();
}

class DrawPadState extends State<DrawPad> with TickerProviderStateMixin {
  AnimationController controller;
  List<Offset> points = <Offset>[];
  Color color = Colors.black;
  StrokeCap strokeCap = StrokeCap.round;
  double strokeWidth = 5.0;
  List<Painter> painters = <Painter>[];

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 6,
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                RenderBox object = context.findRenderObject();
                Offset localPosition =
                    object.globalToLocal(details.globalPosition);
                points = new List.from(points);
                points.add(localPosition);
              });
            },
            onPanEnd: (DragEndDetails details) => points.add(null),
            child: CustomPaint(
              painter: Painter(
                  points: points,
                  color: color,
                  strokeCap: strokeCap,
                  strokeWidth: strokeWidth,
                  painters: painters),
              size: Size.infinite,
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      points.clear();
                      for (Painter painter in painters) {
                        painter.points.clear();
                      }
                    },
                    child: new Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    shape: new StadiumBorder(),
                    color: Colors.lightGreen,
                  ),
                  SizedBox(width: 10.0),
                  FlatButton(
                    onPressed: () async {
                      Color temp;
                      temp = await showDialog(
                          context: context,
                          builder: (context) => ColorDialog());
                      if (temp != null) {
                        setState(() {
                          painters.add(Painter(
                              points: points.toList(),
                              color: color,
                              strokeCap: strokeCap,
                              strokeWidth: strokeWidth));
                          points.clear();
                          color = temp;
                        });
                      }
                    },
                    child: new Icon(
                      Icons.palette,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    shape: new StadiumBorder(),
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10.0),
                  FlatButton(
                    onPressed: () async {
                      double temp;
                      temp = await showDialog(
                          context: context,
                          builder: (context) =>
                              WidthDialog(strokeWidth: strokeWidth));
                      if (temp != null) {
                        setState(() {
                          painters.add(Painter(
                              points: points.toList(),
                              color: color,
                              strokeCap: strokeCap,
                              strokeWidth: strokeWidth));
                          points.clear();
                          strokeWidth = temp;
                        });
                      }
                    },
                    child: new Icon(
                      Icons.lens,
                      color: Colors.white,
                      size: 10.0,
                    ),
                    shape: new StadiumBorder(),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            )),
      ],
    ));
  }
}
