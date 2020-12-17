import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class KralinHikayesi extends StatefulWidget {
  @override
  _KralinHikayesiState createState() => _KralinHikayesiState();
}

class _KralinHikayesiState extends State<KralinHikayesi> {
  String lorem =
      "                                        Zamanın birinde oldukça zengin olan bir kral yaşarmış. Fakat bu kral çok mutsuzmuş. Çok uğraşsa da ne var ki asla mutlu olamıyormuş. Ülkede bulunan bilge bir kişiyi huzura çağırmış ve nasıl mutlu olabileceğini sormuş. Bilge şöyle cevap vermiş. Saygıdeğer kralım eğer mutsuzluktan tamamen kurtulmayı istiyorsanız mutlu bir adam bulmanız gerek. O adamın gömleğini giydiğiniz zaman mutlu olursunuz. Bunu duyan kral hemen adamlarına emir vermiş ve ülkede mutlu bir adam bulmalarını istemiş. Adamları aramış taramış fakat mutlu bir adam bulamamış. Hepsinin kendince dertleri ve mutsuzlukları varmış. Adamlar mutlu bir adam bulamadan saraya dönerlerken oldukça eski bir kulübeden şöyle dua edildiğini işitmişler. Allahım şükürler olsun bugünde karnım doydu, sağlığımda pek yerinde, şimdiye kadar hep rızkımı verdin bu dünya da benden mutlusu yok. Bunu duyan kralın adamları mutlu birini buldukları için oldukça sevinmişler. Hemen adamın gömleğini almalıyız ve krala götürmeliyiz diye düşünmüşler. Ancak kulübeye girdikleri zaman adamın üzerinde bir gömlek bile olmadığının farkına varmışlar. Hayat devam ederken insanlar her zaman mutluluğu ararlar. Sahip olduklarıyla yetinmeyip her zaman daha fazlasını isteyen kişiler ise asla mutlu olamaz. Mutluluğu kendi içinde arayan kişiler her zaman mutlu olur."
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
            velocity: 100.0,
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
              title: Text("Kral'ın Hikayesi"),
            )
          : AppBar(
              automaticallyImplyLeading: false,
              title: Text("Kral'ın Hikayesi"),
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
