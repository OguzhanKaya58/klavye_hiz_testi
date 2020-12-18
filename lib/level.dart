import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/24,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 300,
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
                            width: 150,
                            height: 150,
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
              SizedBox(height: MediaQuery.of(context).size.height/16,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 300,
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
                            width: 150,
                            height: 150,
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
              SizedBox(height: MediaQuery.of(context).size.height/16,),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 300,
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
                            width: 150,
                            height: 150,
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
              SizedBox(height: MediaQuery.of(context).size.height/16,),
            ],
          ),
        ),
      ),
    );
  }
}
