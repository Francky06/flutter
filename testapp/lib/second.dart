import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  String title;
  Second(String title) {
    this.title = title;
  }

  double poids = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("bien ouej"),



          ],
        ),
      ),
    );
  }
}