import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetApp;

  Result(this.resetApp);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Thank you!!!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        FlatButton(
          onPressed: resetApp,
          child: Text('Restart'),
          textColor: Colors.blue[700],
          color: Colors.cyan[600],
        )
      ],
    );
  }
}
