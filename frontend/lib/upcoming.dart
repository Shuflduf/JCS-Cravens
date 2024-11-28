import 'package:flutter/material.dart';
import 'package:frontend/menu_item.dart';

// Saturday and Sunday shouldn't be used
const List<String> days = [
  "Saturday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Sunday",
];

class UpcomingMenu extends StatefulWidget {
  const UpcomingMenu({super.key});

  static const List<List<String>> data = [
    ["One", "Two", "Two and a Half"],
    ["Three", "Four"],
    ["Five", "Six"],
    ["Seven", "Eight"],
    ["Nine", "Ten"]
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
                days[col + 1],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                  letterSpacing: 2.0,
                ),
              ),
              ...data[col].map((item) {
                int weekday = DateTime.now().weekday - 1;
                return FixedWidthMenuItem(
                    content: item, highlighted: col == weekday);
              })
            ],
          );
        }).toList(),
      ),
    );
  }
}

class FixedWidthMenuItem extends StatefulWidget {
  const FixedWidthMenuItem(
      {super.key, required this.content, required this.highlighted});

  final String content;
  final bool highlighted;

  @override
  State<FixedWidthMenuItem> createState() => _FixedWidthMenuItemState();
}

class _FixedWidthMenuItemState extends State<FixedWidthMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          width: 200.0,
          child: MenuItem(
            content: widget.content,
            price: "\$3.99",
            highlighted: widget.highlighted,
          )),
    );
  }
}
