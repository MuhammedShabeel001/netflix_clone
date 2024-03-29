import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Logos-Readability-Netflix-logo.png',height: 80),
        actions: [
          InkWell(
            onTap: () {
            },
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.blue,
                height:30,
                width:30,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: const Center(
        child: Text('Home',style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}