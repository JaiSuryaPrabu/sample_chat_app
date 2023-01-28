import 'package:current/widget/texttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:current/widget/bottomadd.dart';

class People extends StatefulWidget {
  People({super.key, required this.currentuser});
  String currentuser;
  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<Widget> friends = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 15; i++) {
      friends.add(Text_tile(leading: Icon(Icons.abc), text: Text("hai")));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "logo",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 164, 206, 166),
              fontStyle: FontStyle.italic),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("__name__"),
            IconButton(onPressed: () {}, icon: Icon(Icons.onetwothree)),
            IconButton(onPressed: () {}, icon: Icon(Icons.abc))
          ],
        ),
      ),
      body: Container(
        child: ListView(children: friends),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Bottomadd(
                  fun: (value) {},
                );
              });
        },
        child: Icon(Icons.add_call),
      ),
    );
  }
}
