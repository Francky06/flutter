import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';

class Citations extends StatefulWidget {
  @override
  _CitationsState createState() => new _CitationsState();
}

class _CitationsState extends State<Citations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils("Citations"),
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