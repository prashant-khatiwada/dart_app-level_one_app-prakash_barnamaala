
import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/primary_list_item.dart';
import 'package:prakash_barnamaala/primarylist/modal/modal_primary.dart';

class LetterList extends StatelessWidget {

  final List<LetterModal> _letterModal;

  LetterList(this._letterModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildLetterList(),
    );
  }

  List<LetterListItem> _buildLetterList() {
    return _letterModal
        .map((letter) => new LetterListItem(letter))
        .toList();
  }
}