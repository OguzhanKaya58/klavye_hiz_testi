import 'package:flutter/material.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/acemi_b%C3%BClb%C3%BCl.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/aslan_ile_yunus_bal%C4%B1gi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/at_ile_seyis.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/cocuk_ile_akrep.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/d%C3%BCnyanin_dengesi_bozulur.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/hakem_kedi.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/karinca_ile_cekirge.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/konusan_papagan.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/kral_atmaca.dart';
import 'package:flutter_app_keyboard_speed/hikayeler/hard/sirtina_binen_esek.dart';

class HardLevel extends StatefulWidget {
  @override
  _HardLevelState createState() => _HardLevelState();
}

class _HardLevelState extends State<HardLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zor Hikayeler"),
        backgroundColor: Colors.teal,
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
                        builder: (context) => HakemKedi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HakemKedi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/KediKucukTavsanveGelincik.jpg"),),
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
                        builder: (context) => KonusanPapagan()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => KonusanPapagan()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/PapaganKonusursaHindiDeDusunur.jpg"),),
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
                        builder: (context) => AslanIleYunusBaligi()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AslanIleYunusBaligi()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/AslanIleYunusBaligi.jpg"),),
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
                        builder: (context) => KralAtmaca()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => KralAtmaca()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/AtmacaIleGuvercin.jpg"),),
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
                        builder: (context) => DunyaninDengesiBozulur()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DunyaninDengesiBozulur()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/DunyaninDengesiBozulur.jpg"),),
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
                        builder: (context) => SirtinaBinenEsek()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SirtinaBinenEsek()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/BinmekIcinIstedimAma.jpg"),),
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
                        builder: (context) => AcemiBulbul()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AcemiBulbul()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/AcemiBulbulBuKadarOter.jpg"),),
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
                        builder: (context) => KarincaIleCekirge()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => KarincaIleCekirge()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/KarincalarVeCekirgeHikayesi.jpg"),),
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
                        builder: (context) => AtIleSeyis()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AtIleSeyis()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/atIleSeyis.jpg"),),
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
                        builder: (context) => CocukIleAkrep()));
                  },
                  onLongPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CocukIleAkrep()));
                  },
                  child: Card(
                    color: Colors.white,
                    shape: Border(
                      right: BorderSide(color: Colors.red, width: 10),
                    ),
                    child: Stack(children: [
                      Center(child: Image.asset("assets/cocukIleakrep.jpg"),),
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
