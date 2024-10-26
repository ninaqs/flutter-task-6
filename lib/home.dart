import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Current selected index

  // List of pages to display for each tab
  final List<Widget> _pages = [
    const Center(child: Text('Welcome to Home')),
    const Center(child: Text('Search Page')),
    const Center(child: Text('User Profile')),
    const Center(child: Text('App Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SHOPPY'),
          backgroundColor: Colors.blueGrey.shade500,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey.shade100,
          selectedItemColor: Colors.red.shade800,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ));
  }
}
