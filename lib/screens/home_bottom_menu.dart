import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Text('Home'),
    Text('Profile'),
    Text('Setting'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedLabelStyle: TextStyle(color: secondary_textcolor),
        unselectedIconTheme:
            IconThemeData(color: secondary_textcolor, size: 20),
        selectedIconTheme: IconThemeData(color: primary_color, size: 40),
        selectedItemColor: primary_color,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Setting',
          // ),
        ],
      ),
    );
  }
}
