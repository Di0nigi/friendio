import 'package:flutter/material.dart';
import 'package:friendio/loginScreen.dart';

var width = 0.0;
var height = 0.0;
String logo = "assets\\friendioicon.png";

List<Color> palette = [Color.fromARGB(255, 0, 0, 0)];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Friendio',
      home: const LogIn(),
    );
  }
}
