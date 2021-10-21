import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bdtravel extends StatefulWidget {
  bdState createState() => bdState();
}

class bdState extends State<bdtravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BD Travel Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Add Data'),
        ),
      ),
    );
  }
}
