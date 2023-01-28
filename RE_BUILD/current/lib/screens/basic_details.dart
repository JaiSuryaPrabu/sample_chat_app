import 'package:current/widget/button.dart';
import 'package:current/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Basic_details extends StatefulWidget {
  Basic_details({super.key,required this.currentuser});
  String currentuser = "";
  @override
  State<Basic_details> createState() => _Basic_detailsState();
}

class _Basic_detailsState extends State<Basic_details> {
  String name = "";
  String phoneno = "";
  String dateofbirth = "";
  String gender = "";
  String age = "";
  String email = "";

  void pressed() {
    print(name);
    print(phoneno);
    print(dateofbirth);
    print(gender);
    print(age);
    print(email);
  }

  Icon skip = Icon(Icons.run_circle);
  Icon ok = Icon(Icons.one_k);

  Icon giving = Icon(Icons.run_circle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text_Field(ktextcolor, "name", "kasi..",
                new TextEditingController(), ((value) => this.name = value)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text_Field(ktextcolor, "phone no", "9999999999",
                new TextEditingController(), ((value) => this.phoneno = value)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text_Field(
                ktextcolor,
                "D.O.B",
                "01-01-1901",
                new TextEditingController(),
                ((value) => this.dateofbirth = value)),
          ),
          radio(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text_Field(ktextcolor, "age", "18",
                new TextEditingController(), ((value) => this.age = value)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text_Field(ktextcolor, "mail", "example@gmail.com",
                new TextEditingController(), ((value) => this.email = value)),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Icon_Button(
                backGroundcolor: kbackGroundcolor,
                icon: giving,
                onClicked: pressed,
                textcolor: ktextcolor,
              )),
        ],
      ),
    );
  }

  Widget radio() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: cenabled_color,
              width: 5,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "male",
            ),
            Radio(
                value: "male",
                groupValue: gender,
                onChanged: ((value) {
                  this.gender = value!;
                  setState(() {});
                })),
            Text(
              "female",
            ),
            Radio(
                value: "female",
                groupValue: gender,
                onChanged: ((value) {
                  this.gender = value!;
                  setState(() {});
                })),
          ],
        ),
      ),
    );
  }
}
