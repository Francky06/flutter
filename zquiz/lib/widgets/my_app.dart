import 'package:flutter/material.dart';
import 'package:zquiz/widgets/home.dart';
import 'package:flutter/services.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zquiz Le Grand',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Zquiz'),
    );
  }


}