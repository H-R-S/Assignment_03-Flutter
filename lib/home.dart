import 'package:assignment03/about.dart';
import 'package:assignment03/itemList.dart';
import 'package:assignment03/login.dart';
import 'package:assignment03/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Home> {
  int _selectedTab = 0;
  final _pageOptions = [
    ItemList(),
    Search(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu),
        title: Text(
          'Ecom App UI',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        actions: [
          Icon(Icons.notifications),
          Padding(padding: const EdgeInsets.only(right: 10))
        ],
      ),
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
