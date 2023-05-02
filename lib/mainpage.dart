import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home_pages.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Homepage(),
    Center(
      child: Text(
        "Serch",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Post",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Reels",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 40),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 32,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
              label: "Serch"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2 ? Icons.add : Icons.add),
              label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3
                  ? Icons.video_call
                  : Icons.video_call_outlined),
              label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 4 ? Icons.person : Icons.person_outline),
              label: "Profile"),
        ],
      ),
    );
  }
}
