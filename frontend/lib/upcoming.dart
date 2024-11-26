import 'package:flutter/material.dart';
import 'package:frontend/menu_item.dart';

class UpcomingMenu extends StatefulWidget {
  const UpcomingMenu({super.key, required this.content});

  final String content;

  @override
  UpcomingMenuState createState() => UpcomingMenuState();
}

class UpcomingMenuState extends State<UpcomingMenu> {
  @override
  Widget build(BuildContext context) {
    const double margins = 16.0;
    const double width = 128.0;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Column(
            children: [
              Text(
                "Monday",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                ),
              ),
              SizedBox(child: MenuItem(content: "One", type: "Food", enabled: true), width: 
              width,),
              SizedBox(height: margins),
              MenuItem(content: "Two", type: "Food", enabled: true),
              SizedBox(height: margins),
              MenuItem(content: "Three", type: "Food", enabled: true),
            ],
          ),
          Column(
            children: [
              Text(
                "Tuesday",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                ),
              ),
              MenuItem(content: "One", type: "Food", enabled: true),
              SizedBox(height: margins),
              MenuItem(content: "Two", type: "Food", enabled: true),
              SizedBox(height: margins),
              MenuItem(content: "Three", type: "Food", enabled: true),
            ],
          ),
          Column(
            children: [
              Text(
                "Wednesday",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                ),
              ),
              MenuItem(content: "One", type: "Food", enabled: true),
              SizedBox(height: margins),
              MenuItem(content: "Two", type: "Food", enabled: true),
              SizedBox(height: margins),
              MenuItem(content: "Three", type: "Food", enabled: true),
            ],
          ),
        ],
      ),
    );
  }
}
