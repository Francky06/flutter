import 'package:flutter/material.dart';

class TextUtils extends Text {

  TextUtils(String text, {color: Colors.black, textScaleFactor: 1.0}):
      super(
        text,
        textScaleFactor: textScaleFactor,
        style: new TextStyle(color: color),
        textAlign: TextAlign.center,
      );
}

class TextUtils2 extends Text {

  TextUtils2(String text, {color: Colors.black, textScaleFactor: 1.0}) :
        super(
        text,
        textScaleFactor: textScaleFactor,
        style: new TextStyle(
          color: color,
          backgroundColor: Colors.green,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      );
}