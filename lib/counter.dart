// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 40, 43),
        centerTitle: true,
        title: Text(
          " {فَقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا} ",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 9),
                      blurRadius: 20,
                    ),
                  ]),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.height / 8,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "$count",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 9),
                      blurRadius: 20,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        shape: BoxShape.circle,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[200],
                      maximumSize: Size(80, 80),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    icon: Icon(
                      Icons.change_circle,
                      color: Colors.red[400],
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
