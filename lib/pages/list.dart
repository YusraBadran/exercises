import 'package:flutter/material.dart';

class ListType extends StatefulWidget {
  @override
  _ListTypeSate createState() => _ListTypeSate();
}

class _ListTypeSate extends State<ListType> {
  List employee = [
    {"name": "Ahmed"},
    {"name": "Mohamed"},
    {"name": "Ali"},
    {"name": "Ramy"},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list type")),
      body: ListView(
        children: [
          ...List.generate(124, (index) {
            return Text("${1900 + index} ");
          }),
        ],
      ),
    );
  }
}

/* ListView(
        children: [
          ...List.generate(employee.length, (index) {
            return Card(child: ListTile(title: Text(employee[index]['name'])));
          }),
        ],
      ), */
