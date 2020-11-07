# lap4_1
# Main
```dart
import 'package:flutter/material.dart';
import 'animate.dart';
import 'arguments.dart';
import 'return-data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lap 4.1',
      home: Action(title: 'Lap 4.1'),
    );
  }
}

class Action extends StatefulWidget {
  Action({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyLayout createState() => MyLayout();
}

class MyLayout extends State<Action> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Icon(Icons.home), Text(widget.title)],
        ),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondRoute()))
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute()))
              },
              color: Colors.green,
              child: Text("Navigator"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()))
              },
              color: Colors.green,
              child: Text("Animate"),
            ),
            FlatButton(
              onPressed: () => {Navigator.pushNamed(context, '/second')},
              color: Colors.green,
              child: Text("Navigator name"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAppArgument()))
              },
              color: Colors.green,
              child: Text("Argument"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReturnDataScreen()))
              },
              color: Colors.green,
              child: Text("Return Data"),
            ),
          ],
        ),
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
          child: FlatButton(
        color: Colors.amberAccent,
        child: Text("Back Home"),
        onPressed: () => {Navigator.pop(context)},
      )),
    );
  }
}
```