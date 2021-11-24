// import 'package:corona_tracker/screens/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MySplashScreen extends StatefulWidget {
//   const MySplashScreen({Key? key}) : super(key: key);

//   @override
//   _MySplashScreenState createState() => _MySplashScreenState();
// }

// class _MySplashScreenState extends State<MySplashScreen> {
//   late int activeCase;
//   late int confirmed;
//   late int recovered;
//   late int deaths;

//   @override
//   void initState() {
//     super.initState();
//     fetchIndiaAPI();
//   }

//   fetchIndiaAPI() async {
//     setState(() {});
//     // var url = 'https://api.covid19api.com/total/country/india';
//     var url = 'https://api.covid19api.com/total/country/india';

//     var response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       List jsonResponse = jsonDecode(response.body);

//       setState(() {
//         activeCase = jsonResponse.last['Active'];
//         confirmed = jsonResponse.last['Confirmed'];
//         recovered = jsonResponse.last['Recovered'];
//         deaths = jsonResponse.last['Deaths'];
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 3,
//       navigateAfterSeconds: const HomeScreen(),
//       title: const Text(
//         'Covid-19 Tracker',
//         style: TextStyle(
//           fontSize: 30.0,
//           color: Colors.white,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       image: Image.asset('assets/12.gif'),
//       backgroundColor: const Color(0xff28df99),
//       photoSize: 110.0,
//       loaderColor: Colors.orangeAccent,
//     );
//   }
// }
