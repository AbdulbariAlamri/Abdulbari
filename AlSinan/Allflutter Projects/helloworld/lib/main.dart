import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp()); //shortcut for functions with 1 expression

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //another widget creates base structure  scheme for Ui
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('the question!'),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
