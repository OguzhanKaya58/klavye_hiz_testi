import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class AkrepHikayesi extends StatefulWidget {
  @override
  _AkrepHikayesiState createState() => _AkrepHikayesiState();
}

class _AkrepHikayesiState extends State<AkrepHikayesi> {
  String lorem =
      "                                        Hintli bir adam suyun içinde zar zor ilerlemeye çalışıyormuş. Bu sırada yanına bir akrep yanaşmış. Adam akrebi kurtarmak istemiş ve parmağını ona doğru uzatmış. Fakat akrep adamın bu hamlesinden sonra adamı sokmuş. Hintli adam bu duruma çok şaşırmış fakat yine de tekrardan parmağını akrebe doğru uzatmış. Akrep tekrar adamın parmağını sokmuş. Bu olayı gören başka bir adam kendisini sürekli sokan bu akrebi kurtarmaktan vazgeçmesi gerektiğini söylemiş. Hintli adam buna şu şekilde cevap vermiş. Akreplerin doğasında sokmak vardır. Fakat ben insanım. İnsanın doğasında ise sevmek vardır. Akrebin doğasında sokmak var diye kendi doğamda olan sevmekten mi vazgeçeyim."
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
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black45),
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
        Center(
            child: Text(
          "Oyun Bitti!",
          style: TextStyle(color: Colors.black26, fontSize: 64),
        )),
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
              title: Text("Akrep Hikayesi"),
              backgroundColor: Color(0xFFA3DBEF),
            )
          : AppBar(
              automaticallyImplyLeading: false,
              title: Text("Akrep Hikayesi"),
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
