import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prakash_barnamaala/detail_page/detail_page_letter.dart';
import 'package:prakash_barnamaala/detail_page/detail_page_word_image.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

Color cardDetailColor = Colors.blue[100];
Color cardItemOne = Color(0xFFF8BBD0);
Color cardItemTwo = Color(0xFFC8E6C9);
Color cardItemThree = Color(0xFFFFF9C4);
Color cardItemFour = Color(0xFFFFCCBC);

AudioCache audioPlayer = AudioCache();

// Language - Adage, Idioms, and Phrases
class LanguageGeneralCard extends StatelessWidget {
  final LanguageModal _genericItem;

  LanguageGeneralCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
            .withOpacity(0.10),
        child: Container(
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _genericItem.primaryLetter,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        "के हो ?",
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              _genericItem.secondaryLetter,
                              style: (TextStyle(
                                  fontSize: 20, color: Colors.black)),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Language - Song Card items
class LanguageSongPoemCard extends StatelessWidget {
  final SongPoemComprehensionModal _genericModal;

  LanguageSongPoemCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: Container(
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 5.0),
                Center(
                  child: new Text(_genericModal.genericBody,
                      style: new TextStyle(
                        fontSize: 20.0,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

// Language - Comprehension Card items
class LanguageComprehensionCard extends StatelessWidget {
  final SongPoemComprehensionModal _genericModal;

  LanguageComprehensionCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Center(
                  child: new Text(_genericModal.genericBody,
                      style: new TextStyle(
                        fontSize: 20.0,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

// Nepal General - Picture Card items
class NepalPictureCard extends StatelessWidget {
  final NepalImageModal _genericItem;

  NepalPictureCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: cardDetailColor,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_genericItem.imageData))),
              ),
              Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        _genericItem.englishName,
                        style: (TextStyle()),
                      ),
                      Text(
                        _genericItem.devnagariNepaliName,
                        style: (TextStyle(fontSize: 20)),
                      ),
                      Text(
                        _genericItem.devnagariEngName,
                        style: (TextStyle(
                          fontStyle: FontStyle.italic,
                        )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}

// Letter - Legged Card, and Number Card
class LetterGridCard extends StatelessWidget {
  final LetterNumberModal _genericItem;

  const LetterGridCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                      .withOpacity(0.20),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: new InkWell(
            onTap: () {
              if (_genericItem.audioData != null) {
                audioPlayer.play(_genericItem.audioData);
                audioPlayer.clear(_genericItem.audioData);
              }
            },
            child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(_genericItem.secondaryLetter,
                        style: new TextStyle(
                            fontSize: 100.0, color: Colors.black)),
                  ],
                )),
          ),
        ));
  }
}

// Letter - Audio Card (With Image)
class LetterAudioCard extends StatelessWidget {
  final LetterNumberModalImage _genericItem;

  const LetterAudioCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: new InkWell(
            onTap: () {
              audioPlayer.play(_genericItem.audioData);
              audioPlayer.clear(_genericItem.audioData);
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(_genericItem.imageData))),
                  ),
                ),
                Positioned(
                  child: new Text(
                    _genericItem.secondaryLetter,
                    style: (TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

// Letter - Read Card (with Image)
class LetterReadCardImage extends StatelessWidget {
  final LetterNumberModalImage _genericItem;

  LetterReadCardImage(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: cardDetailColor,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_genericItem.imageData))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  SizedBox(width: 20.0),
                  new Text(
                    _genericItem.secondaryLetter,
                    style: (TextStyle(fontSize: 70, color: Colors.black)),
                  ),
                  SizedBox(width: 10.0),
                  new Text(
                    _genericItem.secondaryWord +
                        "  (" +
                        _genericItem.primaryWord +
                        ")",
                    style: (TextStyle(color: Colors.black)),
                  ),
                  Spacer(),
                  IconButton(
                      icon: new Icon(
                        Icons.volume_up,
                        size: 28,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        audioPlayer.play(_genericItem.audioData);
                        audioPlayer.clear(_genericItem.audioData);
                      }),
                  IconButton(
                      icon: new Icon(
                        Icons.content_copy,
                        size: 28,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        final snackBar = SnackBar(
                            content: Text("Copied to Clipboard: " +
                                _genericItem.secondaryWord));
                        Scaffold.of(context).showSnackBar(snackBar);
                        Clipboard.setData(new ClipboardData(
                            text: _genericItem.secondaryWord));
                      }),
                  IconButton(
                      icon: new Icon(
                        Icons.brush,
                        size: 34,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPageLetterImage(
                                      genericItem: _genericItem,
                                    )));
                      }),
                ],
              ),
            ],
          ),
        ));
  }
}

