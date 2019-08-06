import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/menu/menu_letter.dart';
import 'package:prakash_barnamaala/menu/menu_word.dart';
import 'package:prakash_barnamaala/menu/menu_np.dart';
import 'package:prakash_barnamaala/menu/menu_phrase.dart';

import 'data/data_nepal_general.dart';

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
            accountName: Text('Prakash Barnamaala'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.school,
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NepalGeneral()));

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
            onTap: () {},
            child: ListTile(
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
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
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );

    // Scaffold
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: makeTopAppBar,
      drawer: makeDrawer,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}
