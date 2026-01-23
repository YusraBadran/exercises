import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  @override
  _BottomnavigationbarState createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int _currentIndex = 0;

  List<Widget> listWidget = [Text(" home page"), Text(" setting page")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int val) {
          setState(() {
            _currentIndex = val;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BottomNavigationBar Example'),
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: listWidget.elementAt(_currentIndex)),
    );
  }
}
