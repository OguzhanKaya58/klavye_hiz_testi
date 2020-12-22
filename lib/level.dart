import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_keyboard_speed/part/easy_level.dart';
import 'package:flutter_app_keyboard_speed/part/hard_level.dart';
import 'package:flutter_app_keyboard_speed/part/middle_level.dart';
import 'package:hover_effect/hover_effect.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Yazarken Öğren"),
        ),
        backgroundColor: Color(0xFFA3DBEF),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width/10,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: MediaQuery.of(context).size.height -250,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/easy.png"),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          Center(
                            child: Text(
                              "Kolay",
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.green.shade200,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => EaseLevel()));
                  },
                  shadow: BoxShadow(
                      color: Colors.green,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/10,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: MediaQuery.of(context).size.height -250,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/middle.png"),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          Center(
                            child: Text(
                              "Orta",
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.blue.shade200,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MiddleLevel()));
                  },
                  shadow: BoxShadow(
                      color: Colors.blue,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/10,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: MediaQuery.of(context).size.height -250,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/hard.png"),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          Center(
                            child: Text(
                              "Zor",
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.red.shade200,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => HardLevel()));
                  },
                  shadow: BoxShadow(
                      color: Colors.red,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/10,),
            ],
          ),
        ),
      ),
    );
  }
}
