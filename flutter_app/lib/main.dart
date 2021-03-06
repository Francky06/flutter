
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My app",
      theme: new ThemeData(
      primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: new Home() ,
    );
  }
  }

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

bool color = false;
class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My app"),
        leading: new Icon(Icons.all_inclusive),
        actions: <Widget>[
          new Icon(Icons.adb),
        ],
      centerTitle: true,
      elevation: 20.0,
    backgroundColor: Colors.teal,
    ),
      backgroundColor: Colors.white,
      body: new Center(
        child: new Container(
          color: Colors.teal,
          height: 150.0,
          width: 300.0,
          margin: EdgeInsets.only(top:0,right: 0,bottom: 0,left: 0),
          padding: EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              new FloatingActionButton(
                  onPressed: changeColor,
                  elevation: 10,
                  backgroundColor: Colors.black,
                  child: new Icon(Icons.color_lens),
              ),

              new Text(
                "Salut BG",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: color ? Colors.black : Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),

              new IconButton(
                icon: new Icon(Icons.android),
                color: color ? Colors.white : Colors.black,
                onPressed: () {
                  setState(() {
                    //back-end
                  });
                },
              ),
                
                new FlatButton(onPressed: changeColor,
                    splashColor: Colors.teal,
                    child: new Icon(Icons.brush)
                ),



          ],

        ),


        /*  child: new Center(
            child: new Card(
           color: Colors.teal,
            elevation: 10.0,
            child: new Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 180.0,
              child: new Center(
                child : new Image.asset(
                  "assets/moi3.jpg",
                ),
                child: new Text(
                    "Salut BG lorem jdfnedfndf dofjdofjdfod dofjdfjd",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            new Text("Hello",
            style: new TextStyle(
              color: Colors.teal,
              fontSize: 30.0,
            ),
            ),
            Image.asset("assets/moi3.jpg"),
            new Text("Code !",
              style: new TextStyle(
                color: Colors.teal,
                fontSize: 30.0,
              ),
            ),
          ],
      ),
          */

        ),
      ),
    );
  }
void changeColor() {
    setState(() {
      color = !color;
    });
}
}