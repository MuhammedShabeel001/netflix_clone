import 'package:flutter/material.dart';
import 'package:netflix_api/views/download_screen.dart';
import 'package:netflix_api/views/home_screen.dart';
import 'package:netflix_api/views/newandhot_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;

  final List<Widget> _tabs = [
    // Replace with your tab widgets
    HomeScreen(),
    NewAndHotScreen(),
    DownloadScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline),
              label: 'Downloads',
            ),
          ],
        ),
        body: _tabs[currentindex]);
  }
}
