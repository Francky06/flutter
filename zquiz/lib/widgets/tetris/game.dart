import 'dart:async';
import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/widgets/tetris/block.dart';
import 'dart:math';

const X = 10;
const Y = 25;
const REFRESH = 300;
const GAME_AREA = 2.0;
const SUB_BLOCK_EDGE_WIDTH = 2.0;

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);
  @override
  State createState() => new GameState();
}

class GameState extends State<Game> {
  double subBlockWidth;
  Duration duration = Duration(milliseconds: REFRESH);
  GlobalKey _keyGameArea = GlobalKey();
  Block block;
  Timer timer;
  bool isPlaying = false;

  Block getNewBlock() {
    int blockType = Random().nextInt(7);
    int orientationIndex = Random().nextInt(4);
    switch(blockType) {
      case 0:
        return IBlock(orientationIndex);
      case 1:
        return JBlock(orientationIndex);
      case 2:
        return LBlock(orientationIndex);
      case 3:
        return OBlock(orientationIndex);
      case 4:
        return TBlock(orientationIndex);
      case 5:
        return SBlock(orientationIndex);
      case 6:
        return ZBlock(orientationIndex);
      default:
        return null;
    }
  }

  void startGame() {
    isPlaying = true;
    RenderBox renderBoxGame = _keyGameArea.currentContext.findRenderObject();
    subBlockWidth = (renderBoxGame.size.width - GAME_AREA * 2) / X;
    block = getNewBlock();
    timer = Timer.periodic(duration, onPlay);
  }

  void onPlay(Timer timer) {
    setState(() {
      block.move(BlockMovement.DOWN);
    });
  }

// a test


  void endGame() {
    isPlaying = false;
    timer.cancel();
  }

  Widget getPositionedSquareContainer(Color color, int x, int y) {
    return Positioned(
      left : x * subBlockWidth,
      top : y * subBlockWidth,
      child: Container(
        width: subBlockWidth - SUB_BLOCK_EDGE_WIDTH,
        height: subBlockWidth - SUB_BLOCK_EDGE_WIDTH,
        decoration: BoxDecoration(
          color: color,
          shape:BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
      ),
    );
  }

  Widget drawBlock() {
    if(block == null) return null;
    List<Positioned> subBlocks = List();

    //current block
    block.subBlocks.forEach((subBlock){
      subBlocks.add(getPositionedSquareContainer(subBlock.color, subBlock.x + block.x, subBlock.y + block.y));
    });
    return Stack(children: subBlocks);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: X / Y,
      child: Container(
        key: _keyGameArea,
        decoration: BoxDecoration(
          color: Colors.indigo[100],
          border: Border.all(
            width: 2.0,
            color: Colors.indigoAccent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: drawBlock(),
      ),
    );
  }
}