import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class KargaIleKarga extends StatefulWidget {
  @override
  _KargaIleKargaState createState() => _KargaIleKargaState();
}

class _KargaIleKargaState extends State<KargaIleKarga> {
  String lorem =
  "                                        Kendine yiyecek arayan bir kartal, çayırda, anasının yanında otlayan bir kuzu gördü. Yüksek kayalar arasından yıldırım hızı ile süzüldü, kuzuyu kaptı ve kuvvetli kanatlarını çırparak havalandı. yuvasına doğru uçtu. Civardaki meşe ağacının bir dalında olup bitenleri seyreden bir karga, kendi kendine dedi ki. Yiyecek bulmak için bundan daha kolay bir şey düşünülemez. Böylece, çayırda otlayan bir koçu gözetleyerek, bütün kuvveti ile sırtına kondu ve bu kocaman koçu havaya kaldırmaya çalıştı. Pek tabi, koçu bir santim bile yukarı kaldıramadı üstelik, ayakları koçun tüylerine dolanmıştı. Eğer koç, ayaklarını kurtarmak için can havli ile haykıran karganın sesini işitmeseydi, sırtında bir karga bulunduğunun bile farkında olmayacaktı. Karganın feryadı, çobanın dikkatini çekti ve hemen koçun yanına giderek kargayı yakaladı, kanatlarını kesti ve oynamaları için çocuklarına götürdü."
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
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.3,
        ),
        GestureDetector(
          onTap: () {
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
          child: Center(
            child: Container(
              child: Image.asset("assets/start.png"),
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),
        ),
      ];
    else if (step == 1)
      shownWidget = <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height / 6,
        ),
        typedCharLength != null
            ? Text(
          "$typedCharLength",
          style: TextStyle(color: Colors.white, fontSize: 64),
        )
            : Text(
          "0",
          style: TextStyle(color: Colors.white, fontSize: 64),
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
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black45),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            blankSpace: 20.0,
            velocity: 75.0,
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
          child: Theme(
            data: new ThemeData(
              hintColor: Colors.black45,
            ),
            child: TextField(
              style: TextStyle(color: Colors.black45),
              autofocus: true,
              keyboardType: TextInputType.multiline,
              onChanged: onType,
              cursorColor: Colors.black45,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Yaz Bakalım",
              ),
            ),
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
        SizedBox(
          height: MediaQuery.of(context).size.height / 7,
        ),
        Center(child: Text("Oyun Bitti!",style: TextStyle(color: Colors.black26,fontSize: 64),)),
        typedCharLength != null
            ? Text(
          "$typedCharLength",
          style: TextStyle(color: Colors.black26, fontSize: 160),
        )
            : Text(
          "0",
          style: TextStyle(color: Colors.black26, fontSize: 160),
        ),
        GestureDetector(
          onTap: () => resetGame(),
          child: Container(
            child: Image.asset("assets/tryAgain.png"),
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
      ];
    return Scaffold(
      appBar: step != 1
          ? AppBar(
        title: Text("Kartal ile Karga"),
        backgroundColor: Color(0xFFA3DBEF),
      )
          : AppBar(
        automaticallyImplyLeading: false,
        title: Text("Kartal ile Karga"),
        backgroundColor: Color(0xFFA3DBEF),
      ),
      backgroundColor: Color(0xFFA3DBEF),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            Image.asset("assets/background.jpg"),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: shownWidget,
            )
          ],
        ),
      ),
    );
  }
}
