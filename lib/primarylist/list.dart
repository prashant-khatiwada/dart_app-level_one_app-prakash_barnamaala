
import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list_item.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LetterList extends StatelessWidget {

  final List<LanguageModal> _letterModal;

  LetterList(this._letterModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildLetterList(),
    );
  }

  List<LetterChoiceCard> _buildLetterList() {
    return _letterModal
        .map((letter) => new LetterChoiceCard(letter))
        .toList();
  }
}


class LetterNumberList extends StatelessWidget {

  final List<LetterNumberModal> _letterModal_x;

  LetterNumberList(this._letterModal_x);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildLetterList(),
    );
  }

  List<LetterNumberCard> _buildLetterList() {
    return _letterModal_x
        .map((letter) => new LetterNumberCard(letter))
        .toList();
  }
}


// List Letter - Read Letters
class LetterListListen extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListListen(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterReadCard> _buildList() {
    return _genericModal
        .map((map) => new LetterReadCard(map))
        .toList();
  }
}

// List Letter - Write Letters
class LetterListRead extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListRead(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterWriteCard> _buildList() {
    return _genericModal
        .map((map) => new LetterWriteCard(map))
        .toList();
  }
}

// List Letter - Lesson Letters
class LetterListLesson extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListLesson(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterLessonCard> _buildList() {
    return _genericModal
        .map((map) => new LetterLessonCard(map))
        .toList();
  }
}

// List Letter - Lesson - Sentence Letters
class LetterListLessonSentence extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListLessonSentence(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterLessonSentenceCard> _buildList() {
    return _genericModal
        .map((map) => new LetterLessonSentenceCard(map))
        .toList();
  }
}

// List Letter - Number 1 to 100
class LetterListNumber1to100 extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListNumber1to100(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterNumber1to100Card> _buildList() {
    return _genericModal
        .map((map) => new LetterNumber1to100Card(map))
        .toList();
  }
}

// List Letter - Number Multiplication Table
class LetterListMultiplicationTable extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListMultiplicationTable(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterMultiplicationCard> _buildList() {
    return _genericModal
        .map((map) => new LetterMultiplicationCard(map))
        .toList();
  }
}

// List Letter - Barhakhari
class LetterListBarhakhari extends StatelessWidget {

  final List<LetterNumberModal> _genericModal;

  LetterListBarhakhari(this._genericModal);


  @override
  Widget build(BuildContext context) {
    return new ListView(

      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
      scrollDirection: Axis.horizontal,
    );
  }

  List<LetterBarhakhariCard> _buildList() {
    return _genericModal
        .map((map) => new LetterBarhakhariCard(map))
        .toList();
  }
}

// List - Words
class WordList extends StatelessWidget {

  final List<WordModal> _wordModal;

  WordList(this._wordModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<WordCard> _buildList() {
    return _wordModal
        .map((word) => new WordCard(word))
        .toList();
  }
}

// List - Phrases
class PhraseList extends StatelessWidget {

  final List<PhraseModal> _phraseModal;
  PhraseList(this._phraseModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<PhraseCard> _buildList() {
    return _phraseModal
        .map((phrase) => new PhraseCard(phrase))
        .toList();
  }
}

// List - Nepal (with pictures)
class NepalImageList extends StatelessWidget {

  final List<NepalImageModal> _phraseModal;
  NepalImageList(this._phraseModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<NepalPictureCard> _buildList() {
    return _phraseModal
        .map((genericList) => new NepalPictureCard(genericList))
        .toList();
  }
}

// List - Song
class SongList extends StatelessWidget {

  final List<SongPoemComprehensionModal> _genericModal;
  SongList(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 1.0),
      children: _buildList(),
    );
  }

  List<LanguageSongPoemCard> _buildList() {
    return _genericModal
        .map((song) => new LanguageSongPoemCard(song))
        .toList();
  }
}

// List - Comprehension
class ComprehensionList extends StatelessWidget {

  final List<SongPoemComprehensionModal> _genericModal;
  ComprehensionList(this._genericModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 1.0),
      children: _buildList(),
    );
  }

  List<LanguageComprehensionCard> _buildList() {
    return _genericModal
        .map((song) => new LanguageComprehensionCard(song))
        .toList();
  }
}
