import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Downloads',style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}