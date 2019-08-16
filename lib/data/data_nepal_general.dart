import 'package:flutter/material.dart';
import 'package:prakash_barnamaala/primarylist/list.dart';
import 'package:prakash_barnamaala/primarylist/modal.dart';

class NepalGeneral extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: makeTopAppBar,
        body: new NepalImageList(_buildGeneralList()));
  }

  // Top App Bar
  final makeTopAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text('Nepal', style: TextStyle(color: Colors.white)),
    centerTitle: true,
  );

  _buildGeneralList() {
    List<NepalImageModal> data = new List<NepalImageModal>();

    List<String> primaryWord = [
      "Official Name",
      "Official Motto",
      "National Bird",
      "National Animal",
      "National Flower",
      "National Tree",
      "National Language",
      "National Color",
      "National Instrument",
      "National Dance",
      "National Food"
    ];

    List<String> secondaryWord = [
      "सङ्घीय लोकतान्त्रिक गणतन्त्र नेपाल",
      "जननी जन्मभूमिश्च स्वर्गादपि गरीयसी",
      "हिमालयन मोनाल",
      "गाई",
      "लाली गुराँस",
      "पीपल",
      "नेपाली",
      "सिम्रिक",
      "मादल",
      "नेवा नाच",
      "दालभात तरकारी"
    ];

    List<String> tertiaryWord = [
      "saṅghīya lokatāntrik gaṇatantra Nepāl",
      "jananī janmabhūmiśca svargādapi garīyasī",
      "monal (Lophophorus impejanus)",
      "cow (Bos taurus)",
      "lali gurans (Rhododendron)",
      "Sacred fig (Ficus religiosa)",
      "Nepali or Nepalese",
      "simrik (sRGBB  (220, 20, 60))",
      "madal",
      "newa dance",
      "daal bhaat tarkaari"
    ];

    List<String> imageData = [
      "assets/image_nepal/nepal_general_01.jpg",
      "assets/image_nepal/nepal_general_02.jpg",
      "assets/image_nepal/nepal_general_03.jpg",
      "assets/image_nepal/nepal_general_04.jpg",
      "assets/image_nepal/nepal_general_05.jpg",
      "assets/image_nepal/nepal_general_06.jpg",
      "assets/coming_soon.jpg",
      "assets/coming_soon.jpg",
      "assets/image_nepal/nepal_general_09.jpg",
      "assets/image_nepal/nepal_general_10.jpg",
      "assets/image_nepal/nepal_general_11.jpg"
    ];

    for (int i = 0; i < primaryWord.length; i++) {
      data.add(
        new NepalImageModal(
            position: i,
            englishName: primaryWord[i],
            devnagariNepaliName: secondaryWord[i],
            devnagariEngName: tertiaryWord[i],
            imageData: imageData[i]),
      );
    }
    return data;
  }

}
