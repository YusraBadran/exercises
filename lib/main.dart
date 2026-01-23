import 'package:exercises/pages/about.dart';
import 'package:exercises/pages/home.dart';
import 'package:exercises/pages/pageView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "about": (context) => About(),
        "Pageview": (context) => Pageview(),
      },
    ),
  );
}
