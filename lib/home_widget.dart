import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/menu/menu_letter.dart';
import 'package:prakash_barnamaala/menu/menu_word.dart';
import 'package:prakash_barnamaala/menu/menu_nepali.dart';
import 'package:prakash_barnamaala/menu/menu_phrase.dart';
import 'data/data_about.dart';
import 'data/data_letter_lesson.dart';
import 'data/data_nepal_general.dart';
import 'draw_ui/draw_page.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _MainPageState();
}

class _MainPageState extends State<Home> {
  int _page = 0;
  PageController _pageController;

  // Utils
  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    // Animating to the page.
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> imageData = [
      "assets/image_nepal/nepali_general_01.jpg",
      "assets/image_nepal/nepali_general_04.jpg",
      "assets/image_nepal/nepali_general_05.jpg"
    ];

    imageData.shuffle();
    String decorationImage = imageData[2];

    // Top App Bar
    final makeTopAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
      title: Text('Prakash Barnamaala', style: TextStyle(color: Colors.white)),
      centerTitle: true,
    );

    // Drawer Menu
    final makeDrawer = Drawer(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)
            // color: Colors.white,
          ),
          child: new ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.30,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage(decorationImage),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    right: 25,
                    bottom: 5,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Center(
                      child: Text('Prakash\nBarnamaala',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20, shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],),
                      ),
                    ),
                  ),

                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NepalGeneral()));
                },
                child: ListTile(
                  title: Text('Nepal', style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.outlined_flag,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LetterLesson()));
                },
                child: ListTile(
                  title: Text('Lesson', style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.library_books,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrawApp()));
                },
                child: ListTile(
                  title: Text('Draw', style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.brush,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
                child: ListTile(
                  title: Text('About', style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));

    // Body
    final makeBody = PageView(
      children: [
        new MenuLetter(),
        new MenuWord(),
        new MenuPhrase(),
        new MenuNepali()
      ],
      onPageChanged: onPageChanged,
      controller: _pageController,
    );

    // Bottom Bar
    final makeBottom = Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color.fromRGBO(58, 66, 78, 1.0),
      ),
      child: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.radio_button_unchecked,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Letter",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.change_history,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Word",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.crop_square,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Phrase",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.blur_on,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Nepali",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );

    // Scaffold
    return Scaffold(
      appBar: makeTopAppBar,
      drawer: makeDrawer,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}
