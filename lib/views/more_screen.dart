import 'package:flutter/material.dart';

class ScreenMore extends StatefulWidget {
  const ScreenMore({super.key});

  @override
  State<ScreenMore> createState() => _ScreenMoreState();
}

class _ScreenMoreState extends State<ScreenMore> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('More',style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}