import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';

const X = 10;
const Y = 25;

class Game extends StatefulWidget {
  @override
  _GameState createState() => new _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: X / Y,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo[100],
          border: Border.all(
            width: 2.0,
            color: Colors.indigoAccent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}