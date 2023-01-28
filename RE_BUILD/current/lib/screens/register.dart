import 'dart:math';

import 'package:current/screens/basic_details.dart';
import 'package:current/screens/people.dart';
import 'package:current/widget/button.dart';
import 'package:current/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Future summit() async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      int val = check(username, password);
      print(val);
      if (val == 0) {
        final data = await auth.createUserWithEmailAndPassword(
            email: username, password: password);
        return "success";
      } else {
        if (val == 1) return "enter a valid user name";
        if (val == 2) return "password must atleast 6";
        return "something wentwrong";
      }
    } catch (e) {
      return "already registered";
    }
  }

  int check(String user, String password) {
    if (user.endsWith("@gmail.com")) {
      if (password.length < 6)
        return 2;
      else
        return 0;
    } else {
      return 1;
    }
  }

  String username = "";
  String password = "";
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(width: 0),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text_Field(
                  Colors.black,
                  "register",
                  "abc@gmail.com",
                  new TextEditingController(),
                  ((value) => this.username = value)),
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Password_Field(
                  Colors.black,
                  "password",
                  "",
                  new TextEditingController(),
                  ((value) => this.password = value)),
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 100),
                child: Outlined(
                    backGroundcolor: Colors.green,
                    label: "summit",
                    onClicked: () async {
                      loading = true;
                      setState(() {});
                      String val = await summit();
                      loading = false;
                      setState(() {});

                      if (val == "success") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Basic_details(
                                      currentuser: username,
                                    )));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(val)));
                      }
                    },
                    textcolor: ktextcolor,
                    outlinewidth: koutlinewidth,
                    outlinecolor: Colors.green.shade900)),
          )
        ],
      )),
    );
  }
}
