import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class SadakaHikayesi extends StatefulWidget {
  @override
  _SadakaHikayesiState createState() => _SadakaHikayesiState();
}

class _SadakaHikayesiState extends State<SadakaHikayesi> {
  String lorem =
  "                                        Nasreddin Hoca, bir gün dama kiremitleri onarmaya çıkar. Hoca damda çalışırken, evin kapısı çalınır. Kim o diye sorar Hoca. Kapıyı çalan adam. Hocam, bir zahmet aşağıya kadar gelebilir misin der. Nasreddin Hoca, önemli bir iş için çağırıldığı zannıyla, güç bela iner aşağıya. Ama kapıyı açınca, karşısında, hırpani giyimli bir dilenciyi bulur. Ne istiyorsun diye sorar. Allah rızası için sadaka Fena halde bozulur Nasreddin Hoca. Sonra adama Gel benimle, der. Dilenciyi peşine takar, dama kadar çıkarır. Dilenci, dama ayak bastığı sırada da Allah versin, deyiverir. Dilenci, kızgın halde geriye dönüp giderken, Hocaya sorar. Sen, niçin beni dama kadar çıkardın da, vermeyeceğini aşağıda söylemedin. Nasreddin Hoca, dilencinin sorusuna aynı şekilde soruyla cevap verir. Ya sen niçin beni aşağıya indirdin de, sadaka istediğini ben damdayken söylemedin."
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
        title: Text("Sadaka Hikayesi"),
        backgroundColor: Color(0xFFA3DBEF),
      )
          : AppBar(
        automaticallyImplyLeading: false,
        title: Text("Sadaka Hikayesi"),
        backgroundColor: Color(0xFFA3DBEF),
      ),
      backgroundColor: Color(0xFFA3DBEF),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Image.asset("assets/background.jpg"),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
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
