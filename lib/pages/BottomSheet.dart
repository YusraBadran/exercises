import 'package:flutter/material.dart';

class bottomSheet extends StatefulWidget {
  @override
  _bottomSheetSate createState() => _bottomSheetSate();
}

class _bottomSheetSate extends State<bottomSheet> {
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      appBar: AppBar(title: Text("Bottomsheet")),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: MaterialButton(
                onPressed: () {
                  ScaffoldKey.currentState!.showBottomSheet(
                    (context) => Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Text("pick photo :"),
                          Text("camer roll "),
                          Text("My file "),
                        ],
                      ),
                    ),
                  );
                },
                child: Text("show Bottomsheet"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.amber,
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.blue,
                      duration: Duration(milliseconds: 5),
                      content: Text("Copy"),
                    ),
                  );
                },
                child: Text("show snackBar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
