import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[50],
           ),
      home: LoginPage()
    );
  }
}
