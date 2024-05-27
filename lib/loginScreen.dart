import 'package:flutter/material.dart';
import 'package:friendio/main.dart';
import 'package:friendio/homeScreen.dart';

String username = "";
String password = "";

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(70)),
                Text(
                  "Friendio",
                  style: TextStyle(
                    fontFamily: "ubuntu",
                    fontWeight: FontWeight.bold,
                    fontSize: 95,
                    // shadows: [Shadow(blurRadius: 4, color: const Color.fromARGB(134, 0, 0, 0) )]
                  ),
                ),
                /* Container(
            width: height/10,
            height: height/10,
            decoration: BoxDecoration( 
              image: DecorationImage(
                  image: AssetImage(logo),
                  fit: BoxFit.fill,
                ),),
          ),*/
                Padding(padding: EdgeInsets.all(50)),
                Container(
                  width: width - 50,
                  height: height / 20,
                  child: TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      labelText: 'username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: width - 50,
                  height: height / 20,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: width - 50,
                  height: height / 20,
                  /*decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(150, 0, 0, 0),
                            blurRadius: 1,
                            spreadRadius: 0.5,
                          ),
                        ],
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                        ),*/
                  child: ElevatedButton(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "ubuntu"))),
                    onPressed: () {
                      username = userController.text;
                      password = passwordController.text;

                      print(username);
                      if ( username != "" && password != ""){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                      }
                      
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
