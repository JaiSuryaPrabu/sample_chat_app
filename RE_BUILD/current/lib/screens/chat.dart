import 'dart:math';

import 'package:current/widget/button.dart';
import 'package:current/widget/message.dart';
import 'package:current/widget/textfield.dart';
import 'package:current/widget/texttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chat extends StatefulWidget {
  Chat({super.key,required this.currentuser});
  String currentuser;
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController tec = new TextEditingController();
  String message = "";
  List<Widget> messages = [];

  void image() {
    //
  }

  void send() {
    //
    tec.clear();
    setState(() {});
  }

  void profile() {
    //
  }
  void menu() {
    //
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messages.add(messagebar());
    Random r1 = Random(0);
    for (int i = 0; i < 100; i++) {
      if (r1.nextInt(30) > 15) {
        messages.add(sender(text: "hai"));
      } else {
        messages.add(receiver(text: "bai"));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: Icon_Button(
              backGroundcolor: kbackGroundcolor,
              icon: Icon(Icons.face),
              onClicked: profile,
              textcolor: ktextcolor,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon_Button(
                    backGroundcolor: kbackGroundcolor,
                    icon: Icon(Icons.menu),
                    onClicked: menu,
                    textcolor: ktextcolor)
              ],
            )),
        body: ListView(reverse: true, children: messages),
      ),
    );
  }

  Widget messagebar() => Row(
        children: [
          Icon_Button(
              backGroundcolor: kbackGroundcolor,
              icon: Icon(Icons.emoji_nature),
              onClicked: image,
              textcolor: ktextcolor),
          Flexible(
            child: TextField(
              controller: tec,
              decoration: InputDecoration(
                hintText: "",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 5, color: cenabled_color),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 5, color: Color.fromARGB(255, 225, 225, 125)),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),
          ),
          Icon_Button(
              backGroundcolor: kbackGroundcolor,
              icon: Icon(Icons.flag),
              onClicked: send,
              textcolor: ktextcolor),
        ],
      );
}
