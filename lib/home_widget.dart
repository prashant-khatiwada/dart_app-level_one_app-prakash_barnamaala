import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data/data_ukhaan.dart';
import 'package:prakash_barnamaala/data/data_vowel.dart';
import 'package:prakash_barnamaala/menu/menu_letter.dart';
import 'package:prakash_barnamaala/menu/menu_word.dart';
import 'package:prakash_barnamaala/menu/menu_phrase.dart';

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


    // Top App Bar
    final makeTopAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Prakash Barnamaala', style: TextStyle(color: Colors.white)),
      centerTitle: true,
    );

    // Drawer Menu
    final makeDrawer = Drawer(
        child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child: new ListView(
        children: <Widget>[
//            header
          new UserAccountsDrawerHeader(
            accountName: Text('Prashant Khatiwada'),
            accountEmail: Text('prashant.khatiwada@icloud.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(
              color: Color.fromRGBO(58, 66, 86, 1.0),
            ),
          ),

//            body

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My account', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Log out', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.exit_to_app,
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
        new Ukhaan(),
        new Vowel()
      ],
      onPageChanged: onPageChanged,
      controller: _pageController,
    );

    // Bottom Bar Settings
    final makeBottom = Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Color.fromRGBO(58, 66, 86, 1.0),
      ), // sets the inactive color of the `BottomNavigationBar`
      child: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
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
                Icons.chat,
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
                Icons.people,
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
                Icons.flag,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Nepali",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.more,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Other",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              ))
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );

    // Final - - Scaffold Setting
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: makeTopAppBar,
      drawer: makeDrawer,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}
