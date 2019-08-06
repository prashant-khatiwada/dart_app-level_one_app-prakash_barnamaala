import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:prakash_barnamaala/data/data_letter_vowel.dart';
import 'package:prakash_barnamaala/page/detail_page_letter.dart';
import 'package:prakash_barnamaala/page/detail_page_phrase.dart';
import 'package:prakash_barnamaala/page/detail_page_word.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';
import 'package:prakash_barnamaala/page/detail_page_language.dart';

// Menu ListCard or GridCard Items for Menu
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.choice}) : super(key: key);
  final MenuModal choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {},
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
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(choice.title,
                      style:
                          new TextStyle(fontSize: 20.0, color: Colors.white)),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ));
  }
}

// Language - Adage, Idioms, and Phrases
class LetterChoiceCard extends StatelessWidget {
  final LanguageModal _languageModal;

  LetterChoiceCard(this._languageModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
      children: <Widget>[
        new ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            leading: new CircleAvatar(
                child: new Text(_languageModal.primaryLetter[0])),
            title: new Text(_languageModal.primaryLetter),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Color.fromRGBO(58, 66, 86, 1.0), size: 30.0),
            subtitle: new Text("के हो ?"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(lesson: _languageModal)));
            }),
      ],
    ));
  }
}

// Letter, Number Card Items
class LetterNumberCard extends StatelessWidget {
  final LetterNumberModal _letter_number_modal;

  LetterNumberCard(this._letter_number_modal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: Column(
      children: <Widget>[
        new ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            leading: new CircleAvatar(
                child: new Text(_letter_number_modal.primaryLetter[0])),
            title: new Text(_letter_number_modal.primaryLetter),
            subtitle: new Text(_letter_number_modal.secondaryWord),
            onTap: () {}),
      ],
    ));
  }
}

// Song Card items
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

// Comprehension Card items
class LanguageComprehensionCard extends StatelessWidget {
  final SongPoemComprehensionModal _genericModal;

  LanguageComprehensionCard(this._genericModal);

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

// Nepal Picture Card items
class NepalPictureCard extends StatelessWidget {
  final NepalImageModal _genericModal;
  NepalPictureCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        child: Container(
          child: Column(

            children: <Widget>[
              Text(
                _genericModal.englishName,
                style: (
                    TextStyle(fontStyle: FontStyle.italic)
                ),),
              SizedBox(height: 10.0),
              Text(
                _genericModal.devnagariNepaliName,
                style: (
                    TextStyle(fontStyle: FontStyle.italic, fontSize: 28)
                ),),
              Text(
                _genericModal.devnagariEngName,
                style: (
                    TextStyle(fontStyle: FontStyle.italic, )
                ),),
            ],
          ),
        ));
  }
}

// Letter - Vowel and Consonant Read Card
class LetterReadCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  const LetterReadCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 30.0),
                Center(
                    child: Text(
                      _genericModal.primaryLetter,
                    )),
                SizedBox(height: 10.0),
                new Center(
                  child: new Text(_genericModal.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 72.0, color: Colors.white)),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ));
  }
}

// Letter - Vowel and Consonant Write Card
class LetterWriteCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterWriteCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: Column(
            children: <Widget>[
              new ExpansionTile(
                title: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      new Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 70,
                      ),
                      SizedBox(width: 10.0),
                      new Text(
                        _genericModal.secondaryLetter,
                        style: (TextStyle(fontSize: 60, color: Colors.white)),
                      ),
                      SizedBox(width: 10.0),
                      new Text(
                        _genericModal.secondaryWord +
                            "  (" +
                            _genericModal.primaryWord +
                            ")",
                        style: (TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  /*Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        _genericModal.primaryWord,
                        style: (TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        _genericModal.primaryLetter,
                        style: (TextStyle(fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white )),
                      ),
                    ],
                  ),*/
                  Row(
                    children: <Widget>[
                      Spacer(),
                      IconButton(
                          icon: new Icon(
                            Icons.volume_up,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetterVowel()));*/
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.content_copy,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            final snackBar = SnackBar(
                                content: Text("Copied to Clipboard: " +
                                    _genericModal.secondaryWord));
                            Scaffold.of(context).showSnackBar(snackBar);
                            Clipboard.setData(new ClipboardData(
                                text: _genericModal.secondaryWord));
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.details,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPageLetter(
                                      genericModal: _genericModal,
                                    )));
                          }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

// Letter - Vowel and Consonant Lesson Card
class LetterLessonCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterLessonCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 20.0),
                Center(
                    child: Text(
                      _genericModal.primaryLetter,
                    )),
                SizedBox(height: 5.0),
                new Center(
                  child: new Text(_genericModal.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 28.0, color: Colors.white)),
                ),
                new Center(
                  child: new Text(_genericModal.secondaryWord,
                      style: new TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ));
  }
}

