
import 'dart:math';

class Question {
String question;
  List<String> response;
  String reponseBonne;
  String explication;
  String imagePath;

  Question(question, response, reponseBonne, explication, imagePath) {
    this.question = question;
    this.response = response;
    this.reponseBonne = reponseBonne;
    this.explication = explication;
    this.imagePath = imagePath;
  }
}