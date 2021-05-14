import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:provider/provider.dart';
import '../../main.dart';


class NextBlock extends StatefulWidget {
  @override
  _NextBlockState createState() => new _NextBlockState();
}

class _NextBlockState extends State<NextBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Suivant',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox( height: 5),
          AspectRatio(
            aspectRatio: 1,
            child:Container(
              color: Colors.indigo[100],
              child: Center(
                child: Provider.of<Data>(context).getNextBlock(),
              ),
            ),
            ),
        ],
      ),
    );
  }
}