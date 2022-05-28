import 'dart:math';

import 'package:flutter/material.dart';
import 'formula_bmi.dart';

class ResultPage extends StatefulWidget {
  int weight;
  int height;
  int age;
  ResultPage({
    required this.weight,
    required this.height,
    required this.age,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  formula form = formula();
  double bmi = 0.0;
  String status = "";
  @override
  void initState() {
    bmi = form.bmi_calulation(widget.height, widget.weight);
    status = form.status(bmi);
    super.initState();
  }

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
                  '${bmi.toStringAsFixed(1)}',
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
              '$status',
              style: TextStyle(
                fontFamily: 'Secular',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