// Letter - Lesson (Word) Card
class LetterLessonCard extends StatelessWidget {
  final LetterNumberModal _genericItem;

  LetterLessonCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color:
            (_genericItem.position % 2 == 0) ? cardItemFour : cardItemTwo,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: new InkWell(
            onTap: () {
              audioPlayer.play(_genericItem.audioData);
              audioPlayer.clear(_genericItem.audioData);
            },
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    _genericItem.primaryLetter,
                  ),
                  SizedBox(height: 5.0),
                  Text(_genericItem.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 28.0, color: Colors.black)),
                  Text(_genericItem.secondaryWord,
                      style: new TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),
        ));
  }
}

// Letter - Lesson (Sentence) Card
class LetterLessonSentenceCard extends StatelessWidget {
  final LetterNumberModal _genericItem;

  LetterLessonSentenceCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color:
            (_genericItem.position % 2 == 0) ? cardItemFour : cardItemTwo,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: new InkWell(
            onTap: () {
              audioPlayer.play(_genericItem.audioData);
              audioPlayer.clear(_genericItem.audioData);
            },
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text(
                    _genericItem.primaryLetter,
                  ),
                  SizedBox(height: 5.0),
                  Text(_genericItem.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 28.0, color: Colors.black)),
                  Text(_genericItem.secondaryWord,
                      style: new TextStyle(color: Colors.black)),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ));
  }
}

// Letter - Number - Multiplication Card
class LetterMultiplicationCard extends StatelessWidget {
  final LetterNumberModal _genericItem;

  LetterMultiplicationCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color:
            (_genericItem.position % 2 == 0) ? cardItemFour : cardItemThree,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: new InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text(_genericItem.secondaryLetter, style: new TextStyle()),
                  SizedBox(height: 5.0),
                  Text(_genericItem.secondaryWord,
                      style: new TextStyle(
                        fontSize: 24.0,
                      )),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ));
  }
}

// Letter - Number 1 to 100 card
class LetterNumber1to100Card extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterNumber1to100Card(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              .withOpacity(0.20),
          child: new InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Text(
                    _genericModal.primaryLetter,
                  ),
                  SizedBox(height: 2.0),
                  Text(_genericModal.secondaryLetter,
                      style: new TextStyle(fontSize: 24.0)),
                ],
              ),
            ),
          ),
        ));
  }
}


// Phrase Card Item (No Sound)
class PhraseCard extends StatelessWidget {
  final PhraseModal _genericItem;

  PhraseCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: (_genericItem.position % 2 == 0) ? cardItemOne : cardItemTwo,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        _genericItem.primaryPhrase,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        _genericItem.secondaryPhrase,
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _genericItem.tertiaryPhrase,
                          style: (TextStyle(fontStyle: FontStyle.italic)),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(),
                            IconButton(
                                icon: new Icon(
                                  Icons.content_copy,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  final snackBar = SnackBar(
                                      content: Text("Copied to Clipboard: " +
                                          _genericItem.secondaryPhrase));
                                  Scaffold.of(context).showSnackBar(snackBar);
                                  Clipboard.setData(new ClipboardData(
                                      text: _genericItem.secondaryPhrase));
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Phrase Card Item (Sound)
class PhraseCardSound extends StatelessWidget {
  final PhraseModal _genericItem;

  PhraseCardSound(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: (_genericItem.position % 2 == 0) ? cardItemOne : cardItemTwo,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        _genericItem.primaryPhrase,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        _genericItem.secondaryPhrase,
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _genericItem.tertiaryPhrase,
                          style: (TextStyle(fontStyle: FontStyle.italic)),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(),
                            IconButton(
                                icon: new Icon(
                                  Icons.volume_up,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  audioPlayer.play(_genericItem.audioPhrase);
                                  audioPlayer.clear(_genericItem.audioPhrase);
                                }),
                            IconButton(
                                icon: new Icon(
                                  Icons.content_copy,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  final snackBar = SnackBar(
                                      content: Text("Copied to Clipboard: " +
                                          _genericItem.secondaryPhrase));
                                  Scaffold.of(context).showSnackBar(snackBar);
                                  Clipboard.setData(new ClipboardData(
                                      text: _genericItem.secondaryPhrase));
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Word Card Item (No Image)
class WordCard extends StatelessWidget {
  final WordModal _genericItem;

  WordCard(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color:
            (_genericItem.position % 2 == 0) ? cardItemThree : cardItemFour,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              new ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        _genericItem.primaryWord,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        _genericItem.secondaryWord,
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _genericItem.tertiaryWord,
                          style: (TextStyle(fontStyle: FontStyle.italic)),
                        ),
                        Row(
                          children: <Widget>[
                            Spacer(),
                            IconButton(
                                icon: new Icon(
                                  Icons.volume_up,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  audioPlayer.play(_genericItem.audioData);
                                  audioPlayer.clear(_genericItem.audioData);
                                }),
                            IconButton(
                                icon: new Icon(
                                  Icons.content_copy,
                                  size: 28,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  final snackBar = SnackBar(
                                      content: Text("Copied to Clipboard: " +
                                          _genericItem.secondaryWord));
                                  Scaffold.of(context).showSnackBar(snackBar);
                                  Clipboard.setData(new ClipboardData(
                                      text: _genericItem.secondaryWord));
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Word Card (with Image)
class WordCardImage extends StatelessWidget {
  final WordModal _genericItem;

  WordCardImage(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: cardDetailColor,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(_genericItem.imageData))),
                  ),
                ],
              ),
              new ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        _genericItem.primaryWord,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        _genericItem.secondaryWord,
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              _genericItem.tertiaryWord,
                              style: (TextStyle(fontStyle: FontStyle.italic)),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            icon: new Icon(
                              Icons.volume_up,
                              size: 28,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              audioPlayer.play(_genericItem.audioData);
                              audioPlayer.clear(_genericItem.audioData);
                            }),
                        IconButton(
                            icon: new Icon(
                              Icons.content_copy,
                              size: 28,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              final snackBar = SnackBar(
                                  content: Text("Copied to Clipboard: " +
                                      _genericItem.secondaryWord));
                              Scaffold.of(context).showSnackBar(snackBar);
                              Clipboard.setData(new ClipboardData(
                                  text: _genericItem.secondaryWord));
                            }),
                        IconButton(
                            icon: new Icon(
                              Icons.brush,
                              size: 34,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPageWordImage(
                                            genericItem: _genericItem,
                                          )));
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Word Card (with Image) (with Sound) (Special)
class WordCardImageSound extends StatelessWidget {
  final WordModal _genericItem;

  WordCardImageSound(this._genericItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(7.0),
        child: Container(
          decoration: new BoxDecoration(
            color: cardDetailColor,
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withAlpha(70),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 3.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(_genericItem.imageData))),
                  ),
                  Positioned(
                    right: 1.0,
                    top: 10.0,
                    child: FlatButton(
                      onPressed: () {},
                      child: new Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      shape: new CircleBorder(),
                      color: Colors.black26,
                    ),
                  )
                ],
              ),
              new ExpansionTile(
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        _genericItem.primaryWord,
                        style: (TextStyle(color: Colors.black87)),
                      ),
                      Text(
                        _genericItem.secondaryWord,
                        style: (TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: cardDetailColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              _genericItem.tertiaryWord,
                              style: (TextStyle(fontStyle: FontStyle.italic)),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            icon: new Icon(
                              Icons.volume_up,
                              size: 28,
                              color: Colors.black,
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: new Icon(
                              Icons.content_copy,
                              size: 28,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              final snackBar = SnackBar(
                                  content: Text("Copied to Clipboard: " +
                                      _genericItem.secondaryWord));
                              Scaffold.of(context).showSnackBar(snackBar);
                              Clipboard.setData(new ClipboardData(
                                  text: _genericItem.secondaryWord));
                            }),
                        IconButton(
                            icon: new Icon(
                              Icons.brush,
                              size: 34,
                              color: Colors.black,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
