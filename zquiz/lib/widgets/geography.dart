import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';

class Geography extends StatefulWidget {
  @override
  _GeographyState createState() => new _GeographyState();
}

class _GeographyState extends State<Geography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils("Géographie"),
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