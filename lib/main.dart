import 'package:exercises/pages/SearchDelegate.dart';
import 'package:exercises/pages/about.dart';
import 'package:exercises/pages/pageView.dart';
import 'package:exercises/pages/showDialog.dart';
import 'package:exercises/pages/BottomSheet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: search(),
      routes: {
        "about": (context) => About(),
        "Pageview": (context) => Pageview(),
        "Showalert": (context) => showAlert(),
        "Bottomsheet": (context) => bottomSheet(),
      },
    ),
  );
}
