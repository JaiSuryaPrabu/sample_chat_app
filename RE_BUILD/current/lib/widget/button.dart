import 'package:flutter/material.dart';

Color ktextcolor = Color(0xFFE9E3E3);
Color kbackGroundcolor = Color.fromARGB(255, 135, 176, 238);
String klabel = "";
Function konClicked = () {};
Color koutlinecolor = Color.fromARGB(255, 39, 128, 244);
double koutlinewidth = 3;
double kelevation = 5;
Icon kicon = Icon(Icons.publish);

class Button extends StatefulWidget {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  Button(
      {super.key,
      required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor});
  Button.default_Button({super.key, required this.onClicked});
  @override
  State<Button> createState() => _ButtonState(
      backGroundcolor: backGroundcolor,
      textcolor: textcolor,
      label: label,
      onClicked: onClicked);
}

class _ButtonState extends State<Button> {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  _ButtonState(
      {required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: backGroundcolor),
      onPressed: () {
        onClicked();
      },
      child: Text(
        label,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}

class Outlined extends StatefulWidget {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  Color outlinecolor = koutlinecolor;
  double outlinewidth = 3;

  Outlined(
      {super.key,
      required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor,
      required this.outlinewidth,
      required this.outlinecolor});
  Outlined.default_Outlined({required this.onClicked});

  @override
  State<Outlined> createState() => _OutlinedState(
      backGroundcolor: backGroundcolor,
      label: label,
      onClicked: onClicked,
      textcolor: textcolor,
      outlinewidth: outlinewidth,
      outlinecolor: outlinecolor);
}

class _OutlinedState extends State<Outlined> {
  _OutlinedState(
      {required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor,
      required this.outlinewidth,
      required this.outlinecolor});

  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  Color outlinecolor = koutlinecolor;
  double outlinewidth = koutlinewidth;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: backGroundcolor,
          side: BorderSide(width: outlinewidth, color: outlinecolor)),
      onPressed: () {
        onClicked();
      },
      child: Text(
        label,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}

class Elevated extends StatefulWidget {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  double elevation = kelevation;
  Elevated(
      {super.key,
      required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor});
  Elevated.default_Elevated({required this.onClicked});
  @override
  State<Elevated> createState() => _ElevatedState(
      backGroundcolor: backGroundcolor,
      label: label,
      onClicked: onClicked,
      textcolor: textcolor,
      elevation: elevation);
}

class _ElevatedState extends State<Elevated> {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  String label = klabel;
  Function onClicked = konClicked;
  double elevation = kelevation;

  _ElevatedState(
      {required this.backGroundcolor,
      required this.label,
      required this.onClicked,
      required this.textcolor,
      required this.elevation});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backGroundcolor, elevation: 5),
      onPressed: () {
        onClicked();
      },
      child: Text(
        label,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}

class Icon_Button extends StatefulWidget {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  Icon icon = kicon;
  Function onClicked = konClicked;
  double elevation = kelevation;
  Icon_Button(
      {super.key,
      required this.backGroundcolor,
      required this.icon,
      required this.onClicked,
      required this.textcolor});
  Icon_Button.default_Icon({required this.onClicked});
  @override
  State<Icon_Button> createState() => _Icon_ButtonState(
      backGroundcolor: backGroundcolor,
      icon: icon,
      onClicked: onClicked,
      textcolor: textcolor,
      elevation: elevation);
}

class _Icon_ButtonState extends State<Icon_Button> {
  Color textcolor = ktextcolor;
  Color backGroundcolor = kbackGroundcolor;
  Icon icon = kicon;
  Function onClicked = konClicked;
  double elevation = kelevation;

  _Icon_ButtonState(
      {required this.backGroundcolor,
      required this.icon,
      required this.onClicked,
      required this.textcolor,
      required this.elevation});
  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: IconButton.styleFrom(
            backgroundColor: kbackGroundcolor, focusColor: kbackGroundcolor),
        onPressed: () {
          onClicked();
        },
        icon: icon);
  }
}
