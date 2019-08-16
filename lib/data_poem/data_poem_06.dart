import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar, body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('कुन मन्दिरमा जान्छौ यात्री',
        style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data =
        new List<SongPoemComprehensionModal>();

    String songTitle = "कुन मन्दिरमा जान्छौ यात्री";

    List<String> songBody = [
      "लक्ष्मी प्रसाद देवकोटा\n\n",
      'कुन मन्दिरमा जान्छौ यात्री, कुन मन्दिरमा जाने हो?\n',
      'कुन सामग्री पुजा गर्ने, साथ कसोरी लाने हो?\n',
      'मानिसहरूको काँध चढी, कुन देवपुरीमा जाने हो?\n\n',
      'हाडहरूका सुन्दर खम्बा, मांसपिण्डका दिवार !\n',
      'मस्तिष्कको यो सुनको छाना, इन्द्रियहरूका द्वार !\n',
      'नसा-नदीका तरल तर, मन्दिर आफू अपार !\n',
      'कुन मन्दिरमा जान्छौ यात्री, कुन मन्दिरको द्वार ?\n\n',
      'मनको सुन्दर सिंहासनमा, जगदिश्वरको राज !\n',
      'चेतनाको यो ज्योति हिरण्यमय, उसको शिरको ताज !\n',
      'शरिरको यो सुन्दर मन्दिर, विश्वक्षेत्रको माझ।\n\n',
      'भित्र छ ईश्वर बाहिर आँखा, खोजी हिड्छौ कुन पुर?\n',
      'ईश्वर बस्तछ गहिराइमा, सतह बहन्छौ कति दुर?\n',
      'खोजी गर्छौ हृदय लगाऊ, बत्ति बाली तेज प्रचुर ?\n\n',
      'साथी यात्री बीच सडकमा, ईश्वर हिड्छ साथ\n',
      'चुम्दछ ईश्वर काम सुनौला, गरिरहेका हात\n',
      'छुन्छ तिलस्मी करले उसले, सेवकहरूको साथ ।\n\n',
      'सडक किनार गाउँछ ईश्वर, चराहरूको तानामा\n',
      'बोल्दछ ईश्वर मानिसहरूका, पिडा, दु:खको गानामा\n',
      'दर्शन किन्तु कहिँ दिँदैन, चर्म-चछुले कानामा ।\n',
      'कुन मन्दिरमा जान्छौ यात्री, कुन नव-देश बिरानामा?\n\n',
      'फर्क फर्क हे ! जाऊ समाऊ, मानिसहरूको पाउ !\n',
      'मलम लगाऊ आर्तहरूको, चहराइरहेको घाउ\n',
      'मानिस भइ ईश्वरको त्यो, दिव्य मुहार हँसाऊ\n\n',
    ];

    for (int i = 0; i < songBody.length; i++) {
      data.add(
        new SongPoemComprehensionModal(
            genericTitle: songTitle, genericBody: songBody[i]),
      );
    }
    return data;
  }
}
