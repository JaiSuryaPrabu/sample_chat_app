import 'package:current/screens/basic_details.dart';
import 'package:current/screens/chat.dart';
import 'package:current/screens/login.dart';
import 'package:current/screens/people.dart';
import 'package:current/screens/register.dart';
import 'package:current/screens/wait.dart';
import 'package:current/widget/button.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "login",
            onClicked: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            textcolor: ktextcolor),
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "register",
            onClicked: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            textcolor: ktextcolor),
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "basic_details",
            onClicked: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Basic_details(currentuser: "",)));
            },
            textcolor: ktextcolor),
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "people",
            onClicked: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => People(currentuser: "",)));
            },
            textcolor: ktextcolor),
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "chat",
            onClicked: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chat(currentuser: "",)));
            },
            textcolor: ktextcolor),
        Elevated(
            backGroundcolor: kbackGroundcolor,
            label: "wait",
            onClicked: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Wait()));
            },
            textcolor: ktextcolor)
      ],
    );
  }
}
