import 'package:flutter/material.dart';
import 'package:frontend/menu_item.dart';

const List<String> days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday"
];

class UpcomingMenu extends StatefulWidget {
  const UpcomingMenu({super.key});

  static const List<List<String>> data = [
    ["One", "Two"],
    ["Three", "Four"],
    ["Five", "Six"],
    ["Seven", "Eight"],
  ];

  @override
  State<UpcomingMenu> createState() => _UpcomingMenuState();
}

class _UpcomingMenuState extends State<UpcomingMenu> {
  @override
  Widget build(BuildContext context) {
    List<List<String>> data = UpcomingMenu.data;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: data.asMap().keys.map((col) {
          return Column(
            children: [
              Text(
                days[col],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                  letterSpacing: 2.0,
                ),
              ),
              ...data[col].map((item) {
                return FixedWidthMenuItem(content: item);
              })
            ],
          );
        }).toList(),
      ),
    );
  }
}

class FixedWidthMenuItem extends StatefulWidget {
  const FixedWidthMenuItem({super.key, required this.content});

  final String content;

  @override
  State<FixedWidthMenuItem> createState() => _FixedWidthMenuItemState();
}

class _FixedWidthMenuItemState extends State<FixedWidthMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: 200.0,
            child:
                MenuItem(content: widget.content, type: "Food", enabled: false)),
      ),
    );
  }
}
