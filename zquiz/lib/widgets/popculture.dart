import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';

class Popculture extends StatefulWidget {
  @override
  _PopcultureState createState() => new _PopcultureState();
}

class _PopcultureState extends State<Popculture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: TextUtils("Pop Culture"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ],
        ),
      ),
    );
  }
}