import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zquiz/widgets/text_utils.dart';
import 'package:zquiz/models/question.dart';
import 'package:zquiz/models/listq.dart';
import 'dart:async';

class Popculture extends StatefulWidget {
  @override
  _PopcultureState createState() => new _PopcultureState();
}

class _PopcultureState extends State<Popculture> {
  Question question;
  int index = 0;
  int score = 0;
  List<Question> listQuestions = Listpop().listQuestions;

  @override
  void initState() {
    listQuestions.shuffle();
    question = listQuestions[index];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: TextUtils("Pop Culture"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextUtils('Question #${index + 1}'),
            TextUtils('Score : $score / $index'),
            TextUtils('${question.response}'),
            TextUtils('${question.reponseBonne}'),
            Card(
              elevation: 8,
              child: Container(
                width: size,
                height: size,
                  child: Image.asset(question.imagePath, fit: BoxFit.cover),
              ),
            ),
            TextUtils(question.question, textScaleFactor: 1.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                bouton('0'),
                bouton1('1'),
                bouton2('2'),
                bouton3('3'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton bouton(String b) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
        ),
        onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[0]}'),
    );
  }

  ElevatedButton bouton1(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[1]}'),

    );
  }

  ElevatedButton bouton2(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[2]}'),

    );
  }

  ElevatedButton bouton3(String b) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
      ),
      onPressed: (() => dialog(b)),
      child: TextUtils('${question.response[3]}'),

    );
  }

  Future<Null> dialog(String b) async {
      bool c = (b == question.reponseBonne);
        String good = "assets/c.png";
        String faux = "assets/sick.png";
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
                  contentPadding: EdgeInsets.all(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  children: [
                    Container(
                      width: 150,
                      height: 150,
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
      setState(() {
        question = listQuestions[index];
      });
    } else {
        alerte();
    }
  }
}