import 'package:flutter/material.dart';



// Model class for Menu Items Grid View - Three
class MenuModal {
  final String title;
  final String secondTitle;
  final String image;
  final int menuNumber;

  const MenuModal({this.title, this.secondTitle, this.image, this.menuNumber});
}

// Model class for Menu Items - Poems, Songs,
class MenuModalTwo {
  final String title;
  final String subTitle;
  final IconData icon;
  final int menuNumber;

  const MenuModalTwo({this.title, this.subTitle, this.icon, this.menuNumber});
}

// Model class for Letters and Numbers Items (no Image)
class LetterNumberModal {
  final int position;
  final String primaryLetter;
  final String primaryWord;
  final String secondaryLetter;
  final String secondaryWord;
  final String audioData;

  const LetterNumberModal({this.position,
    this.primaryLetter,
    this.primaryWord,
    this.secondaryLetter,
    this.secondaryWord,
    this.audioData});
}

// Model class for Letters (with Image) (with Audio) (with Audio for Word)
class LetterNumberModalImage {
  final int position;
  final String primaryLetter;
  final String primaryWord;
  final String secondaryLetter;
  final String secondaryWord;
  final String imageData;
  final String audioData;
  final String audioWordData;

  const LetterNumberModalImage({this.position,
    this.primaryLetter,
    this.primaryWord,
    this.secondaryLetter,
    this.secondaryWord,
    this.imageData,
    this.audioData,
    this.audioWordData,
  });
}

// Model class for Word Items (with Image) (with Audio)
class WordModal {
  final int position;
  final String primaryWord;
  final String secondaryWord;
  final String tertiaryWord;
  final String imageData;
  final String audioData;

  const WordModal({
    this.position,
    this.primaryWord,
    this.secondaryWord,
    this.tertiaryWord,
    this.imageData,
    this.audioData
  });
}

// Model class for Word Items (with Image) (with Audio) (with Secondary Audio)
class WordModalTwo {
  final int position;
  final String primaryWord;
  final String secondaryWord;
  final String tertiaryWord;
  final String imageData;
  final String audioData;
  final String audioDataSecond;

  const WordModalTwo({this.position,
    this.primaryWord,
    this.secondaryWord,
    this.tertiaryWord,
    this.imageData,
    this.audioData,
    this.audioDataSecond
  });
}

// Model class for Nepal Items (Image)
class NepalImageModal {
  final int position;
  final String englishName;
  final String devnagariNepaliName;
  final String devnagariEngName;
  final String imageData;

  const NepalImageModal(
      {this.position, this.englishName, this.devnagariNepaliName,
        this.devnagariEngName, this.imageData});
}

// Model class for Phrase Items
class PhraseModal {
  final int position;
  final String primaryPhrase;
  final String secondaryPhrase;
  final String tertiaryPhrase;
  final String audioPhrase;

  const PhraseModal({
    this.position,
    this.primaryPhrase,
    this.secondaryPhrase,
    this.tertiaryPhrase,
    this.audioPhrase
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
