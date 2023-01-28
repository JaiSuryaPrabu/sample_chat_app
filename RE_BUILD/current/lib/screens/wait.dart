import 'package:flutter/material.dart';

// ignore: camel_case_types
class Wait extends StatefulWidget {
  const Wait({super.key});

  @override
  State<Wait> createState() => _WaitState();
}

// ignore: camel_case_types
class _WaitState extends State<Wait> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Icon(Icons.run_circle)),
    );
  }
}
