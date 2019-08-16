import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('About', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  final textAbout = Column(
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Prakash Barnamala\n          (Nepali)',
            style: TextStyle(color: Colors.black26, fontSize: 28),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            'Prakash Barnamala is the mobile app to teach Nepali language to children '
            'and adults alike. It is developed in collaboration with Prakash Harinagare '
            '(https://www.facebook.com/PrakashHarinagare/) '
            'Interesting and easy to learn, the app has images and audio files to make '
            'learning interesting. Easy to remember layouts and simple Devanagari/Nepali '
            'words to help the kids to remember Nepali. Includes exercises to practice the '
            'newly learnt alphabets and words.'),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            'While extra effort has been made to make all the information accurate, '
            'software may contain inaccuracies. By using Prakash Barnamaala, '
            'you agree that author/app assumes no liability for any harm '
            'caused by the use of this application.'),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            'The current versions of the app does not use/collect any kind of '
            'personal information. Future versions might change this practice, '
            'and any change shall be notified to the users with any/all version updates.'),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('visit www.momobites.com for more resources.'),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Copyrights and Credits',
            style: TextStyle(color: Colors.black26, fontSize: 24),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Contributors',
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            'Prashant Khatiwada, Prakash Upadhaya, Shanta Devi Pant, Aditi Giri, '
            'Prasana Khatiwoda, Upendra Gautam, Vivek Gyawali, Ayush Bhattarai.'),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Audio',
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Audio and voice recording are done in mp3 format.'),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Image',
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            'Icons by Freepik from www.flaticons.com are licensed under CC 3.0 BY. '
            'Images from Wikimedia is licensed under CC 3.0 BY are from '
            'Kamal Ratna Tuladhar, Dibyendu Ash, Buddhika.jm, Arundhungel. '
            'Images from www.pixabay.com are used with no attribution required'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: SingleChildScrollView(
          child: textAbout,
        ));
  }
}
