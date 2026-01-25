import 'package:flutter/material.dart';

class showAlert extends StatefulWidget {
  @override
  _showAlertSate createState() => _showAlertSate();
}

class _showAlertSate extends State<showAlert> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BottomNavigationBar Example'),
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.all(15),
                        backgroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(10),
                          ),
                        ),
                        titleTextStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        titlePadding: EdgeInsets.only(left: 15, top: 20),
                        title: Text("Warning!!"),
                        content: Text(
                          "Are you sure ?",
                          style: TextStyle(fontSize: 20),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.redAccent),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "show dialog",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
