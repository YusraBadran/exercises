import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[50],
          title: Text('TabBar Example'),
          bottom: TabBar(
            indicatorColor: Colors.deepPurple,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 12),
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Tab(icon: Icon(Icons.laptop_mac), text: "Laptop"),

              Tab(icon: Icon(Icons.mobile_friendly), text: "Mobile"),
              Tab(icon: Icon(Icons.desktop_mac_outlined), text: "PC"),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: TabBarView(
            children: [
              Center(child: Text('This is Laptop Page')),
              Center(child: Text('This is Mobile Page')),
              Center(child: Text('This is PC Page')),
            ],
          ),
        ),
      ),
    );
  }
}
