# lap4_1
# Main
```dart
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
```

# Animate
``` dart
class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition',
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://2.bp.blogspot.com/-igowB6lTUvE/XJjuw6xkXGI/AAAAAAAAAII/Gv4ch1sfNJE2Ejcm6fLFfGLiNSigF6G2QCLcBGAs/s1600/hinh-anh-girl-xinh-gai-dep-mac-bikini_5.jpg',
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://2.bp.blogspot.com/-igowB6lTUvE/XJjuw6xkXGI/AAAAAAAAAII/Gv4ch1sfNJE2Ejcm6fLFfGLiNSigF6G2QCLcBGAs/s1600/hinh-anh-girl-xinh-gai-dep-mac-bikini_5.jpg',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
```
# Navigator-name
```dart

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
```

# Return-data
```dart
import 'package:flutter/material.dart';

class ReturnDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data '),
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option, any option!'),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context, 'Yes!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context, 'No');
                },
                child: Text('No'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
```