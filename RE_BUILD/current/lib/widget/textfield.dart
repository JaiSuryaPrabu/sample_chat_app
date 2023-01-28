import 'package:current/widget/button.dart';
import 'package:flutter/material.dart';

const Color cenabled_color = Colors.grey;
const Color kfocused_color = Color.fromARGB(255, 10, 113, 157);
BorderRadius kborder_radius = BorderRadius.circular(10);
TextInputType ktit = TextInputType.phone;

class Text_Field extends StatefulWidget {
  Color textcolor = Colors.black;
  String label = "";
  String hinttext = "";
  Function onClicked = (String value) {};
  TextEditingController tec = TextEditingController();
  Text_Field(this.textcolor, this.label, this.hinttext, this.tec,
      this.onClicked(String value));
  Text_Field.default_Text_Fielt(this.onClicked, {super.key});
  @override
  State<Text_Field> createState() =>
      _Text_FieldState(textcolor, label, hinttext, tec, onClicked);
}

class _Text_FieldState extends State<Text_Field> {
  Color textcolor = ktextcolor;
  String label = "";
  String hinttext = "";
  TextEditingController tec = new TextEditingController();
  Function onClicked = (String value) {};
  _Text_FieldState(
      this.textcolor, this.label, this.hinttext, this.tec, this.onClicked);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: tec,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        suffixIcon: tec.text.isEmpty
            ? Container(
                width: 0,
                height: 20,
              )
            : IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => {
                  tec.clear(),
                  onClicked(""),
                },
              ),
        label: Text(label),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: cenabled_color),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: kfocused_color),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onChanged: (value) {
        onClicked(value);
        setState(() {});
      },
    );
  }
}

class Password_Field extends StatefulWidget {
  Color textcolor = Colors.black;
  String label = "";
  String hinttext = "";
  Function onClicked = (String value) {};
  TextEditingController tec = TextEditingController();
  Password_Field(this.textcolor, this.label, this.hinttext, this.tec,
      this.onClicked(String value),
      {super.key});
  Password_Field.default_Password_Field(this.onClicked, {super.key});
  @override
  State<Password_Field> createState() =>
      _Password_FieldState(textcolor, label, hinttext, tec, onClicked);
}

class _Password_FieldState extends State<Password_Field> {
  Color textcolor = ktextcolor;
  String label = "";
  String hinttext = "";
  TextEditingController tec = new TextEditingController();
  Function onClicked = (String value) {};
  var enable = true;
  _Password_FieldState(
      this.textcolor, this.label, this.hinttext, this.tec, this.onClicked);
  void toggle() {
    enable = !enable;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      obscureText: enable,
      controller: tec,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: enable
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () => toggle(),
        ),
        label: Text(label),
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: cenabled_color),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: kfocused_color),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onChanged: (value) => onClicked(value),
    );
  }
}

class Phone_Field extends StatefulWidget {
  Color textcolor = Colors.black;
  String label = "";
  String hinttext = "";
  Function onClicked = (String value) {};
  TextEditingController tec = TextEditingController();
  Phone_Field(this.textcolor, this.label, this.hinttext, this.tec,
      this.onClicked(String value),
      {super.key});
  Phone_Field.default_Phone_Field(this.onClicked, {super.key});
  @override
  State<Phone_Field> createState() =>
      _Phone_FieldState(textcolor, label, hinttext, tec, onClicked);
}

class _Phone_FieldState extends State<Phone_Field> {
  Color textcolor = Colors.black;
  String label = "";
  String hinttext = "";
  Function onClicked = (String value) {};
  TextEditingController tec = TextEditingController();
  var enable = true;
  _Phone_FieldState(
      this.textcolor, this.label, this.hinttext, this.tec, this.onClicked);
  void toggle() {
    label = "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        keyboardType: ktit,
        controller: tec,
        style: TextStyle(color: textcolor),
        decoration: InputDecoration(
          suffixIcon: tec.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => {
                    tec.clear(),
                    onClicked(""),
                  },
                ),
          label: Text(label),
          hintText: hinttext,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 5, color: cenabled_color),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 5, color: kfocused_color),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          onClicked(value);
          toggle();
        });
  }
}
