import 'package:flutter/material.dart';
import 'package:friendio/main.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var iconPadding = 17.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            width: width,
            height: height / 20,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    // Use the FluentIcons + name of the icon you want
                    icon: Icon(FluentIcons.home_16_filled),
                    onPressed: () {
                      print("Button pressed");
                    }),
                Padding(padding: EdgeInsets.all(iconPadding)),
                IconButton(
                    // Use the FluentIcons + name of the icon you want
                    icon: Icon(FluentIcons.search_16_filled),
                    onPressed: () {
                      print("Button pressed");
                    }),
                    Padding(padding: EdgeInsets.all(10)),
                IconButton(
                    // Use the FluentIcons + name of the icon you want
                    icon: Icon(FluentIcons.add_square_16_filled),
                    onPressed: () {
                      print("Button pressed");
                    }),
                    Padding(padding: EdgeInsets.all(10)),
                IconButton(
                    // Use the FluentIcons + name of the icon you want
                    icon: Icon(FluentIcons.alert_16_filled),
                    onPressed: () {
                      print("Button pressed");
                    }),
                    Padding(padding: EdgeInsets.all(10)),
                IconButton(
                    // Use the FluentIcons + name of the icon you want
                    icon: Icon(FluentIcons.person_16_filled),
                    onPressed: () {
                      print("Button pressed");
                    }),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
