import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list_item.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

// Language - Adage, Proverb, Idioms
class LanguageList extends StatelessWidget {
  final List<LanguageModal> _genericList;

  LanguageList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildLetterList(),
    );
  }

  List<LanguageGeneralCard> _buildLetterList() {
    return _genericList.map((letter) => new LanguageGeneralCard(letter))
        .toList();
  }
}


// List Letter - Grid - Legged Letters and Number 0 to 10
class LetterListGrid extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListGrid(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterGridCard> _buildList() {
    return _genericList.map((map) => new LetterGridCard(map)).toList();
  }
}

// List Letter - Audio Letters (with Image)
class LetterListAudioImage extends StatelessWidget {
  final List<LetterNumberModalImage> _genericList;

  LetterListAudioImage(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterAudioCard> _buildList() {
    return _genericList.map((map) => new LetterAudioCard(map)).toList();
  }
}

// List Letter - Read Letters (with Image)
class LetterListReadImage extends StatelessWidget {
  final List<LetterNumberModalImage> _genericList;

  LetterListReadImage(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterReadCardImage> _buildList() {
    return _genericList.map((map) => new LetterReadCardImage(map)).toList();
  }
}

// List Letter - Lesson Letters
class LetterListLesson extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListLesson(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterLessonCard> _buildList() {
    return _genericList.map((map) => new LetterLessonCard(map)).toList();
  }
}

// List Letter - Lesson - Sentence Letters
class LetterListLessonSentence extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListLessonSentence(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterLessonSentenceCard> _buildList() {
    return _genericList
        .map((map) => new LetterLessonSentenceCard(map))
        .toList();
  }
}

// List Letter - Number 1 to 100
class LetterListNumber1to100 extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListNumber1to100(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsets.all(2.0),
      children: _buildList(),
    );
  }

  List<LetterNumber1to100Card> _buildList() {
    return _genericList.map((map) => new LetterNumber1to100Card(map)).toList();
  }
}

// List Letter - Number Multiplication Table
class LetterListMultiplicationTable extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListMultiplicationTable(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<LetterMultiplicationCard> _buildList() {
    return _genericList
        .map((map) => new LetterMultiplicationCard(map))
        .toList();
  }
}

// List Letter - Barhakhari
class LetterListBarhakhari extends StatelessWidget {
  final List<LetterNumberModal> _genericList;

  LetterListBarhakhari(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
      scrollDirection: Axis.horizontal,
    );
  }

  List<LetterBarhakhariCard> _buildList() {
    return _genericList.map((map) => new LetterBarhakhariCard(map)).toList();
  }
}

// List - Words
class WordList extends StatelessWidget {
  final List<WordModal> _genericList;

  WordList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<WordCard> _buildList() {
    return _genericList.map((word) => new WordCard(word)).toList();
  }
}

// List - Words (with Image) (No Sound)
class WordListImage extends StatelessWidget {
  final List<WordModalImage> _genericList;

  WordListImage(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<WordCardImage> _buildList() {
    return _genericList.map((word) => new WordCardImage(word)).toList();
  }
}

// List - Words (with Image) (with Sound)
class WordListImageSound extends StatelessWidget {
  final List<WordModalImage> _genericList;

  WordListImageSound(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<WordCardImageSound> _buildList() {
    return _genericList.map((word) => new WordCardImageSound(word)).toList();
  }
}

// List - Phrases
class PhraseList extends StatelessWidget {
  final List<PhraseModal> _genericList;

  PhraseList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<PhraseCard> _buildList() {
    return _genericList.map((phrase) => new PhraseCard(phrase)).toList();
  }
}

// List - Nepal (with pictures)
class NepalImageList extends StatelessWidget {
  final List<NepalImageModal> _genericList;

  NepalImageList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<NepalPictureCard> _buildList() {
    return _genericList
        .map((genericList) => new NepalPictureCard(genericList))
        .toList();
  }
}

// List - Song
class SongList extends StatelessWidget {
  final List<SongPoemComprehensionModal> _genericList;

  SongList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 1.0),
      children: _buildList(),
    );
  }

  List<LanguageSongPoemCard> _buildList() {
    return _genericList.map((song) => new LanguageSongPoemCard(song)).toList();
  }
}

// List - Comprehension
class ComprehensionList extends StatelessWidget {
  final List<SongPoemComprehensionModal> _genericList;

  ComprehensionList(this._genericList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 1.0),
      children: _buildList(),
    );
  }

  List<LanguageComprehensionCard> _buildList() {
    return _genericList
        .map((song) => new LanguageComprehensionCard(song))
        .toList();
  }
}
