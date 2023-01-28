import 'package:current/screens/people.dart';
import 'package:current/widget/button.dart';
import 'package:current/widget/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future summit() async {
    try {
      int val = check(username, password);
      if (val == 0) {
        final data = await auth.signInWithEmailAndPassword(
            email: username, password: password);
      } else {
        if (val == 1) return "enter a valid username";
        return "password must contain 6 letters";
      }
    } catch (e) {
      return "there is no account or password is wrong";
    }
    return "success";
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
              ? Center(child: CircularProgressIndicator())
              : Container(
                  width: 0,
                ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text_Field(
                  Colors.black,
                  "login",
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
                    backGroundcolor: kbackGroundcolor,
                    label: "summit",
                    onClicked: () async {
                      loading = true;
                      setState(() {});
                      String val = await summit();
                      loading = false;
                      setState(() {});
                      String data = await summit();
                      if (data == "success") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => People(currentuser: username,)));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(data)));
                      }
                    },
                    textcolor: ktextcolor,
                    outlinewidth: koutlinewidth,
                    outlinecolor: koutlinecolor)),
          )
        ],
      )),
    );
  }
}
