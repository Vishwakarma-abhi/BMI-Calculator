import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  double value;
  double age;
  double height;
  Result{{@required this.value, @required this.height, this.age}}
  const Result({Key? key}) : super(key: key);

  


  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('RESULT'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Text(
            ''
          )
        ],
      ),
    );
  }
}
