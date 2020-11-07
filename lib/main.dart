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
              color: Colors.red[100],
              child: Text("Navigator"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()))
              },
              color: Colors.green[100],
              child: Text("Animate"),
            ),
            
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReturnDataScreen()))
              },
              color: Colors.blue[100],
              child: Text("Return Data"),
            ),
            FlatButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAppArgument()))
              },
              color: Colors.yellow[100],
              child: Text("Argument"),
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
        color: Colors.blueAccent,
        child: Text("Back Home"),
        onPressed: () => {Navigator.pop(context)},
      )),
    );
  }
}