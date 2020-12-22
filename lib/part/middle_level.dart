import 'package:flutter/material.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/ay%C4%B1_ile_tilki.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/icinizde_hic_d%C3%BCcen_varmi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/kartal_ile_karga.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/kralin_hikayesi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/sadaha_hikayesi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/tek_g%C3%B6zl%C3%BC_geyik.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/testiyi_k%C4%B1rmadan_%C3%B6nce.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/tevazu_uzenine_hikaye.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/tilki_ile_leylek.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/middle/zaten_inecektim.dart';

class MiddleLevel extends StatefulWidget {
  @override
  _MiddleLevelState createState() => _MiddleLevelState();
}

class _MiddleLevelState extends State<MiddleLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orta Hikayeler"),
        backgroundColor: Color(0xFFA3DBEF),
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
                        builder: (context) => KralinHikayesi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => KralinHikayesi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/mutsuzKral.jpg")),
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
                        builder: (context) => TevazuUzenineHikaye()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TevazuUzenineHikaye()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/Mevlana.jpg")),
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
                        builder: (context) => IcinizdeHicDucenVarMi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => IcinizdeHicDucenVarMi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/IcinizdeHicDüsenVarMi.jpg")),
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
                        builder: (context) => SadakaHikayesi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SadakaHikayesi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/Sadaka.jpg")),
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
                        builder: (context) => TekGozluGeyik()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TekGozluGeyik()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/TekGozluGeyik.jpg")),
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
                        builder: (context) => KargaIleKarga()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => KargaIleKarga()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/KartalIleKarga.jpg")),
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
                        builder: (context) => TestiyiKirmadanOnce()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TestiyiKirmadanOnce()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/TestiKirilmadanOnce.jpg")),
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
                        builder: (context) => TilkiIleLeylek()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TilkiIleLeylek()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/TilkiIleLeylek.jpg")),
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
                        builder: (context) => ZatenInecektim()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ZatenInecektim()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/dusmesemdezateninecektim.jpg")),
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
                        builder: (context) => AyiIleTilki()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AyiIleTilki()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.blue, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/ayiIletilki.jpg")),
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
