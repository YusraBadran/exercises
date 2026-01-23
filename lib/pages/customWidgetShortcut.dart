import 'package:flutter/material.dart';

class customWidgetShortcut extends StatefulWidget {
  @override
  _customWidgetShortcutState createState() => _customWidgetShortcutState();
}

class _customWidgetShortcutState extends State<customWidgetShortcut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Widget Shortcut Example')),
      body: Container(
        margin: EdgeInsets.only(left: 5, right: 5),

        child: Column(
          children: [
            customList(
              name: 'Alice',
              email: 'alice@example.com',
              date: DateTime(2023),
              img: 'creamPoster.png',
            ),
            customList(
              name: "yusra",
              email: "yusra@gmail.com",
              date: DateTime(2024),
              img: 'yusra.png',
            ),
          ],
        ),
      ),
    );
  }
}

class customList extends StatelessWidget {
  final String name;
  final String email;
  final DateTime date;
  final String img;
  const customList({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.img,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Card(
        color: Colors.white.withOpacity(0.1),

        /*  color: Colors.blueGrey[100], */
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset("images/$img", fit: BoxFit.cover),
              ),
            ),

            Expanded(
              child: Card(
                margin: EdgeInsets.all(10),

                child: ListTile(
                  /* leading: Icon(Icons.person, color: Colors.green), */
                  title: Text('$name'),
                  subtitle: Text('$email'),
                  trailing: Text(date.year.toString()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
