import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/widgets/tetris/block.dart';
import 'package:zquiz/widgets/tetris/sub_block.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import 'dart:math';

enum Collision { LANDED, LANDED_BLOCK, HIT_WALL, HIT_BLOCK, NONE }

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
  BlockMovement action;
  Block block;
  Timer timer;
  List<SubBlock> oldSubBlocks;
  bool isGameOver = false;


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
    Provider.of<Data>(context, listen: false).setIsPlaying(true);
    Provider.of<Data>(context, listen: false).setScore(0);
    isGameOver = false;
    oldSubBlocks = List<SubBlock>();
    RenderBox renderBoxGame = _keyGameArea.currentContext.findRenderObject();
    subBlockWidth = (renderBoxGame.size.width - GAME_AREA * 2) / X;

    Provider.of<Data>(context, listen: false).setNextBlock(getNewBlock());

    block = getNewBlock();
    timer = Timer.periodic(duration, onPlay);
  }

  void onPlay(Timer timer) {
    var status = Collision.NONE;

    setState(() {
      if (action != null) {
        if (!checkOnEdge(action)) {
          block.move(action);
        }
      }

      // action quand les blocks touchent les autres blocks
      for (var oldSubBlock in oldSubBlocks) {
        for (var subBlock in block.subBlocks) {
          var x = block.x + subBlock.x;
          var y = block.y + subBlock.y;
          if (x == oldSubBlock.x && y == oldSubBlock.y) {
            switch(action) {
              case BlockMovement.LEFT:
                block.move(BlockMovement.RIGHT);
                break;
              case BlockMovement.RIGHT:
                block.move(BlockMovement.LEFT);
                break;
              case BlockMovement.ROTATE_CLOCKWISE:
                block.move(BlockMovement.ROTATE_COUNTER_CLOCKWISE);
                break;
              default:
                break;
            }
          }
        }
      }



      if (!checkAtBottom()) {
        if (!checkAboveBlock()) {
        block.move(BlockMovement.DOWN);
      } else {
        status = Collision.LANDED_BLOCK;
      }
      } else {
        status = Collision.LANDED;
      }

      if (status == Collision.LANDED_BLOCK && block.y < 0) {
        isGameOver = true;
        endGame();
      } else if (status == Collision.LANDED || status == Collision.LANDED_BLOCK) {
        block.subBlocks.forEach((subBlock){
          subBlock.x += block.x;
          subBlock.y += block.y;
          oldSubBlocks.add(subBlock);
        });
        block = Provider.of<Data>(context, listen: false).nextBlock;
        Provider.of<Data>(context, listen: false).setNextBlock(getNewBlock());
      }
      action = null;
      updateScore();
    });
  }

  bool checkAtBottom() {
    return block.y + block.height == Y;
  }

  bool checkAboveBlock() {
    for (var oldSubBlock in oldSubBlocks) {
      for (var subBlock in block.subBlocks) {
        var x = block.x + subBlock.x;
        var y = block.y + subBlock.y;
        if (x == oldSubBlock.x && y + 1 == oldSubBlock.y) {
          return true;
        }
      }
    }
    return false;
  }

  bool checkOnEdge(BlockMovement action) {
    return (action == BlockMovement.LEFT && block.x <= 0) ||
        (action == BlockMovement.RIGHT && block.x + block.width >= X);
  }

  void updateScore() {
    var combo = 1;
    Map<int, int> rows = Map();
    List<int> rowsToBeRemoved = List();

    //count number of subB in each row
    oldSubBlocks.forEach((subBlock) {
      rows.update(subBlock.y, (value) => ++value, ifAbsent: () => 1);
    });

    //add score
    rows.forEach((rowNum, count) {
      if (count == X) {
        Provider.of<Data>(context, listen: false).addScore(combo++);
        rowsToBeRemoved.add(rowNum);
      }
    });

    if (rowsToBeRemoved.length > 0) {
      removeRows(rowsToBeRemoved);
    }
  }

  void removeRows(List<int> rowsToBeRemoved) {
    rowsToBeRemoved.sort();
    rowsToBeRemoved.forEach((rowNum) {
      oldSubBlocks.removeWhere((subBlock) => subBlock.y == rowNum);
      oldSubBlocks.forEach((subBlock) {
        if (subBlock.y < rowNum) {
          ++subBlock.y;
        }
      });

    });
  }


  void endGame() {
    Provider.of<Data>(context, listen: false).setIsPlaying(false);
    timer.cancel();
  }

  @override
  void dispose() {
    if(timer != null) {
      timer.cancel();
    }
    super.dispose();
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
      subBlocks.add(getPositionedSquareContainer(
          subBlock.color, subBlock.x + block.x, subBlock.y + block.y));
    });

    //old block
    oldSubBlocks.forEach((oldSubBlock) {
      subBlocks.add(getPositionedSquareContainer(
          oldSubBlock.color, oldSubBlock.x, oldSubBlock.y));
    });

    //GameOver
    if (isGameOver) {
      subBlocks.add(getGameOverRect());
    }

    return Stack(children: subBlocks);
  }

  Widget getGameOverRect() {
    return Positioned(
        child: Container(
          width: subBlockWidth * 8.0,
          height: subBlockWidth * 3.0,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Text('Game Over',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
        ),
    left: subBlockWidth * 1.0,
    top: subBlockWidth * 6.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if(details.delta.dx > 0) {
          action = BlockMovement.RIGHT;
        } else {
          action = BlockMovement.LEFT;
        }
      },
      onTap: () {
        action = BlockMovement.ROTATE_CLOCKWISE;
      },

      child: AspectRatio(
        aspectRatio: X / Y,
        child: Container(
          key: _keyGameArea,
          decoration: BoxDecoration(
            color: Colors.indigo[100],
            border: Border.all(
              width: GAME_AREA,
              color: Colors.indigoAccent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: drawBlock(),
      ),
    ),
    );
  }
}