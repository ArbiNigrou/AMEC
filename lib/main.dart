import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/home_page.dart';
// import 'package:flutter_projet/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        
        // primarySwatch: Colors.blue,  // Couleur principale
        // accentColor: Colors.blueAccent, // Couleur d'accent
        // brightness: Brightness.light,   // Thème clair
        // textTheme: const TextTheme(
        //   // headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        //   // bodyText1: TextStyle(fontSize: 18.0, color: Colors.white),
        // ),
        scaffoldBackgroundColor: Colors.lightBlue[50], // Couleur de fond
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.blue,  // Couleur de la barre d'applications
        // ),   
           ),
      home: HomePage()
    );
  }
}
