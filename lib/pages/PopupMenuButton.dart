import 'package:flutter/material.dart';

class PopMenu extends StatefulWidget {
  @override
  _PopMenuSate createState() => _PopMenuSate();
}

class _PopMenuSate extends State<PopMenu> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
        actions: [
          PopupMenuButton(
            /* icon: Icon(Icons.done_outlined), */
            color: Colors.blueGrey,
            iconColor: Colors.blue,
            iconSize: 30,
            onOpened: () {
              print("============ open");
            },
            onCanceled: () {
              print("============ cancel");
            },
            /* onSelected: (value) {
              /* print(value); */
              if (value == "valOne") {
                Navigator.of(context).pushNamed("about");
              }
              if (value == "valTwo") {
                Navigator.of(context).pushNamed("Showalert");
              }
            }, */
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("one"),
                value: "valOne",
                onTap: () {
                  Navigator.of(context).pushNamed("about");
                },
              ),
              PopupMenuItem(child: Text("two"), value: "valTwo"),
            ],
          ),
        ],
      ),

      body: ListView(),
    );
  }
}
