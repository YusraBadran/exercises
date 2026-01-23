import 'package:exercises/pages/about.dart';
import 'package:exercises/pages/customWidgetShortcut.dart';
import 'package:exercises/pages/tabbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeSate createState() => _HomeSate();
}

class _HomeSate extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BottomNavigationBar Example'),
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              " welcome to home page ",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => customWidgetShortcut()),
                    ),
                  );
                },
                child: Text(
                  "Go to customWidgetShortcut Page",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => TabBarPage())),
                  );
                },
                child: Text(
                  "Go to TabBarPage",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("Pageview");
                },
                child: Text(
                  "Go to PageView by route",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: ((context) => About())));
                },
                child: Text(
                  "Go to About Page",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("about");
                },
                child: Text(
                  "Go to About Page rout replacement",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
