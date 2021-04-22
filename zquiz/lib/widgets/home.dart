import 'package:flutter/material.dart';
import 'package:zquiz/widgets/tetris/tetris.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/widgets/quizz/themes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 5.0,
              shape: CircleBorder(),
              child: new Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height * 0.3,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    image: new AssetImage('assets/dog.png'),
                  ),
                ),
             //   child: Image.asset("assets/dog.png", fit: BoxFit.cover),
              ),
            ),

            Text("New Zquiz",
              style: TextStyle(
                fontSize: 35,
              ),
            ),

            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Themes();
                  }));
                },
                style: TextButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100),
                  ),
                  backgroundColor: Colors.green,
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils('Zquiz'),
                        Icon(Icons.all_inclusive, size: 40, color: Colors.black),
                      ],
                    ),
                    ),
                  decoration: BoxDecoration(
                      //color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white10,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Tetris();
                }));
              },
              style: TextButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100),
                ),
                backgroundColor: Colors.deepOrange,
              ),
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils('Tetris'),
                      Icon(Icons.analytics_outlined, size: 40, color: Colors.black),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  //color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white10,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}