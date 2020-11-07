import 'package:flutter/material.dart';

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