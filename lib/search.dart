import 'package:assignment03/home.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey[300],
          title: Text("Search"),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                icon: Icon(Icons.search))
          ]),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  var titleList = [
    "Samsung Galaxy Note 10 Plus",
    "Samsung Galaxy Note 20",
    "Samsung Galaxy S21 Ultra 5G",
    "Samsung Galaxy Z Flip",
    "Oppo X3 Pro",
    "Huwaei Mate 40 Pro",
    "iPhone 11 Pro Max",
    "iPhone 12 Pro",
    "Samsung Galaxy Note 20 Ultra",
  ];

  final recentSearch = [
    "iPhone 11 Pro Max",
    "iPhone 12 Pro",
    "Samsung Galaxy Note 20 Ultra",
  ];

  String? get result => null;

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for AppBar
    return [
      IconButton(
          onPressed: () {
            query:
            "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon on the left of the AppBar
    return IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on selections
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty ? recentSearch : titleList;
    return ListView.builder(
      itemBuilder: (context, index) =>
          ListTile(title: Text(suggestionList[index])),
      itemCount: suggestionList.length,
    );
  }
}
