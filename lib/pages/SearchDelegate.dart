import 'package:flutter/material.dart';

class search extends StatefulWidget {
  @override
  _searchSate createState() => _searchSate();
}

class _searchSate extends State<search> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Delegate"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List username = [
    "yusra",
    "ahmed",
    "ali",
    "aseel",
    "ghofran",
    "asala",
    "hanan",
    "essam",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: username.length,
      itemBuilder: (context, i) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("${username[i]}", style: TextStyle(fontSize: 16)),
          ),
        );
      },
    );
  }
}
