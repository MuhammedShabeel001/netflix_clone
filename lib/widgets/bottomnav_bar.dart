import 'package:flutter/material.dart';
import 'package:netflix_api/views/home_screen.dart';
import 'package:netflix_api/views/more_screen.dart';
import 'package:netflix_api/views/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child:const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.search),
              text: 'Search',
            ),
            Tab(
              icon: Icon(Icons.photo_library_outlined),
              text: 'New & Hot',
            ),
          ],
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor:  Color.fromARGB(139, 117, 117, 117),
          ),
        ),
        body:const TabBarView(
          children: [
            ScreenHome(),
            ScreenSearch(),
            ScreenMore()
          ]),
      ));
  }
}