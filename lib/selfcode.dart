import 'package:flutter/cupertino.dart';

Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = 0;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedCard == 0 ? Colors.blue : Colors.amber,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.male,
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.female,
                          size: 60.0,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedCard == 1 ? Colors.blue : Colors.amber,
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
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
                  'Weight : $weight Kg',
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
                    value: weight,
                    min: 30,
                    max: 120,
                    divisions: 100,
                    label: weight.round().toString(),
                    onChanged: (value) => setState(() {
                          this.weight = value;
                        })),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedCard == 1 ? Colors.blue : Colors.amber,
                    ),
                    height: 100.0,
                    width: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontFamily: 'Secular',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),

                  //Height
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedCard == 1 ? Colors.blue : Colors.amber,
                    ),
                    height: 100.0,
                    width: 100.0,
                    child: Row(GestureDetector(
                      
                    )
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(
                            fontFamily: 'Secular',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),