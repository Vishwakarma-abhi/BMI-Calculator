import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double value = 30;
  double age = 18;
  double height = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontFamily: 'Secular',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GENDER',
                  style: TextStyle(
                    fontFamily: 'Secular',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Icon(
                    Icons.male,
                    size: 60.0,
                  ),
                  color: Colors.amber,
                  height: 100.0,
                  width: 100.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Icon(
                    Icons.female,
                    size: 60.0,
                  ),
                  color: Colors.amber,
                  height: 100.0,
                  width: 100.0,
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            //*
            //Weight
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WEIGHT',
                  style: TextStyle(
                    fontFamily: 'Secular',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slider(
                        value: value,
                        min: 30,
                        max: 120,
                        divisions: 100,
                        label: value.round().toString(),
                        onChanged: (value) => setState(() {
                              this.value = value;
                            })),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),

                //Age
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(
                        fontFamily: 'Secular',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slider(
                        value: age,
                        min: 18,
                        max: 60,
                        divisions: 60,
                        label: age.round().toString(),
                        onChanged: (value) => setState(() {
                              this.age = value;
                            })),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                //Height
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontFamily: 'Secular',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slider(
                        value: height,
                        min: 30,
                        max: 180,
                        divisions: 100,
                        label: height.round().toString(),
                        onChanged: (value) => setState(() {
                              this.height = value;
                            })),
                  ],
                ),

                //Calculation Button
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('CALCULATE'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
