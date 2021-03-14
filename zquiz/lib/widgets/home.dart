import 'package:flutter/material.dart';
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
              child: new Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset("assets/dog.png", fit: BoxFit.cover),
              ),
            ),
            Text("New Zquiz",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return new Themes();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                ),
                child: TextUtils("Demarrer"),
            ),
          ],
        ),
      ),
    );
  }
}