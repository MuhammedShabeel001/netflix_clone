import 'package:flutter/material.dart';
import 'package:netflix_api/models/upcoming_model.dart';
import 'package:netflix_api/services/api_services.dart';
import 'package:netflix_api/widgets/moviecard_widget.dart';

class ScreenHome extends StatefulWidget { 
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late Future<UpcomingMovieModel> upcomingFuture;
  ApiServices apiServices = ApiServices();

  @override
  void initState() {
    super.initState();
    upcomingFuture = apiServices.getUpcomingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Logos-Readability-Netflix-logo.png',height: 80),
        actions: [
          InkWell(
            onTap: () {
            },
            child:const Icon(
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
      body: Column(
        children: [
          SizedBox(
            height: 220,
            child: MovieCardWidget(future: upcomingFuture, headLineText: "Upcoming Movies"),
            )
        ],
      )
    );
  }
}