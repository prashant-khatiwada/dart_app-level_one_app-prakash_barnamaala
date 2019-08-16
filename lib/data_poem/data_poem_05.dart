import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguagePoem05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar, body: new SongList(_buildList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text(' पिंजडा को सुँगा ', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildList() {
    List<SongPoemComprehensionModal> data =
        new List<SongPoemComprehensionModal>();

    String songTitle = "  पिंजडा को सुँगा ";

    List<String> songBody = [
      "लेखनाथ पौड्याल\n\n",
      'बालक बबुरो दिजशुक नाम\n',
      'हुँ म परेको छु पिंजडामा\n',
      'मकन हरे शिव शान्ति र चैन\n',
      'सपना बिच पनि रति भर छैन\n',
      'मेरा बान्धव बाबु र आमा\n',
      'बस्छन वनका एक कुनामा\n',
      'को सित पोखुँ मनको ताप\n',
      'गर्दै पिजडा बाट बिलाप\n',
      'अंशु बगाई कहिले रुन्छु\n',
      'कहिले मुर्दा तुल्य म हुन्छु\n',
      'कहिले पागल सरि उफ्रन्छु\n',
      'केवल वनका सुख सम्झन्छु\n',
      'फलफुल खाइ नित्य रमाई\n',
      'वनमा फिर्ने बबुरो लाई\n',
      'विधिले पार्यो पिजडा भित्र\n',
      'कर्म हरे शिव हुन्छ बिचित्र\n',
      'वरी परी बैरीहरु छन् सारा\n',
      'छैन कतै तिर कोही सहारा\n',
      'के गरु कसरी उम्की जाऊँ\n',
      'को सित मन को दर्द बिसाऊँ\n',
      'पिजडा फोडु भनिकन चुच्चो\n',
      'बल संग धस्दा भो सब बुच्चो\n',
      'बेसरी कुजिए पक्ष्य र पाऊँ\n',
      'कसरि अब हा काल बिताऊँ\n',
      'यो कस्तो हो कसरि आयो\n',
      'बसी कन पिंजडा  बिच के खायो\n',
      'यो सब बुझ्ने कोहि छैन\n',
      'हाय यसैले मन रहदैन\n',
      'सुस्खा छ घटी बन्धन चर्को\n',
      'बोल्नै पर्ने झर्को अर्को\n',
      'बोलेन भने लाठी उजाई पिट्न लाई\n',
      'यौटा भन्दछ यो हो पाजी\n',
      'आर्को भन्दछ यो छ बिराजी\n',
      'भन्द छ तेस्रो आत्मा राम\n',
      'पढो पढो जी राखो नाम\n',
      'गुडको बैरी मनुष जाति\n',
      'सूश्क गराई गुणीका छाती\n',
      'प्राण पखेरु नलिए सम्म\n',
      'खुश किन हुन्थ्यो हाय अचम्म\n',
      'पृथिबी तलमा एउटा सम्म\n',
      'मानिस बाँकि रहंदा सम्म\n',
      'तुच्छ सुगाको जन्म नदेऊ\n',
      'दीन दयालु बिन्ती लेऊ !\n\n',
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
