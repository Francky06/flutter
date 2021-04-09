import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/models/question.dart';
import 'package:zquiz/models/listq.dart';
import 'package:liquid_progress_indicator_ns/liquid_progress_indicator.dart';
import 'dart:async';

class Citations extends StatefulWidget {
  @override
  _CitationsState createState() => new _CitationsState();
}

class _CitationsState extends State<Citations> {
  Question question;
  int index = 0;
  int score = 0;
  double percent = 20;
  Timer timer;
  List<Question> listQuestions = Listcitations().listQuestions;

  @override
  void initState() {
    listQuestions.shuffle();
    question = listQuestions[index];
    timer = Timer.periodic(Duration(milliseconds: 100), (_) {
      setState(() {
        percent -= 0.1;
        if (percent <= 0) {
          getNQ();
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: TextUtils("Citations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: (TextUtils(question.question, textScaleFactor: 1.2)),
                ),
              ),
            ),
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Center(
                  child: (TextUtils('Score : $score / $index')),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 8,
                  child: Container(
                    width: size,
                    height: size,
                    child: Image.asset('assets/'+question.imagePath, fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size,
                  height: size,
                  color: Colors.teal,
                  child: LiquidCircularProgressIndicator(
                    value: percent / 20,
                    // Defaults to 0.5.
                    valueColor: AlwaysStoppedAnimation(Colors.pink),
                    backgroundColor: Colors.white,
                    borderColor: Colors.red,
                    borderWidth: 4.0,
                    direction: Axis.vertical,
                    center: Text(
                      percent.round().toString() + " secondes",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            bouton('0'),
            bouton1('1'),
            bouton2('2'),
            bouton3('3'),
          ],
        ),
      ),
    );
  }




  ElevatedButton bouton(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 6,
      ),
      onPressed: (() => dialog(b)),

      child: TextUtils('${question.response[0]}'),
    );
  }

  ElevatedButton bouton1(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 6,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[1]}'),

    );
  }

  ElevatedButton bouton2(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 6,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[2]}'),

    );
  }

  ElevatedButton bouton3(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 6,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[3]}'),

    );

  }

  Future<Null> dialog(String b) async {
    bool c = (b == question.reponseBonne);
    String good = "assets/cook.png";
    String faux = "assets/ghost.png";
    if(c) {
      score++;
    }
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          Future.delayed(Duration(seconds: 1), () {
            Navigator.of(context).pop();
            getNQ();
          });
          return SimpleDialog(
            title: TextUtils(
              c ? "Bravo" : "Dommage",
              textScaleFactor: 1.4,
              color: c ? Colors.green : Colors.red,
            ),
            contentPadding: EdgeInsets.only(left: 50, top: 20, right: 50, bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            children: [
              Container(
                width: 100,
                height: 120,
                child: Image.asset(c ? good : faux, fit: BoxFit.cover),
              ),
            ],
          );
        }
    );
  }

  Future<Null> alerte() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext buildContext) {
          return AlertDialog(
            title: TextUtils('Fin du Zquiz', color: Colors.black, textScaleFactor: 1.2),
            contentPadding: EdgeInsets.all(10),
            content: TextUtils("Votre score est de : $score / ${index + 1}", color: Colors.black),
            actions: [
              TextButton(
                onPressed: ((){
                  Navigator.pop(buildContext);
                  Navigator.pop(context);
                }),
                child: TextUtils("Terminer", textScaleFactor: 1.2),
              )
            ],
          );
        }
    );
  }

  void getNQ() {
    if(index < 9) {
      index++;
      percent = 20;
      setState(() {
        question = listQuestions[index];
      });
    } else {
      alerte();
      timer.cancel();
    }
  }
}