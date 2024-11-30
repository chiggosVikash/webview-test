import 'package:bugfix/HomePage.dart';
import 'package:bugfix/WebViewScreen.dart';
import 'package:bugfix/about-us.dart';
import 'package:flutter/material.dart';

class BottomNavigationSection extends StatefulWidget {
  const BottomNavigationSection({super.key});

  @override
  State<BottomNavigationSection> createState() => _BottomNavigationSectionState();
}

class _BottomNavigationSectionState extends State<BottomNavigationSection> {
   final _pages = const [HomePage(),
    WebViewScreen(),
    AboutUs()
 ];
 int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'WebView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
