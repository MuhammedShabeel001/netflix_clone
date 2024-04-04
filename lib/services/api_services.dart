// import 'dart:convert';
// import 'dart:developer';

// import 'package:http/http.dart'as http;
// import 'package:netflix_api/common/utils.dart';
// import 'package:netflix_api/models/searchmovie_model.dart';
// import 'package:netflix_api/models/tvseries_model.dart';
// import 'package:netflix_api/models/upcoming_model.dart';

// const baseUrl = "https://api.themoviedb.org/3/";
// var key = "?api_key=$apiKey";
// late String endPoint;

// class ApiServices{
//   Future<UpcomingMovieModel> getUpcomingMovies() async {
//     endPoint = "movie/upcoming";
//     final url = "$baseUrl$endPoint$key";

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       log("Success upcoming movie");
//       return UpcomingMovieModel.fromJson(jsonDecode(response.body));
//     }
//     throw Exception("Failed to load upcoming movies");
//   }

//   Future<UpcomingMovieModel> getNowPlaying() async {
//     endPoint = "movie/now_playing";
//     final url = "$baseUrl$endPoint$key";

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       log("Success now playing");
//       return UpcomingMovieModel.fromJson(jsonDecode(response.body));
//     }
//     throw Exception("Failed to load now playing");
    
//   }

//   Future<UpcomingMovieModel> getpopular() async {
//     endPoint = "movie/popular";
//     final url = "$baseUrl$endPoint$key";

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       log("Success popular");
//       return UpcomingMovieModel.fromJson(jsonDecode(response.body));
//     }
//     throw Exception("Failed to load popular");
    
//   }

//   Future<TvSeriesModel> gettvseries() async {
//     endPoint = "tv/top_rated";
//     final url = "$baseUrl$endPoint$key";

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       log("Success tv series");
//       return TvSeriesModel.fromJson(jsonDecode(response.body));
//     }
//     throw Exception("Failed to tv series");
    
//   }

//   // Future<SearchMovie> getSearchedMovies(String searchText) async {
//   //   endPoint = "search/movie?query=$searchText";
//   //   final url = "$baseUrl$endPoint";
//   //   print(url);
//   //   final response = await http.get(Uri.parse(url),headers: {
//   //     'Authorization': "shabeel001 eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YmQ1NzUxMTI5M2RhMDNmNTc5ZWI2Yjc0MDNmNmM5NiIsInN1YiI6IjY2MDZjOTZjYTg5NGQ2MDE3YzYzNWYzYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.obmSPF-Z4D8EqzbrzHnoSamsFB5TDTzdPeYEVG69A7Y"
//   //   });

//   //   if (response.statusCode == 200) {
//   //     log("Success search");
//   //     return SearchMovie.fromJson(jsonDecode(response.body));
//   //   }
//   //   throw Exception("Failed to search movies");
    
//   // }

//   Future<List<SearchMovie>> getSearchResults(String name) async{
//     final url = "search/movie?query={name}&".replaceFirst('{name}', name);
//     final header = {
//       'Authorization': 'shabeel001 eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YmQ1NzUxMTI5M2RhMDNmNTc5ZWI2Yjc0MDNmNmM5NiIsInN1YiI6IjY2MDZjOTZjYTg5NGQ2MDE3YzYzNWYzYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.obmSPF-Z4D8EqzbrzHnoSamsFB5TDTzdPeYEVG69A7Y',
//       'accept': 'application/json'
//     };
//     final response = await http.get(
//       headers: header,
//       Uri.parse('$baseUrl$url$key')
//     );
//     final decodeResult = jsonDecode(response.body)['results']as List;

//     final results = decodeResult.map((result) => SearchMovie.fromJson(result)).toList();

//     return results; 
//   }
// }


const apikey = '5bd57511293da03f579eb6b7403f6c96';
const readaccesstocken =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YmQ1NzUxMTI5M2RhMDNmNTc5ZWI2Yjc0MDNmNmM5NiIsInN1YiI6IjY2MDZjOTZjYTg5NGQ2MDE3YzYzNWYzYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.obmSPF-Z4D8EqzbrzHnoSamsFB5TDTzdPeYEVG69A7Y';

String baseUrl = 'https://image.tmdb.org/t/p/original';
