import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageSong10 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("अगीनी-बगेनी", style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );


  _buildList() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> songTitle = [
      "अगीनी-बगेनी"
    ];

    List<String> songBody = [
      "\nअगीनी बगेनी ऐईरा गईछे,\n",
      "ऐईराबाट मुसा मारी ल्याईछे ।\n\n",
      "मुसा मैले आरनलाई दियें,\n",
      "आरनले मलाई सियो दियो ।\n\n",
      "सियो मैले दमाईलाई दियें,\n",
      "दमाईले मलाई टोपी दियो ।\n\n",
      "टोपी मैले राजालाई दियें,\n",
      " राजाले मलाई घोडा दिए ।\n\n",
      "घोडा गयो तिरै तिर,\n",
      "मैले खाए खिरै खिर ।\n"

    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: songTitle[0],
        genericBody: songBody[i]
      ),
      );
    }
    return data;
  }


}
