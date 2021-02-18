import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answers(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: RaisedButton(
        color: Colors.cyan[600],
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }
}
