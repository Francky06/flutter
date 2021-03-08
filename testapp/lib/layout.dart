import 'package:flutter/material.dart';
import 'second.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => new _LayoutState();
}

class _LayoutState extends State<Layout> {

  String onChange;
  String onSubmit;

  Map todos = {
    "Math": false,
    "Dessin": false,
    "Chimie": false,
  };

  int actualRadio;
  bool ready = false;
  double poids = 30;


  @override
 Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: newPage,
            child: Text("Change Page"),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: Colors.black,
              onPrimary: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: alert,
            child: Text("Alert"),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: Colors.black,
              onPrimary: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: snack,
            child: Text("Pop"),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: Colors.black,
              onPrimary: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: dialog,
            child: Text("Alert 2"),
            style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: Colors.black,
              onPrimary: Colors.white,
            ),
          ),
          //      Text(onChange ?? ''),
          Text(onSubmit == null ? '' : "Hello $onSubmit"),
          TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            style: TextStyle(
              backgroundColor: Colors.cyan,
              color: Colors.black,
            ),
            onChanged: (String string) {
              setState(() {
                onChange = string;
              });
            },
            onSubmitted: (String string) {
              setState(() {
                onSubmit = string;
              });
            },
            decoration: InputDecoration(
              hintText: "Entrez votre pseudo",
            ),
          ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: todosList(),
              ),
              Column(
                children: radio(),
              ),
              Column(
                children: [
                  Text("Ready?"),
                  Switch(
                      value: ready,
                      inactiveTrackColor: Colors.black,
                      activeTrackColor: Colors.green,
                      onChanged: (bool b) {
                      setState(() {
                        ready = b;
                      });
                  })
                ],
              ),
          Column(
            children: [
              Text("Happy ${poids.toInt()}"),
              Slider(value: poids, min:30, max: 50, onChanged: (double p) {
                setState(() {
                  poids = p;
                });
              }),
            ],
          ),


            ],
          ),

        ),

        ],
      ),
    );
  }


  List todosList() {
    List<Widget> l = [];
    todos.forEach((key, value) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(key),
          Checkbox(value: value, onChanged: (bool b) {
            setState(() {
              todos[key] = b;
            });
          }),
        ],
      );
      l.add(row);
    });
    return l;
  }

  List<Widget> radio() {
    List<Widget> r = [];
    for(int i = 0; i < 5; i++) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Test ${i+1}"),
          Radio(
              value: i,
              groupValue: actualRadio,
              onChanged: (int i) {
                setState(() {
                  actualRadio = i;
                });
              }),
        ],

      );
    r.add(row);
    }
    return r;
  }


  void snack() {
    SnackBar snackBar = SnackBar(
      content: Text("hello"),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Yepaî'),
            content: Text("Nice One"),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                  child: Text("confirm"),
              ),
              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                child: Text("annuler"),
              )
            ],
          );
      }
      );
  }
  Future dialog() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("hey hey"),
            children: [
              Text("Ca va ?"),
              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                child: Text("test"),
              ),
              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                child: Text("annuler"),
              ),

            ],
          );
        }
        );
  }

  void newPage() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context){
          return Second("New");
        }));

  }
}