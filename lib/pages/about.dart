import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutSate createState() => _AboutSate();
}

class _AboutSate extends State<About> {
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
              " welcome to About page ",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Go Back", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
