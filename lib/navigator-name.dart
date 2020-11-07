import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
  ));
}

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
          child: FlatButton(
        onPressed: () => {Navigator.pushNamed(context, '/second')},
        child: Text("Second Name"),
      )),
    );
  }
}