import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/akrep_hikayesi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/balikci_ile_k%C3%BCc%C3%BCk_balik.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/corbasini_iciyorum.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/deniz_yildizi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/horoz_ile_inci.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/inanmayan_olcsun.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/kim_hakli.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/maynum_ile_balikcilar.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/timurun_degeri.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/easy/yaninda_e%C5%9Fek_bulundursun.dart';

class EaseLevel extends StatefulWidget {
  @override
  _EaseLevelState createState() => _EaseLevelState();
}

class _EaseLevelState extends State<EaseLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Kolay Hikayeler"),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DenizYildizi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DenizYildizi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/denizyildizi.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AkrepHikayesi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AkrepHikayesi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/akrep.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => KimHakli()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => KimHakli()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/KimHakli.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => YanindaEsekBulundursun()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => YanindaEsekBulundursun()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/YanindaEsekBulundursun.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BalikciIleKucukBalik()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BalikciIleKucukBalik()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/balikciIleKucukBalik.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CorbasiniIciyorum()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CorbasiniIciyorum()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/OrdekCorbasi.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TimurunDegeri()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TimurunDegeri()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/TimurunDegeri.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MaymunIleBalikcilar()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MaymunIleBalikcilar()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/BalikcilarIleMaymun.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InanmayanOlcsun()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InanmayanOlcsun()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/InanmayanOlcsun.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HorozIleInci()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HorozIleInci()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.green, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/horozileincimasali.jpg")),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
