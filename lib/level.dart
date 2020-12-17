import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_keyboard_speed/part/easy_level.dart';
import 'package:flutter_app_keyboard_speed/part/hard_level.dart';
import 'package:flutter_app_keyboard_speed/part/middle_level.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Kısa Hikayeler"),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EaseLevel()));
              },
              onLongPress: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EaseLevel()));
              },
              child: Card(
                elevation: 40,
                shadowColor: Colors.grey..shade600,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/easy.png"),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Kolay",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MiddleLevel()));
              },
              onLongPress: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MiddleLevel()));
              },
              child: Card(
                elevation: 40,
                shadowColor: Colors.grey..shade600,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/middle.png"),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Orta",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HardLevel()));
              },
              onLongPress: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HardLevel()));
              },
              child: Card(
                elevation: 40,
                shadowColor: Colors.grey..shade600,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/hard.png"),
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Zor",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
