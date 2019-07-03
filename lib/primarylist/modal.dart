
import 'package:flutter/material.dart';

// Model class for Menu Items Grid View
class MenuModal {

  final String title;
  final IconData icon;

  const MenuModal({this.title, this.icon});
}


// Model class for Letters and Numbers Items
class LetterNumberModal {
  final String primaryLetter;
  final String primaryWord;
  final String secondaryLetter;
  final String secondaryWord;
  final IconData imageData;

  const LetterNumberModal({
    this.primaryLetter,
    this.primaryWord,
    this.secondaryLetter,
    this.secondaryWord,
    this.imageData
  });
}


// Model class for Language - Idioms, Phrases and Adage
class LanguageModal {
  final String primaryLetter;
  final String secondaryLetter;

  const LanguageModal({this.primaryLetter, this.secondaryLetter});
}


