import 'package:current/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

Radius kradius = Radius.circular(8);
Color kbordercolor = Colors.green.shade500;

class sender extends StatefulWidget {
  String text = "";
  sender({super.key, required this.text});

  @override
  State<sender> createState() => _senderState(text);
}

class _senderState extends State<sender> {
  String text = "";
  _senderState(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: kradius, bottomLeft: kradius, topRight: kradius),
                border: Border.all(color: koutlinecolor, width: 3)),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}

class receiver extends StatefulWidget {
  String text = "";
  receiver({super.key, required this.text});

  @override
  State<receiver> createState() => _receiverState(text);
}

class _receiverState extends State<receiver> {
  String text = "";
  _receiverState(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: kradius, topRight: kradius, bottomRight: kradius),
                border: Border.all(color: kbordercolor, width: 3)),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
