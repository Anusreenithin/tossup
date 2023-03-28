import 'dart:math';

import 'package:flutter/material.dart';

class tossup extends StatefulWidget {
  const tossup({Key? key}) : super(key: key);

  @override
  State<tossup> createState() => _tossupState();
}

class _tossupState extends State<tossup> {
  int num = 1;
  int num2 = 2;
  void display() {
    num = Random().nextInt(6) + 1;
    num2 = Random().nextInt(6) + 1;
    setState(() {
      num;
      num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Tossup",

              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                width: 100,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    display();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/dice$num.png")))),
                ),
              ),
              SizedBox(
               width: 10
                ,
              ),
              Container(
                width: 100,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    display();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/dice$num2.png")),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
