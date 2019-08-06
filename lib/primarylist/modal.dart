import 'package:flutter/material.dart';

// Model class for Menu Items Grid View
class MenuModal {
  final String title;
  final IconData icon;
  final int menuNumber;

  const MenuModal({this.title, this.icon, this.menuNumber});
}

// Model class for Menu Items - Poems, Songs,
class MenuModalTwo {
  final String title;
  final String subTitle;
  final IconData icon;
  final int menuNumber;

  const MenuModalTwo({this.title, this.subTitle, this.icon, this.menuNumber});
}

// Model class for Letters and Numbers Items
class LetterNumberModal {
  final String primaryLetter;
  final String primaryWord;
  final String secondaryLetter;
  final String secondaryWord;
  final IconData imageData;

  const LetterNumberModal(
      {this.primaryLetter,
      this.primaryWord,
      this.secondaryLetter,
      this.secondaryWord,
      this.imageData});
}

// Model class for Word Items
class WordModal {
  final String primaryWord;
  final String secondaryWord;
  final String tertiaryWord;
  final IconData imageData;

  const WordModal(
      {this.primaryWord,
      this.secondaryWord,
      this.tertiaryWord,
      this.imageData});
}

// Model class for Nepal Items - with Image
class NepalImageModal {
  final String englishName;
  final String devnagariNepaliName;
  final String devnagariEngName;
  final IconData imageData;

  const NepalImageModal(
      {this.englishName,
      this.devnagariNepaliName,
      this.devnagariEngName,
      this.imageData});
}

// Model class for Phrase Items
class PhraseModal {
  final String primaryPhrase;
  final String secondaryPhrase;
  final String tertiaryPhrase;

  const PhraseModal({
    this.primaryPhrase,
    this.secondaryPhrase,
    this.tertiaryPhrase,
  });
}

// Model class for Language - Song, Comprehension and Poem Items
class SongPoemComprehensionModal {
  final String genericTitle;
  final String genericBody;

  const SongPoemComprehensionModal({this.genericTitle, this.genericBody});
}

// Model class for Language - Idioms, Phrases and Adage
class LanguageModal {
  final String primaryLetter;
  final String secondaryLetter;

  const LanguageModal({this.primaryLetter, this.secondaryLetter});
}
