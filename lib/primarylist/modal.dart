
import 'package:flutter/material.dart';

// Model class for Letters and Numbers Items
// // INCOMPLETE
class LetterModal_x {
  final String primaryLetter;
  final String primaryWord;
  final String secondaryLetter;
  final String secondaryWord;
  final IconData imageData;

  const LetterModal_x({
    this.primaryLetter,
    this.primaryWord,
    this.secondaryLetter,
    this.secondaryWord,
    this.imageData
  });
}





// Model class for Words and Phrases
// INCOMPLETE
class LanguageModal {
  final String primaryLetter;
  final String secondaryLetter;

  const LanguageModal({this.primaryLetter, this.secondaryLetter});
}


// Model class for gridView/List Menu Items
// // INCOMPLETE
class MenuModal {

  final String title;
  final IconData icon;

  const MenuModal({this.title, this.icon});
}