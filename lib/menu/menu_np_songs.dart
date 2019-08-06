import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/data_song/data_song_01.dart';
import 'package:prakash_barnamaala/data_song/data_song_02.dart';
import 'package:prakash_barnamaala/data_song/data_song_03.dart';
import 'package:prakash_barnamaala/data_song/data_song_04.dart';
import 'package:prakash_barnamaala/data_song/data_song_05.dart';
import 'package:prakash_barnamaala/data_song/data_song_06.dart';
import 'package:prakash_barnamaala/data_song/data_song_07.dart';
import 'package:prakash_barnamaala/data_song/data_song_08.dart';
import 'package:prakash_barnamaala/data_song/data_song_09.dart';
import 'package:prakash_barnamaala/data_song/data_song_10.dart';
import 'package:prakash_barnamaala/data_song/data_song_12.dart';
import 'package:prakash_barnamaala/data_song/data_song_13.dart';
import 'package:prakash_barnamaala/data_song/data_song_14.dart';
import 'package:prakash_barnamaala/data_song/data_song_11.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageBabySongs extends StatelessWidget {


  _buildList() {
    List<MenuModalTwo> data = new List<MenuModalTwo>();

    List<String> primaryHeading = [
      "सयौं थुँगा फूलका",
      "कुखुरी काँ",
      "ताराबाजी लै लै",
      "दगुर दगुर कुइरा",
      "दशैं आयो",
      "म्याउँ म्याउँ बिरालो",
      "पानी पर्यो",
      "मै छोरी सुंदरी",
      "कपुरी क, खरायो ख",
      "अगीनी-बगेनी",
      "ऊ बाबा हेर",
      "राम्रो बानी",
      "राम्रा कुरा",
      "मेरो गाउँ ज्यामिरे",
    ];

    List<String> secondaryHeading = [
      "sayoo thunga fulka",
      "kukhuri kaa",
      "tarabaaji lai lai",
      "dagur dagur kuira",
      "dashain aayo",
      "myau myau biralo",
      "paani paryo",
      "mai chori sundari",
      "kapuri ka, kharayo kha",
      "aghini-baghini",
      "oo baba hera",
      "ramro baani",
      "ramra kura",
      "mero gaaun jyamire",
    ];

    List<int> menuNumber = [
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
    ];



    for (int i = 0; i < primaryHeading.length; i++) {
      data.add(new MenuModalTwo(
          title: primaryHeading[i],
          subTitle: secondaryHeading[i],
          menuNumber: menuNumber[i],
          icon: Icons.add
      ));

    }
    return data;
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 78, 1.0),
    title: Text('Baby Songs', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: MenuModalTwoList(_buildList()));
  }
}

// List - Menu
class MenuModalTwoList extends StatelessWidget {

  final List<MenuModalTwo> _menuModal;
  MenuModalTwoList(this._menuModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildList(),
    );
  }

  List<MenuChoiceCard> _buildList() {
    return _menuModal
        .map((phrase) => new MenuChoiceCard(menuModal: phrase))
        .toList();
  }
}

// Card - Menu
class MenuChoiceCard extends StatelessWidget {
  const MenuChoiceCard({Key key, this.menuModal}) : super(key: key);
  final MenuModalTwo menuModal;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LanguageSongPage(menu: menuModal)));
            },

              child: Column(
                children: <Widget>[
                  new ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                      leading: new CircleAvatar(
                          child: new Text(menuModal.menuNumber.toString())),
                      title: new Text(menuModal.title),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(58, 66, 86, 1.0), size: 30.0),
                      subtitle: new Text(menuModal.subTitle),
                    ),
                ],
              ))
          ),
        );
  }
}

// Navigation - Song Menu
class LanguageSongPage extends StatelessWidget {

  final MenuModalTwo menu;
  LanguageSongPage({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int menuNumber = menu.menuNumber;

    // Create a switch for each list
    switch (menuNumber) {
      case(1) : return new Scaffold(body: LanguageSong01()); break;
      case(2) : return new Scaffold(body: LanguageSong02()); break;
      case(3) : return new Scaffold(body: LanguageSong03()); break;
      case(4) : return new Scaffold(body: LanguageSong04()); break;
      case(5) : return new Scaffold(body: LanguageSong05()); break;
      case(6) : return new Scaffold(body: LanguageSong06()); break;
      case(7) : return new Scaffold(body: LanguageSong07()); break;
      case(8) : return new Scaffold(body: LanguageSong08()); break;
      case(9) : return new Scaffold(body: LanguageSong09()); break;
      case(10) : return new Scaffold(body: LanguageSong10()); break;
      case(11) : return new Scaffold(body: LanguageSong11()); break;
      case(12) : return new Scaffold(body: LanguageSong12()); break;
      case(13) : return new Scaffold(body: LanguageSong13()); break;
      case(14) : return new Scaffold(body: LanguageSong14()); break;
    // Add default list
      default: return new Scaffold(body: LanguageSong01()); break;

    }

  }

}


