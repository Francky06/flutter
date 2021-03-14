import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';

class Divers extends StatefulWidget {
  @override
  _DiversState createState() => new _DiversState();
}

class _DiversState extends State<Divers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils("Divers"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/c.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ],
        ),
      ),
    );
  }
}