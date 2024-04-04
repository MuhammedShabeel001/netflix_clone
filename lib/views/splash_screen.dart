import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_api/widgets/bottomnav_bar.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

  @override
  void initState() {
    
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/Netflix_Symbol_RGB.png',height: 350.0,),
    );
  }
}