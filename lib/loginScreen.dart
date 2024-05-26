import 'package:flutter/material.dart';
import 'package:friendio/main.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key, required this.title});

  final String title;

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Align(
          alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
          Container(
            width: width - 50,
            height: height / 20,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'e-mail',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              width: width - 50,
              height: height / 20,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
              )),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: width - 50,
            height: height / 20,
            color: Colors.black,
            child: GestureDetector(
              child:Align(
                alignment: Alignment.center,
              child: Text("log in", style: TextStyle( color: Colors.white
              , fontSize: 20))),
              onTap: () {
                print("tapped");
              },
            ),
          )
        ]),
      ),
    ),);
  }
}
