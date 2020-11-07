import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
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