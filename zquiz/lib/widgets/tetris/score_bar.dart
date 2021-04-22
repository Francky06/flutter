import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';


class ScoreBar extends StatefulWidget {
  @override
  _ScoreBarState createState() => new _ScoreBarState();
}

class _ScoreBarState extends State<ScoreBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo[800], Colors.indigo[500]],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Score : 0',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
        ],
      ),
    );
  }
}