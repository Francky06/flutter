import 'package:flutter/material.dart';
import 'package:zquiz/widgets/citations.dart';
import 'package:zquiz/widgets/divers.dart';
import 'package:zquiz/widgets/geography.dart';
import 'package:zquiz/widgets/popculture.dart';
import 'package:zquiz/widgets/text_utils.dart';

class Themes extends StatefulWidget {
  @override
  _ThemesState createState() => new _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: TextUtils(" Zquiz Party "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextUtils("Choisissez votre thème"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Popculture();
                }));
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
              ),
              child: TextUtils("Pop Culture"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Geography();
                }));
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
              ),
              child: TextUtils("Géographie"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Citations();
                }));
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
              ),
              child: TextUtils("Citations"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return new Divers();
                }));
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
              ),
              child: TextUtils("Divers"),
            ),
          ],
        ),
      ),
    );
  }
}