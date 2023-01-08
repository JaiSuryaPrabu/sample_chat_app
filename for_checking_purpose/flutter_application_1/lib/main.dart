import 'package:flutter/material.dart';

// load methode  -> 27
// store methode -> 38
// write the code before the setState function in the methods
// write only the updating values in the setState function

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class buttons_checking extends StatefulWidget {
  const buttons_checking({super.key});

  @override
  State<buttons_checking> createState() => _buttons_checkingState();
}

// ignore: camel_case_types
class _buttons_checkingState extends State<buttons_checking> {
  String message = "the output will be printed here";

  /*load methode*/

  // ignore: non_constant_identifier_names
  void Load() {
    //code here what you need to be done
    setState(() {
      //update the required if you need
      message = "loaded succesfully";
    });
  }

  /*store methode*/

  // ignore: non_constant_identifier_names
  void Store() {
    //code here what you need to be done
    setState(() {
      //update the required if you need
      message = "Stored succesfully";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text("Load and Store")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Textfields(hint: "user input", hide: false))
            ],
          )),
          Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.deepOrangeAccent),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: Load,
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  "load",
                  style: TextStyle(color: Colors.black45),
                )),
          ),
          Center(
            child: TextButton(
                onPressed: Store,
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  "store",
                  style: TextStyle(color: Colors.black45),
                )),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const buttons_checking(),
    );
  }
}

// ignore: must_be_immutable
class Textfield extends StatelessWidget {
  String hint;
  bool hide;

  Textfield({
    super.key,
    required this.hint,
    required this.hide,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: hide,
        textAlign: TextAlign.center,
        style:
            const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white60,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade400, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade400, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Textfields extends StatelessWidget {
  String hint;
  bool hide;

  Textfields({
    super.key,
    required this.hint,
    required this.hide,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: hide,
        textAlign: TextAlign.center,
        style:
            const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white60,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade400, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade400, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
