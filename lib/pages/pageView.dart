import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  List imagesName = [
    'images/creamPoster.png',
    'images/yusra.png',
    'images/creamPoster.png',
    'images/yusra.png',
    'images/creamPoster.png',
    'images/yusra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView Example')),
      body: Container(
        child: PageView.builder(
          itemCount: imagesName.length,
          itemBuilder: (context, i) {
            return Image.asset(imagesName[i], fit: BoxFit.cover);
          },
        ),
      ),
    );
  }
}


/*  Container(
        child: PageView(
          children: [
            Image.asset('images/creamPoster.png', fit: BoxFit.cover),
            Image.asset('images/yusra.png', fit: BoxFit.fill),
          ], */