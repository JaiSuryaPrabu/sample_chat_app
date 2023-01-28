import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:current/widget/button.dart';

class Text_tile extends StatefulWidget {
  Widget leading = Container(
    width: 0,
  );
  Widget text = Text("nothing");
  Text_tile({required this.leading, required this.text});

  @override
  State<Text_tile> createState() => _Text_tileState(this.leading,this.text);
}

class _Text_tileState extends State<Text_tile> {
  Widget leading = Container(
    width: 0,
  );
  Widget text = Text("Nothing");
  _Text_tileState(this.leading,this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: koutlinecolor, width: koutlinewidth)),
        child: ListTile(
          leading: leading,
          style: ListTileStyle.drawer,
          title: text,
          textColor: Colors.black,
          tileColor: ktextcolor,
        ),
      ),
    );
  }
}
