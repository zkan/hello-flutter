import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('ODDS News'),
          ),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('Image'),
                    Text('Content'),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('Image'),
                    Text('Content'),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('Image'),
                    Text('Content'),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('Image'),
                    Text('Content'),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
