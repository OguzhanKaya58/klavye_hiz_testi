import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class KralAtmaca extends StatefulWidget {
  @override
  _KralAtmacaState createState() => _KralAtmacaState();
}

class _KralAtmacaState extends State<KralAtmaca> {
  String lorem =
  "                                        Atmaca gözünü bir sürü güvercine dikmişti. Ama ne zaman üzerlerine doğru süzülse, güvercinler kaçmışlardı. Kendi gölgesinin kendisini ele verdiğini sanarak, bulutlu bir günü bekledi. ne var ki, yine bir tek güvercin dahi yakalayamadı. Günlerdir ağzına bir şey koyamayan atmaca, güvercinleri kurnazlıkla yakalamayı düşündü. Çürümüş bir ağacın tepesinden onlara seslendi. Güvercin kardeşlerim, her gün korku ve endişe içinde yaşayacağınıza, huzur ve güvenlik içinde rahat bir hayat sürmek istemez misiniz. Mutlu bir hayatın sırrı, yine sizin kendi ellerinizde. Eğer beni kendinize kral yaparsanız, gökler benim hakimiyetim altında olduğundan, size kimse dokunamayacaktır. Aptal güvercinler, atmacanın gerçekten kendilerinin iyiliğini düşündüğüne inandılar ve onu kendilerine kral ve koruyucu yaptılar. Ama atmaca, krallık tahtına oturur oturmaz, her gün akşam yemeklerinde kendisine güvercin kurban edileceği emrini yayınladı."
      .toLowerCase()
      .replaceAll(',', '')
      .replaceAll('.', '');
  int step = 0;
  int lastTypeAt;
  int typedCharLength;

  void updateLastTypeAt() {
    this.lastTypeAt = DateTime.now().millisecondsSinceEpoch;
  }

  void onType(String value) {
    updateLastTypeAt();
    String trimmedValue = lorem.trimLeft();
    setState(() {
      if (trimmedValue.indexOf(value) != 0) {
        step = 2;
      } else {
        typedCharLength = value.length;
      }
      if (value.length == lorem.length - 40) {
        step = 3;
      }
    });
  }

  void resetGame() {
    setState(() {
      typedCharLength = 0;
      step = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var shownWidget;
    if (step == 0)
      shownWidget = <Widget>[
        Text(
          "Başlamaya Hazır mısın ?",
          style: TextStyle(fontSize: 24, color: Colors.blueGrey),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: RaisedButton(
            color: Colors.blueGrey,
            onPressed: () {
              setState(() {
                step++;
                updateLastTypeAt();
              });
              Timer.periodic(new Duration(seconds: 1), (timer) {
                int now = DateTime.now().millisecondsSinceEpoch;
                setState(() {
                  if (step == 1 && now - lastTypeAt > 4000) {
                    step++;
                  }
                  if (step != 1) {
                    timer.cancel();
                  }
                });
              });
            },
            child: Text(
              "Başla",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ];
    else if (step == 1)
      shownWidget = <Widget>[
        typedCharLength != null
            ? Text(
          "$typedCharLength",
          style: TextStyle(color: Colors.green, fontSize: 36),
        )
            : Text(
          "0",
          style: TextStyle(color: Colors.green, fontSize: 36),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 40,
          child: Marquee(
            text: lorem,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blueGrey),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.end,
            blankSpace: 20.0,
            velocity: 125.0,
            pauseAfterRound: Duration(seconds: 1),
            showFadingOnlyWhenScrolling: true,
            fadingEdgeStartFraction: 0.1,
            fadingEdgeEndFraction: 0.1,
            numberOfRounds: 3,
            startPadding: 0,
            accelerationDuration: Duration(seconds: 20),
            accelerationCurve: Curves.ease,
            decelerationDuration: Duration(milliseconds: 500),
            decelerationCurve: Curves.easeOut,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.multiline,
            onChanged: onType,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Yaz Bakalım"),
          ),
        ),
      ];
    else if (step == 3) {
      shownWidget = <Widget>[
        Image.asset("assets/won.png"),
        SizedBox(
          height: 30,
        ),
        Center(
            child: Text(
              "Tebrikler Kazandın !",
              style: TextStyle(fontSize: 36, color: Colors.green),
            )),
      ];
    } else
      shownWidget = <Widget>[
        Text(
          "Maalesef kaybettin !",
          style: TextStyle(color: Colors.red, fontSize: 24),
        ),
        SizedBox(
          height: 10,
        ),
        typedCharLength != null
            ? Text(
          "$typedCharLength",
          style: TextStyle(color: Colors.green, fontSize: 36),
        )
            : Text(
          "0",
          style: TextStyle(color: Colors.green, fontSize: 36),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            resetGame();
          },
          child: Text(
            "Yeniden Dene !",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blueGrey,
        ),
      ];

    return Scaffold(
      appBar: step != 1
          ? AppBar(
        title: Text("Kral Atmaca"),
        backgroundColor: Colors.red,
      )
          : AppBar(
        automaticallyImplyLeading: false,
        title: Text("Kral Atmaca"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: shownWidget,
        ),
      ),
    );
  }
}