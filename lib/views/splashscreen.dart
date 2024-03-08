import 'dart:async';
import 'package:appkamus/views/home.dart';
import 'package:appkamus/views/pageKosakata.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageKosakata()),
      );
     });
  }


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent, // Set background color to transparent
    body: Container( // Wrap the body with a Container
      decoration: BoxDecoration( // Add decoration to the Container
        gradient: LinearGradient( // Specify the gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.pinkAccent, Color.fromARGB(178, 175, 125, 255)], // You can customize the colors here
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.library_books_outlined,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(height: 24.0,),
            Text("Kamus Bahasa Italia - Indonesia",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20.0,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

}