import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  String questions;

  Question(String question) {
    this.questions = question;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questions,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