// Letter - Vowel and Consonant Lesson Sentence Card
class LetterLessonSentenceCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterLessonSentenceCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 10.0),
                Center(
                    child: Text(_genericModal.primaryLetter,
                    )),
                SizedBox(height: 5.0),
                new Center(
                  child: new Text(_genericModal.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 28.0, color: Colors.white)),
                ),
                new Center(
                  child: new Text(_genericModal.secondaryWord,
                      style: new TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ));
  }
}

// Letter - Number - Multiplication Card
class LetterMultiplicationCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterMultiplicationCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        child: Container(
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 10.0),
                Center(
                  child: new Text(_genericModal.secondaryLetter,
                      style: new TextStyle()),
                ),
                SizedBox(height: 5.0),
                Center(
                  child: new Text(_genericModal.secondaryWord,
                      style: new TextStyle(
                        fontSize: 24.0,
                      )),
                ),
                SizedBox(height: 5.0),
              ],
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
        margin: new EdgeInsets.all(5.0),
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
                    child: Text(
                      _genericModal.primaryLetter,
                    )),
                SizedBox(height: 2.0),
                new Center(
                  child: new Text(_genericModal.secondaryLetter,
                      style: new TextStyle(fontSize: 24.0)),
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ));
  }
}

// Letter - Barhakhari card
class LetterBarhakhariCard extends StatelessWidget {
  final LetterNumberModal _genericModal;

  LetterBarhakhariCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(5.0),
        child: Container(
          child: new InkWell(
            onTap: () {},
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
                      _genericModal.secondaryLetter,
                      style:
                      new TextStyle(fontSize: 100.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

// Word Card Item
class WordCard extends StatelessWidget {
  final WordModal _genericModal;

  WordCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          child: Column(
            children: <Widget>[
              new ExpansionTile(
                title: Container(
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        leading: new CircleAvatar(
                          child: Icon(Icons.image, color: Colors.grey), backgroundColor: Colors.white,),
                        // child: Image.asset( ),
                        title: Text(_genericModal.primaryWord),
                        subtitle: Text(
                          _genericModal.secondaryWord,
                        ),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        _genericModal.tertiaryWord,
                        style: (TextStyle(fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Spacer(),
                      IconButton(
                          icon: new Icon(
                            Icons.volume_up,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetterVowel()));
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.content_copy,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            final snackBar = SnackBar(
                                content: Text("Copied to Clipboard: " +
                                    _genericModal.secondaryWord));
                            Scaffold.of(context).showSnackBar(snackBar);
                            Clipboard.setData(new ClipboardData(
                                text: _genericModal.secondaryWord));
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.details,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPageWord(
                                      word: _genericModal,
                                    )));
                          }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

// Phrase Card Item
class PhraseCard extends StatelessWidget {
  final PhraseModal _genericModal;

  PhraseCard(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        child: Container(
          child: Column(
            children: <Widget>[
              new ExpansionTile(
                title: Container(
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        title: Text(_genericModal.primaryPhrase),
                        subtitle: Text(_genericModal.secondaryPhrase,
                        ),),
                    ],
                  ),
                ),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 30,
                      ),
                      Text(
                        _genericModal.tertiaryPhrase,
                        style: (
                            TextStyle(fontStyle: FontStyle.italic)
                        ),),
                    ],
                  ),
                  new Row(
                    children: <Widget>[

                      Spacer(),
                      IconButton(
                          icon: new Icon(
                            Icons.volume_up,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetterVowel()));
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.content_copy,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            final snackBar = SnackBar(
                                content: Text("Copied to Clipboard: " +
                                    _genericModal.secondaryPhrase));
                            Scaffold.of(context).showSnackBar(snackBar);
                            Clipboard.setData(new ClipboardData(
                                text: _genericModal.secondaryPhrase));
                          }),
                      IconButton(
                          icon: new Icon(
                            Icons.details,
                            size: 28,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPagePhrase(
                                      phrase: _genericModal,
                                    )));
                          }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}


