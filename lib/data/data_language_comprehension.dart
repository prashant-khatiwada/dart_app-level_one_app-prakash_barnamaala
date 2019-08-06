import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class LanguageComprehension extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: makeTopAppBar,
          body: TabBarView(children: [
            new ComprehensionList(_buildComprehension01()),
            new ComprehensionList(_buildComprehension02()),
            new ComprehensionList(_buildComprehension03()),
            new ComprehensionList(_buildComprehension04()),
            new ComprehensionList(_buildComprehension05()),
            new ComprehensionList(_buildComprehension06()),
          ])),

    ));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    bottom: TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          text: "One",
        ),
        Tab(
          text: "Two",
        ),
        Tab(
          text: "Three",
        ),
        Tab(
          text: "Four",
        ),
        Tab(
          text: "Five",
        ),
        Tab(
          text: "Six",
        )
      ],
    ),
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Comprehension', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildComprehension01() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", "", ""
    ];

    List<String> genericBody = [
      "\nयो घर हो । यो मेरो घर हो । घरमा कोठा छ । धेरै कोठाहरु छन् । कोठामा खाट छ । दराज छ । मेच छ । टेबुल छ ।" +
          " खाटमा भाइ छ । दराजमा एना छ । मेचमा कपि छ । टेबुलमा किताब र कलम छन् । दराजमाथि फोटो छ ।",
      "\nपर घाम उदायो । बिहान भयो । चराहरु कराए । चराहरुले चिरबिर चिरबिर गरे । चिसो हावा आयो । सबै जना उठे । म पनि उठे ।",
      "\nघर बाहिर धारो छ । धाराबाट पानि आउंछ । पानी सफा छ । म पानिमा नुहाउनछु । म सफा लुगा लगाऊछु । " +
          "बहिनीले मुख धोई । भाइ बाहिर आएको छैन । म भाइलाई उठाऊछु ।"

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

  _buildComprehension02() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", ""
    ];

    List<String> genericBody = [
      "\nभक्तहरु मन्दिर जान्छन । मन्दिरमा मान्छे छन् । त्यहाँ बादर पनि छन् । बादर स्याउ खान्छ । म सुन्तला खान्छु । कान्छो छुच्चो छ । " +
          "स्याल उफ्रन्छ । मुनिले लड्डु च्याप्प समाती । बन्दुक राम्रो हैन । स्कुलमा ट्यांग ट्यांग घन्टी बज्छ ।\n",
      "\nम पढ्छु । साथीहरु खेल्छन । झिल्के कैलाश गुच्चा खेल्छ । हाम्रो पुस्तक राम्रो छ । कामना राम्रो अच्हर लेख्छे । मसंग पेन्सिल छ । " +
          "समीको पुस्तक च्यातिएको छ । साइसाको चस्मा छैन । ढुंगाको थुप्रो छ । काग उड्छ  । भाई दगुर्छ । हात्ती मेरो साथि हो  । "

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

  _buildComprehension03() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", ""
    ];

    List<String> genericBody = [
      "\nमेरो नाम हरि हो । म स्कुलमा पढ्छु । म बिहान स्कुल जान्छु । दिनभरी पढ्छु । साँझ घर आउछु । म बिहानै उठ्छु । दांत माझ्छु । " +
          "मूख धुन्छु । स्कुलबाट घर आएपछि हात धुन्छु । खुट्टा धुन्छु । खाजा खान्छु । पढ्छु । लेख्छु ।\n",

      "\nराति भात खान्छु । सुत्छु । आमा मलाई माया गर्नुहुन्छ । बुबा मलाई माया गर्नुहुन्छ । गुरु मलाई माया गर्नुहुन्छ । गुरु मलाई पढाउनु हुन्छ ।"
          " म गुरुले भनेको मान्छु । " +
          "मेरा धेरै साथिहरु छन् । सबै मलाई माया गर्छन । म सबैलाई माया गर्छु । हामीहरु संगै पढछौ । हामीहरु सधै स्कुल जान्छौ ।"

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

  _buildComprehension04() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", ""
    ];

    List<String> genericBody = [
      "\nजून सेतो हुन्छ । इट्टा रातो हुन्छ । कपाल कालो हुन्छ । केरा पहेंलो हुन्छ । घाँस हरियो हुन्छ । सुन्तला सुन्तला रंगको हुन्छ । " +
          "आकाश निलो हुन्छ । इन्द्रेणीमा धेरै रंग हुन्छन । फूल रातो पनि हुन्छ । फूल सेतो पनि हुन्छ । फूल पहेंलो पनि हुन्छ " +
          "। फूल गुलाफी पनि हुन्छ । फूल निलो पनि हुन्छ ।\n",

      "\nघाम तातो हुन्छ । पानि चीसो हुन्छ । काठ कडा हुन्छ । पात नरम हुन्छ । टाउको सार्हो हुन्छ । भुँडी गिलो हुन्छ " +
          "। पाउडर सुख्खा हुन्छ । कागती अमिलो हुन्छ । ऊखु गुलियो हुन्छ । नून नुनिलो हुन्छ । खुर्सानी पीरो हुन्छ ।"

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

  _buildComprehension05() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", ""
    ];

    List<String> genericBody = [
      "\nहुलाकी चिठी बाड्छ । माली बगैचामा पानी हाल्छ । पाले घर कुर्छ । धोबी लुगा धुन्छ । भान्से खाना बनाउछ ।" +
          " पुजारी पूजा गर्छ । बिद्यार्थी पढ्छ । गुरु र गुरुआमा पढ़ाऊछन । हजाम कपाल काट्छ । धोबी लुगा धुन्छ । ",
          "\nदर्जी लूगा सिउंछ । सिकर्मी झ्याल ढोका बनाउँछ । डकर्मी गारो लगाउँछ । किसान खेत जोत्छ । दाउरे दाउरा काट्छ । " +
          "गोठालो गाई चराउँछ । गाइने गीत गाउँछ । पसले सामान बेच्छ । चोरले चोर्छ, प्रहरी चोरलाई समात्छ ।"

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

  _buildComprehension06() {
    List<SongPoemComprehensionModal> data = new List<SongPoemComprehensionModal>();

    List<String> genericTitle = [
      "", "", ""
    ];

    List<String> genericBody = [
      "\nहाम्रो देश नेपाल हो । नेपालमा तराई छ  । नेपालमा पहाड छ ।  नेपालमा हिमाल छ । " +
          "हिमालयमा अग्ला अग्ला चुचुराहरु छन् । ति चुचुरामा धेरै हिउँ पर्छ । नेपालमा नदीहरु पनि छन । " +
          "नेपालमा जंगल छन् । नेपालको तराईको जंगलमा हात्ती र गैंडाहरु छन् । माथि लेकतिर डाँफे पाइन्छ ।\n",
      "\n" +
          "नेपालमा सात बिकास छेत्र छन् । नेपालमा सतहत्तर जिल्ला छन । " +
          "नेपालमा ६ महानगरपालिका , ११ उप-महानगरपालिका, २७६ नगरपालिका, ४६० गाउँ विकास समिति छन , ६७४३ वडा छन् ।\n",
      "\n" +
          "नेपालको राजधानी काठमाडौँ हो । काठमाडौँमा भगवान पशुपतिनाथको मन्दिर छ । " +
          "त्यहाँ अरु पनि राम्रा राम्रा मन्दिर छन् । काठमाडौँलाई मन्दिरै मन्दिर को सहर भन्ने चलन छ ।  "

    ];

    for (int i = 0; i < genericTitle.length; i++) {
      data.add(new SongPoemComprehensionModal(
          genericTitle: genericTitle[i],
          genericBody: genericBody[i]
      ),
      );
    }
    return data;
  }

}
