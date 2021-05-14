import 'package:flutter/material.dart';
import 'package:zquiz/widgets/my_app.dart';
import 'package:provider/provider.dart';
import 'package:zquiz/widgets/tetris/block.dart';

void main() => runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp(),
  ),
);

class Data with ChangeNotifier {
  int score = 0;
  bool isPlaying = false;
  Block nextBlock;

  void setScore(score) {
    this.score = score;
    notifyListeners();
  }

  void addScore(score) {
    this.score += score;
    notifyListeners();
  }

  void setIsPlaying(isPlaying) {
    this.isPlaying = isPlaying;
    notifyListeners();
  }

  void setNextBlock(Block nextBlock) {
    this.nextBlock = nextBlock;
    notifyListeners();
  }

  Widget getNextBlock() {
    if(!isPlaying) return Container();
    var width = nextBlock.width;
    var height = nextBlock.height;
    var color = nextBlock.color;

    List<Widget> columns = [];
    for(var y =0; y < height; ++ y) {
      List<Widget> rows = [];
        for(var x = 0; x < width; x ++) {
          if (nextBlock.subBlocks
              .where((subBlock) => subBlock.x == x && subBlock.y == y)
              .length > 0
          ) {
            color = nextBlock.color;
          } else {
            color = Colors.transparent;
          }

          rows.add(Container(width: 12, height: 12, color: color));
        }
        columns.add(
            Row(mainAxisAlignment: MainAxisAlignment.center, children: rows));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, children: columns
    );
  }

}

