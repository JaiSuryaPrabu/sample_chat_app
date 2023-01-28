import 'package:current/widget/button.dart';
import 'package:current/widget/textfield.dart';
import 'package:flutter/material.dart';

class Bottomadd extends StatelessWidget {
  var control = TextEditingController();
  Function fun;
  String newvalue = '';
  Bottomadd({required this.fun});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          color: Color.fromARGB(0, 124, 119, 119),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 221, 218, 215),
                borderRadius: const BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                      child: const Text(
                    'Add friend',
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 12, 13, 14)),
                  )),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text_Field.default_Text_Fielt(() {})),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Button(
                      backGroundcolor: kbackGroundcolor,
                      label: "add",
                      onClicked: () {},
                      textcolor: ktextcolor,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
