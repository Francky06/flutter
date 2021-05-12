import 'dart:async';
import 'package:zquiz/widgets/tetris/score_bar.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/widgets/tetris/game.dart';
import 'package:zquiz/widgets/tetris/next_block.dart';


class Tetris extends StatefulWidget {
  @override
  _TetrisState createState() => new _TetrisState();
}

class _TetrisState extends State<Tetris> {
  GlobalKey<GameState> _keyGame = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils(" Tetris "),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child:Column(
          children: [
            ScoreBar(),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 3,
                      child:Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: Game(key: _keyGame),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child:Padding(
                        padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            NextBlock(),
                            SizedBox(height: 30),
                            ElevatedButton(onPressed: () {
                              setState(() {
                                _keyGame.currentState != null
                                    && _keyGame.currentState.isPlaying
                                    ? _keyGame.currentState.endGame()
                                    : _keyGame.currentState.startGame();
                              });
                            },
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  primary: Colors.white,
                                ),
                                child: Text(
                                  _keyGame.currentState != null
                                  && _keyGame.currentState.isPlaying
                                  ? 'End' : 'Start',
                                  style: TextStyle(
                                    fontSize: 15, 
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
