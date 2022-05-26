import 'dart:math';

import 'package:flutter/material.dart';
import 'formula_bmi.dart';

class ResultPage extends StatefulWidget {
  double weight, height, age;
  // ignore: use_key_in_widget_constructors
  ResultPage({
    required this.weight,
    required this.height,
    required this.age,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RESULT',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 155.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'Secular',
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '" You are Overweight "',
              style: TextStyle(
                fontFamily: 'Secular',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
