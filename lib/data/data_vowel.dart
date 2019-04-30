import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class Vowel extends StatelessWidget {
  _buildList() {
    List<LetterModal_x> data = new List<LetterModal_x>();

    List<String> primaryLetter_list = [
      "au", "aa", "e", "ei", "oo", "ou", "wri", "ea", "eai", "ao", "aou", "am", "amh"
    ];

    List<String> secondaryLetter_list = [
      "अ", "आ", "इ", "ई", "उ", "ऊ", "ऋ", "ए", "ऐ", "अाे", "अाै", "अं", "अ:"
    ];

    for (int i = 0; i < primaryLetter_list.length; i++) {
      data.add(new LetterModal_x(
          primaryLetter: primaryLetter_list[i],
          primaryWord: primaryLetter_list[i],
          secondaryLetter: secondaryLetter_list[i],
          secondaryWord: secondaryLetter_list[i],
          imageData: Icons.home
      ),
      );
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new LetterList_x(_buildList()));
  }
}
