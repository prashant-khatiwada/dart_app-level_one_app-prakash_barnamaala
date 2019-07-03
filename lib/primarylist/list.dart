
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


class LetterList_x extends StatelessWidget {

  final List<LetterNumberModal> _letterModal_x;

  LetterList_x(this._letterModal_x);

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