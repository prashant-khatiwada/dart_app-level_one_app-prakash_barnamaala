import 'package:audioplayers/audio_cache.dart';
import 'package:prakash_barnamaala/draw_ui/draw_pad.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:flutter/material.dart';

class DetailPageLetterImage extends StatelessWidget {
  final LetterNumberModalImage genericItem;

  DetailPageLetterImage({Key key, this.genericItem}) : super(key: key);

  final AudioCache audioPlayer = AudioCache();


  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                genericItem.secondaryWord,
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Spacer(),
              FlatButton(
                onPressed: () {
                  audioPlayer.play(genericItem.audioWordData);
                  audioPlayer.clear(genericItem.audioWordData);
                },
                child: new Icon(
                  Icons.volume_up,
                  color: Colors.white,
                  size: 25.0,
                ),
                shape: new CircleBorder(),
                color: Colors.lightGreen,
              ),
            ],
          ),
        )
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(genericItem.imageData),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color.fromRGBO(58, 66, 86, .9).withOpacity(0.70)),
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

    final bottomContent = Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(58, 66, 86, .9).withOpacity(0.70)),
          height: MediaQuery.of(context).size.height * 0.70,
          child: DrawPad(),
        ),
        Positioned(
          left: 20.0,
          top: 5.0,
          child: Text(
            'अभ्यास: ' + genericItem.secondaryLetter,
            style: TextStyle(color: Colors.black12, fontSize: 20),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
